package bl;

import android.content.Context;
import android.util.Log;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import mybl.CookieUtil;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 * 下一集播放地址预取（L1）。
 *
 * 思路参考果映 EPISODE_SWITCH_ANALYSIS：把 playurl 网络往返从「切换时」挪到「切换前」。
 * 本项目播放器换集会重建 VideoView，无法复刻「同一 ExoPlayer 播放队列」，
 * 因此这里只做元数据层：提前为下一集请求 playurl 响应并缓存，正式解析时直接消费。
 *
 * 设计约束：
 * - 不触碰 PlayerParams / yd / yt 状态机，不复制播放器上下文；
 * - 预取与正式解析共用 ql/qh 的 buildRequest()，保证 Cookie/UA/超时/WBI 完全一致；
 * - 结果「领取即移除」+ 120s TTL，避免复用过期地址；
 * - 切集时若预取在途，take() 会等待在途任务而不是取消重发；
 * - 只预取 1 集，失败最多尝试 3 次，间隔 15s；
 * - 双触发：起播 2s 无条件预取一次（覆盖手动选集 / 快进到片尾），
 *   剩余 ≤40s 时节流刷新一次（覆盖自然连播并保证长视频的 URL 新鲜）；
 * - provider 用弱引用，页面销毁后轮询自行停止，无需生命周期钩子。
 */
public final class PlayUrlPrefetch {

    private static final String TAG = "NextPrefetch";

    /** 剩余媒体时长阈值。临近片尾时刷新缓存，保证长视频场景下 URL 仍然新鲜。 */
    private static final long TRIGGER_REMAIN_MS = 40000L;
    /** 起播后延迟做一次无条件预取，覆盖手动选集 / 快进到片尾这类不会「稳定播放到剩余 40s」的场景。 */
    private static final long EARLY_DELAY_MS = 2000L;
    /** 临近片尾刷新的节流间隔，避免长视频反复请求同一集。 */
    private static final long REFRESH_INTERVAL_MS = 60000L;
    private static final long TTL_MS = 120000L;
    /** CACHE 容量上限。跳集 / 换清晰度会产生大量不同 key，防止静态 Map 无界增长。 */
    private static final int MAX_CACHE_ENTRIES = 8;
    private static final long TICK_MS = 1000L;
    private static final long INFLIGHT_WAIT_MS = 4000L;
    private static final int MAX_ATTEMPTS = 3;
    private static final long RETRY_INTERVAL_MS = 15000L;
    /** 首分片预热只读前 32KiB，与果映「只读头部」同思路，避免额外带宽开销。 */
    private static final int WARM_BYTES = 32768;
    /** 必须与 ExoCommander.createDataSourceFactory() 的播放 UA 一致。 */
    private static final String PC_UA =
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 "
                    + "(KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36";

    private static final ConcurrentHashMap<String, Cached> CACHE = new ConcurrentHashMap<String, Cached>();
    private static final ConcurrentHashMap<String, Future<?>> INFLIGHT = new ConcurrentHashMap<String, Future<?>>();
    /** P3：预热任务表，供 clear() 取消，避免退出播放页后仍持有 ResolveResourceParams。 */
    private static final ConcurrentHashMap<String, Future<?>> WARM_TASKS = new ConcurrentHashMap<String, Future<?>>();
    private static final AtomicInteger GENERATION = new AtomicInteger(0);

    private static final ExecutorService NETWORK = Executors.newSingleThreadExecutor(new ThreadFactory() {
        @Override
        public Thread newThread(Runnable r) {
            Thread t = new Thread(r, "next-prefetch");
            t.setPriority(Thread.MIN_PRIORITY);
            t.setDaemon(true);
            return t;
        }
    });

    /**
     * P3：独立于 NETWORK 的单线程预热池。
     * doPrefetch 原先在 NETWORK 上串行执行 playurl -> CACHE.put -> initPlayInfo -> WARM_SEG，
     * 其中 initPlayInfo 内部多个 submit().get() 实测阻塞 3.8~14.4s，会把后续 playurl 预取
     * 一起堵住（日志出现 [SKIP] prefetch already in flight 与迟到的预热）。拆开后 NETWORK
     * 只负责网络请求与写缓存，拿到结果即释放。
     * 用命名 ThreadFactory / 命名 Runnable，避免新增匿名类导致本文件 $N 编号整体后移。
     */
    private static final ExecutorService WARMER = Executors.newSingleThreadExecutor(new WarmThreadFactory());

    private static final ScheduledExecutorService TICKER = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() {
        @Override
        public Thread newThread(Runnable r) {
            Thread t = new Thread(r, "next-prefetch-tick");
            t.setDaemon(true);
            return t;
        }
    });

    private static volatile WeakReference<StateProvider> providerRef = new WeakReference<StateProvider>(null);
    private static volatile ScheduledFuture<?> tickFuture;
    private static volatile String pendingKey;
    private static volatile int attempts;
    private static volatile long lastAttemptAt;
    private static volatile long startedAt = 0L;
    private static volatile boolean earlyDone = false;
    private static volatile long lastRefreshAt = 0L;
    /** 诊断日志限频与「本轮已打印过一次状态快照」标记，避免 1s 轮询刷屏。 */
    private static volatile long lastSkipLogAt = 0L;
    private static volatile boolean diagnosed = false;
    /** 正常解析实际使用的 qn，由 ql / qh 回写；预取复用它，保证缓存键与请求完全一致。 */
    private static volatile int lastUgcQn = 0;
    private static volatile int lastPgcQn = 0;

    private PlayUrlPrefetch() {
    }

    /** 由 ql / qh 在正常解析时记录 qn，预取据此构造完全相同的请求。 */
    public static void noteResolvedQn(int qn, boolean pgc) {
        if (qn > 0) {
            int previous = pgc ? lastPgcQn : lastUgcQn;
            if (pgc) {
                lastPgcQn = qn;
            } else {
                lastUgcQn = qn;
            }
            if (previous > 0 && previous != qn) {
                // 清晰度变化后旧 qn 的 key 永远不可能命中，且预取请求参数已失效。
                // 主动作废缓存与在途任务，避免旧条目滞留在静态 CACHE 里。
                clear();
            }
        }
    }

    private static int getLastQn(boolean pgc) {
        return pgc ? lastPgcQn : lastUgcQn;
    }

    /** 播放页状态读取接口，由播放器控制器在 onPrepared 时提供。全部在后台线程调用，实现必须是纯读取。 */
    public interface StateProvider {
        int currentPositionMs();

        int durationMs();

        ResolveResourceParams currentEpisode();

        ResolveResourceParams[] episodeList();

        int expectedQuality();
    }

    private static final class Cached {
        final Object response;
        final long createdAt;
        final int generation;

        Cached(Object response, long createdAt, int generation) {
            this.response = response;
            this.createdAt = createdAt;
            this.generation = generation;
        }
    }

    /** 命名 ThreadFactory：避免新增匿名类改变本文件 $N 编号。 */
    private static final class WarmThreadFactory implements ThreadFactory {
        @Override
        public Thread newThread(Runnable r) {
            Thread t = new Thread(r, "next-prefetch-warm");
            t.setPriority(Thread.MIN_PRIORITY);
            t.setDaemon(true);
            return t;
        }
    }

    /** P3：把耗时的 play info 预热从 NETWORK 挪到 WARMER 执行。 */
    private static final class WarmTask implements Runnable {
        private final String key;
        private final int gen;
        private final ResolveResourceParams next;
        private final Object response;
        private final int quality;
        private final long cid;

        WarmTask(String key, int gen, ResolveResourceParams next,
                 Object response, int quality, long cid) {
            this.key = key;
            this.gen = gen;
            this.next = next;
            this.response = response;
            this.quality = quality;
            this.cid = cid;
        }

        @Override
        public void run() {
            try {
                if (gen != GENERATION.get()) {
                    Log.i(TAG, "[WARM_SKIP] stale generation, key=" + key);
                    return;
                }
                warmSync(next, response, quality, cid);
            } finally {
                // clear() 里的 cancel(true) 会中断本线程；ThreadPoolExecutor 复用线程，
                // 显式清除中断标志，避免污染后续任务中的 Future.get()。
                Thread.interrupted();
            }
        }
    }

    /** 章节/字幕/跳过段预热 + 首分片预热。开关关闭时仍在 NETWORK 上串行执行，用于 A/B。 */
    private static void warmSync(ResolveResourceParams next, Object response, int quality, long cid) {
        try {
            next.initPlayInfo(null);
            Log.i(TAG, "[READY] play info warmed for cid=" + cid);
        } catch (Throwable t) {
            Log.w(TAG, "[WARM] play info failed: " + t);
        }
        warmFirstSegment(response, quality, cid);
    }

    /** 每次起播/换集后调用；会先停止上一轮轮询，但保留尚未领取的缓存结果。 */
    public static synchronized void start(Context context, StateProvider provider) {
        stopTicker();
        pruneCache();
        providerRef = new WeakReference<StateProvider>(provider);
        pendingKey = null;
        attempts = 0;
        lastAttemptAt = 0L;
        startedAt = System.currentTimeMillis();
        earlyDone = false;
        lastRefreshAt = 0L;
        diagnosed = false;
        lastSkipLogAt = 0L;
        if (provider == null || !mybl.BiliFilter.next_episode_prefetch) {
            Log.i(TAG, "[START] disabled by BiliFilter.next_episode_prefetch");
            return;
        }
        try {
            tickFuture = TICKER.scheduleWithFixedDelay(new Runnable() {
                @Override
                public void run() {
                    try {
                        tick();
                    } catch (Throwable t) {
                        Log.w(TAG, "[TICK] ignored: " + t);
                    }
                }
            }, TICK_MS, TICK_MS, TimeUnit.MILLISECONDS);
            Log.i(TAG, "[START] ticker started, early=" + EARLY_DELAY_MS
                    + "ms, threshold=" + TRIGGER_REMAIN_MS + "ms, provider="
                    + provider.getClass().getName());
        } catch (Throwable t) {
            Log.w(TAG, "[START] failed: " + t);
        }
    }

    /** 早退原因限频输出：一旦预取没有触发，日志能直接指出卡在哪一步，不必再靠猜。 */
    private static void skip(String reason) {
        long now = System.currentTimeMillis();
        if (now - lastSkipLogAt >= 5000L) {
            lastSkipLogAt = now;
            Log.i(TAG, "[SKIP] " + reason);
        }
    }

    /** 页面退出 / 换清晰度 / 跳集时调用，作废所有在途与缓存结果。 */
    public static synchronized void clear() {
        int gen = GENERATION.incrementAndGet();
        CACHE.clear();
        for (Future<?> f : INFLIGHT.values()) {
            if (f != null) {
                f.cancel(true);
            }
        }
        INFLIGHT.clear();
        for (Future<?> f : WARM_TASKS.values()) {
            if (f != null) {
                f.cancel(true);
            }
        }
        WARM_TASKS.clear();
        pendingKey = null;
        attempts = 0;
        Log.i(TAG, "[CLEAR] generation=" + gen);
    }

    /**
     * 惰性清理 CACHE：丢弃过期 / 跨代次条目，并强制容量上限。
     * 原本只有 take() 命中或同一 key 再次 tick 时才会移除，跳集 / 换清晰度
     * 产生的旧 key 会永久滞留在静态 Map 里（每个条目持有整份 playurl JSON）。
     */
    private static void pruneCache() {
        long now = System.currentTimeMillis();
        int gen = GENERATION.get();
        for (java.util.Map.Entry<String, Cached> entry : CACHE.entrySet()) {
            Cached c = entry.getValue();
            if (c == null || c.generation != gen || now - c.createdAt > TTL_MS) {
                CACHE.remove(entry.getKey(), c);
            }
        }
        while (CACHE.size() > MAX_CACHE_ENTRIES) {
            String oldestKey = null;
            long oldestAt = Long.MAX_VALUE;
            for (java.util.Map.Entry<String, Cached> entry : CACHE.entrySet()) {
                Cached c = entry.getValue();
                if (c != null && c.createdAt < oldestAt) {
                    oldestAt = c.createdAt;
                    oldestKey = entry.getKey();
                }
            }
            if (oldestKey == null) {
                break;
            }
            CACHE.remove(oldestKey);
        }
        // 预热任务完成后及时摘掉引用，避免 WARM_TASKS 长期持有 Future。
        for (java.util.Map.Entry<String, Future<?>> entry : WARM_TASKS.entrySet()) {
            Future<?> f = entry.getValue();
            if (f != null && f.isDone()) {
                WARM_TASKS.remove(entry.getKey(), f);
            }
        }
    }

    /**
     * 播放页销毁时调用：停轮询 + 作废并清空静态缓存与在途引用。
     * 关键是 clear() 会 cancel INFLIGHT 的 Future —— 它们的 Runnable 捕获了
     * 分集数组元素 ResolveResourceParams，不取消就会在页面退出后继续
     * 通过 PlayerParams / xi 强引用整个页面（实测预取线程可被 initPlayInfo 占用十几秒）。
     */
    public static synchronized void release() {
        clear();
        stop();
        Log.i(TAG, "[RELEASE] prefetch resources released");
    }

    private static synchronized void stopTicker() {
        if (tickFuture != null) {
            tickFuture.cancel(false);
            tickFuture = null;
        }
    }

    /** 供外部在退出播放页时彻底停止轮询。 */
    public static synchronized void stop() {
        stopTicker();
        pruneCache();
        providerRef = new WeakReference<StateProvider>(null);
        pendingKey = null;
        earlyDone = true;
    }

    private static void tick() {
        if (!mybl.BiliFilter.next_episode_prefetch) {
            return;
        }
        StateProvider provider = providerRef.get();
        if (provider == null) {
            Log.i(TAG, "[STOP] provider collected by GC, stopping ticker");
            stopTicker();
            return;
        }

        int position = 0;
        int duration = 0;
        try {
            position = provider.currentPositionMs();
            duration = provider.durationMs();
        } catch (Throwable t) {
            // 时长读取失败不影响早期预取，按「未知时长」处理即可。
        }

        long now = System.currentTimeMillis();

        // 早期触发：起播 EARLY_DELAY_MS 后无条件预取一次。
        // 快进到片尾 / 手动选集时进度不会「连续稳定推进到剩余 40s」，
        // 旧的 position==lastPosition + STABLE_MS + remaining 三重门槛永远不成立，
        // 实测 log1.txt 中 L1 一次都没命中即由此而来。缓冲、暂停、seek 都不应阻止预取。
        boolean earlyWindow = !earlyDone && (now - startedAt >= EARLY_DELAY_MS);

        long remaining = (duration > 0 && position >= 0 && position < duration)
                ? (duration - position) : Long.MAX_VALUE;
        boolean nearEnd = remaining <= TRIGGER_REMAIN_MS;
        if (!earlyWindow && !nearEnd) {
            return; // 播放中段，静默跳过（每秒一次，不打印）
        }
        if (!diagnosed) {
            diagnosed = true;
            Log.i(TAG, "[DIAG] pos=" + position + ", dur=" + duration
                    + ", remaining=" + (remaining == Long.MAX_VALUE ? "unknown" : remaining + "ms")
                    + ", early=" + earlyWindow + ", nearEnd=" + nearEnd
                    + ", elapsedSinceStart=" + (now - startedAt) + "ms");
        }
        // 临近片尾的刷新按较长间隔节流，避免长视频反复请求同一集。
        if (!earlyWindow && nearEnd && lastRefreshAt > 0L
                && now - lastRefreshAt < REFRESH_INTERVAL_MS) {
            skip("refresh throttled, lastRefreshAt=" + lastRefreshAt);
            return;
        }

        ResolveResourceParams current;
        ResolveResourceParams[] list;
        int quality;
        try {
            current = provider.currentEpisode();
            list = provider.episodeList();
            quality = provider.expectedQuality();
        } catch (Throwable t) {
            skip("provider access threw: " + t);
            return;
        }
        if (current == null || list == null || list.length < 2) {
            skip("episode list unavailable: current=" + (current != null)
                    + ", list=" + (list == null ? "null" : String.valueOf(list.length)));
            return;
        }

        // 按 cid 定位当前集，避免依赖混淆类 yh 的索引字段。
        int index = -1;
        for (int i = 0; i < list.length; i++) {
            if (list[i] != null && list[i].mCid == current.mCid) {
                index = i;
                break;
            }
        }
        if (index < 0 || index + 1 >= list.length) {
            skip("no next episode: currentCid=" + current.mCid + ", index=" + index
                    + ", size=" + list.length);
            return; // 已是最后一集
        }

        final ResolveResourceParams next = list[index + 1];
        if (next == null || next.mCid <= 0) {
            skip("next episode cid invalid");
            return;
        }

        final boolean pgc = isPgc(next);
        // 优先使用上一次正常解析真正发出的 qn；清晰度中途变化时键不匹配，自动回退正常请求。
        int realQn = getLastQn(pgc);
        if (realQn > 0) {
            quality = realQn;
        }
        if (quality <= 0) {
            quality = current.mExpectedQuality > 0 ? current.mExpectedQuality : 64;
        }

        final String key = key(next.mCid, next.mAvid, next.mEpisodeId, quality, pgc);

        // 在途任务由 take() 接管，不重复发起。
        Future<?> inflight = INFLIGHT.get(key);
        if (inflight != null && !inflight.isDone()) {
            skip("prefetch already in flight, key=" + key);
            return;
        }

        Cached existing = CACHE.get(key);
        boolean fresh = existing != null && existing.generation == GENERATION.get()
                && (now - existing.createdAt) <= TTL_MS;
        if (fresh) {
            skip("fresh cache already present, key=" + key);
            return; // 已有新鲜结果，无需重取
        }
        if (existing != null) {
            CACHE.remove(key); // 过期条目清掉，允许临近片尾刷新
        }
        if (attempts >= MAX_ATTEMPTS) {
            skip("max attempts reached (" + attempts + ")");
            return;
        }
        if (lastAttemptAt > 0L && now - lastAttemptAt < RETRY_INTERVAL_MS) {
            skip("retry interval not elapsed");
            return;
        }

        attempts++;
        lastAttemptAt = now;
        pendingKey = key;
        if (earlyWindow) {
            earlyDone = true;
        }
        if (nearEnd) {
            lastRefreshAt = now;
        }
        final int gen = GENERATION.get();
        final int finalQuality = quality;
        final Context appContext = MainApplication.a();

        Log.i(TAG, (earlyWindow ? "[TRIGGER_EARLY]" : "[TRIGGER_REFRESH]")
                + " remaining=" + (remaining == Long.MAX_VALUE ? "unknown" : remaining + "ms")
                + ", cid=" + current.mCid + " -> next cid=" + next.mCid
                + ", qn=" + finalQuality + ", pgc=" + pgc + ", attempt=" + attempts);

        Future<?> future = NETWORK.submit(new Runnable() {
            @Override
            public void run() {
                doPrefetch(appContext, key, next, finalQuality, pgc, gen);
            }
        });
        INFLIGHT.put(key, future);
    }

    private static void doPrefetch(Context context, String key, ResolveResourceParams next,
                                  int quality, boolean pgc, int gen) {
        Object response = null;
        try {
            if (pgc) {
                response = qh.prefetchResponse(context, next.mCid, next.mAvid, next.mEpisodeId, quality);
            } else {
                response = ql.prefetchResponse(context, next.mCid, next.mAvid, quality);
            }
        } catch (Throwable t) {
            Log.w(TAG, "[FETCH] failed: " + t);
        } finally {
            INFLIGHT.remove(key);
        }

        if (response == null) {
            // 失败后允许按重试间隔再试，不阻塞正式解析链路。
            synchronized (PlayUrlPrefetch.class) {
                if (key.equals(pendingKey)) {
                    pendingKey = null;
                }
            }
            Log.w(TAG, "[FETCH] empty response, will fall back to normal resolve");
            return;
        }
        if (gen != GENERATION.get()) {
            Log.i(TAG, "[FETCH] stale generation, drop result");
            return;
        }

        pruneCache();
        CACHE.put(key, new Cached(response, System.currentTimeMillis(), gen));
        attempts = 0; // 成功后重置，避免临近片尾刷新被 MAX_ATTEMPTS 挡住
        Log.i(TAG, "[READY] cached key=" + key);

        // P3：缓存写入后 NETWORK 立即释放。章节/字幕预热（initPlayInfo 内部多个
        // submit().get()，实测阻塞 3.8~14.4s）与首分片预热改由 WARMER 异步执行；
        // 否则后续 playurl 预取会堵在单线程队列里，出现 [SKIP] in flight 与迟到的预热。
        if (mybl.BiliFilter.async_play_info_warm) {
            Future<?> warmFuture = WARMER.submit(
                    new WarmTask(key, gen, next, response, quality, next.mCid));
            WARM_TASKS.put(key, warmFuture);
            Log.i(TAG, "[WARM_SUBMIT] key=" + key);
        } else {
            // A/B 回退：保持原来的串行行为。
            warmSync(next, response, quality, next.mCid);
        }
    }

    /** 从预取到的 playurl 原始响应里取出与正式播放一致的视频直链。 */
    private static String extractVideoUrl(Object response, int quality) {
        byte[] body = null;
        if (response instanceof qm) {
            body = ((qm) response).b;
        } else if (response instanceof qi) {
            body = ((qi) response).b;
        }
        if (body == null || body.length == 0) {
            return null;
        }
        try {
            JSONObject root = new JSONObject(new String(body, "UTF-8"));
            JSONObject data = root.optJSONObject("data");
            if (data == null) {
                data = root.optJSONObject("result");
            }
            if (data == null) {
                data = root;
            }
            JSONObject dash = data.optJSONObject("dash");
            if (dash == null) {
                return null;
            }
            JSONArray videos = dash.optJSONArray("video");
            if (videos == null || videos.length() == 0) {
                return null;
            }
            JSONObject chosen = null;
            for (int i = 0; i < videos.length(); i++) {
                JSONObject v = videos.optJSONObject(i);
                if (v != null && v.optInt("id") == quality) {
                    chosen = v;
                    break;
                }
            }
            if (chosen == null) {
                chosen = videos.optJSONObject(0);
            }
            if (chosen == null) {
                return null;
            }
            String url = chosen.optString("base_url");
            if (url == null || url.length() == 0) {
                url = chosen.optString("baseUrl");
            }
            if (url == null || url.length() == 0) {
                return null;
            }
            // 与 ExoCommander.fixPlatformInUrl() 保持一致，否则预热的是另一个 URL。
            if (url.contains("platform=android_tv")) {
                url = url.replace("platform=android_tv", "platform=pc");
            } else if (url.contains("platform=android")) {
                url = url.replace("platform=android", "platform=pc");
            }
            return url;
        } catch (Throwable t) {
            Log.w(TAG, "[WARM_SEG] parse playurl response failed: " + t);
            return null;
        }
    }

    /** 对下一集视频首分片发一次轻量 Range 请求，读 32KiB 即断开。 */
    private static void warmFirstSegment(Object response, int quality, long cid) {
        if (!mybl.BiliFilter.warm_next_segment) {
            Log.i(TAG, "[WARM_SEG] disabled by BiliFilter");
            return;
        }
        String url = extractVideoUrl(response, quality);
        if (url == null) {
            Log.w(TAG, "[WARM_SEG] no dash video url found, skip cid=" + cid);
            return;
        }
        long t0 = System.currentTimeMillis();
        HttpURLConnection conn = null;
        String host = "?";
        try {
            URL parsed = new URL(url);
            host = parsed.getHost();
            conn = (HttpURLConnection) parsed.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("User-Agent", PC_UA);
            conn.setRequestProperty("Referer", "https://www.bilibili.com/");
            String cookie = CookieUtil.getFullCookieWithDevice(mg.a(MainApplication.a()));
            if (cookie != null && !cookie.isEmpty()) {
                conn.setRequestProperty("Cookie", cookie);
            }
            conn.setRequestProperty("Range", "bytes=0-" + (WARM_BYTES - 1));
            conn.setConnectTimeout(2000);
            conn.setReadTimeout(2000);
            conn.setInstanceFollowRedirects(true);
            int code = conn.getResponseCode();
            int total = 0;
            InputStream in = conn.getInputStream();
            if (in != null) {
                try {
                    byte[] buf = new byte[4096];
                    while (total < WARM_BYTES) {
                        int n = in.read(buf, 0, Math.min(buf.length, WARM_BYTES - total));
                        if (n < 0) {
                            break;
                        }
                        total += n;
                    }
                } finally {
                    in.close();
                }
            }
            Log.i("PlaySpeed", "[WARM_SEG] cid=" + cid + ", host=" + host + ", code=" + code
                    + ", bytes=" + total + ", elapsed=" + (System.currentTimeMillis() - t0) + "ms");
        } catch (Throwable t) {
            Log.w(TAG, "[WARM_SEG] failed cid=" + cid + ", host=" + host
                    + ", elapsed=" + (System.currentTimeMillis() - t0) + "ms: " + t);
        } finally {
            if (conn != null) {
                conn.disconnect();
            }
        }
    }

    /** 生成缓存键。登录态影响可获取清晰度与试看标记，必须参与键计算。 */
    public static String key(long cid, long avid, long epId, int qn, boolean pgc) {
        String login;
        try {
            String cookie = CookieUtil.getFullCookieWithDevice(mg.a(MainApplication.a()));
            login = (cookie != null && cookie.contains("SESSDATA=")) ? "1" : "0";
        } catch (Throwable t) {
            login = "?";
        }
        return cid + "|" + avid + "|" + epId + "|" + qn + "|" + (pgc ? 1 : 0) + "|" + login;
    }

    /**
     * 由 ql / qh 在正常解析前调用。命中缓存直接返回响应对象；
     * 预取仍在途时短暂等待（在途接管），不取消重发。
     */
    public static Object take(String key) {
        if (key == null || !mybl.BiliFilter.next_episode_prefetch) {
            return null;
        }
        Cached cached = CACHE.remove(key);
        if (cached != null) {
            if (cached.generation == GENERATION.get()
                    && System.currentTimeMillis() - cached.createdAt <= TTL_MS) {
                Log.i(TAG, "[HIT] key=" + key);
                return cached.response;
            }
            Log.i(TAG, "[EXPIRED] key=" + key);
        }

        Future<?> future = INFLIGHT.get(key);
        if (future != null && !future.isDone()) {
            Log.i(TAG, "[INFLIGHT] waiting for in-flight prefetch, key=" + key);
            try {
                future.get(INFLIGHT_WAIT_MS, TimeUnit.MILLISECONDS);
            } catch (Throwable t) {
                Log.w(TAG, "[INFLIGHT] wait ended: " + t);
            }
            Cached after = CACHE.remove(key);
            if (after != null && after.generation == GENERATION.get()
                    && System.currentTimeMillis() - after.createdAt <= TTL_MS) {
                Log.i(TAG, "[INFLIGHT_HIT] key=" + key);
                return after.response;
            }
        }
        return null;
    }

    private static boolean isPgc(ResolveResourceParams params) {
        try {
            return params.isBangumi();
        } catch (Throwable t) {
            return false;
        }
    }
}
