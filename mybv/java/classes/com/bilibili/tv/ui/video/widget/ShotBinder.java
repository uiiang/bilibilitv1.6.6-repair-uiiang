package com.bilibili.tv.ui.video.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.LruCache;
import android.view.View;
import android.widget.TextView;
import com.bilibili.tv.api.video.VideoShot;
import com.bilibili.tv.api.video.VideoShotItem;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.util.TimeFormatUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;

public class ShotBinder implements VideoCardBinder {
    private static final String TAG = "ShotBinder";
    private static long showStartTime = 0;
    private static boolean deferLoading = true;
    private VideoShot videoShot;
    private int totalDuration;
    // 跳过段数据（片头/片尾/硬广，本地优先 + 服务器补充的合并结果），毫秒单位
    private JSONArray skipSegments;

    // 裁剪后的单格截图缓存（key = 雪碧图URL + "_" + imageIndex）
    // 清理缓存时会触发 LruCache.entryRemoved，用标记避免把主动清理误记成容量淘汰
    private static volatile boolean clearingSnapshotCache = false;

    private static final LruCache<String, Bitmap> snapshotCache = new LruCache<String, Bitmap>(50 * 1024 * 1024) {
        @Override
        protected int sizeOf(String key, Bitmap value) {
            return value.getByteCount();
        }

        @Override
        protected void entryRemoved(boolean evicted, String key, Bitmap oldValue, Bitmap newValue) {
            if (evicted && !clearingSnapshotCache) {
                android.util.Log.i("ShotPerf", "[bitmap-evict] key=" + key
                        + " | cacheSize=" + snapshotCache.size());
            }
        }
    };

    // 雪碧图解码器缓存：按 sheet URL 缓存 BitmapRegionDecoder，最多保留 8 张，accessOrder=true 实现 LRU。
    // 解码器只持有压缩数据，裁剪时只解码目标矩形区域，避免整张雪碧图解码进内存。
    private static final int MAX_CACHED_DECODERS = 8;
    private static final Object decoderLock = new Object();
    private static final LinkedHashMap<String, BitmapRegionDecoder> decoderCache =
            new LinkedHashMap<String, BitmapRegionDecoder>(8, 0.75f, true);

    // 同一张雪碧图只允许一个下载任务：sheetUrl -> 等待该图下载完成的卡片请求
    private static final Map<String, List<PendingLoad>> pendingLoads =
            new HashMap<String, List<PendingLoad>>();
    private static final Set<String> activeSheets = new HashSet<String>();
    // 延迟调度中的下载（用户仍在快速滚动时，这些任务不会被真正提交）
    private static final Map<String, ScheduledSheet> scheduledSheets =
            new HashMap<String, ScheduledSheet>();
    private static final Handler mainHandler = new Handler(Looper.getMainLooper());
    private static final long SHEET_DOWNLOAD_DEBOUNCE_MS = 150;

    private static final int CORE_POOL_SIZE = 4;
    private static final int MAX_POOL_SIZE = 8;
    private static final LinkedBlockingQueue<Runnable> workQueue = new LinkedBlockingQueue<Runnable>();
    private static final ThreadPoolExecutor imageLoadExecutor = new ThreadPoolExecutor(
            CORE_POOL_SIZE, MAX_POOL_SIZE, 30, TimeUnit.SECONDS, workQueue);

    private static final AtomicLong loadVersion = new AtomicLong(0);
    // 当前缓存归属的视频标识，切换视频时清空缓存
    private static String lastShotKey = null;

    public ShotBinder(VideoShot videoShot, int totalDuration) {
        this.videoShot = videoShot;
        this.totalDuration = totalDuration;
        ensureShot(videoShot);
    }

    public void setSkipSegments(JSONArray segments) {
        this.skipSegments = segments;
        android.util.Log.i(TAG, "setSkipSegments | count=" + (segments != null ? segments.length() : "null"));
    }

    /**
     * 切换视频时清空截图缓存；同一视频重复打开菜单时保留解码器与已裁剪截图。
     */
    private static void ensureShot(VideoShot shot) {
        if (shot == null) {
            return;
        }
        String key = String.valueOf(shot.getImage())
                + "|" + (shot.getIndex() == null ? 0 : shot.getIndex().size());
        boolean changed;
        synchronized (ShotBinder.class) {
            changed = !key.equals(lastShotKey);
            if (changed) {
                lastShotKey = key;
            }
        }
        if (changed) {
            android.util.Log.i(TAG, "ensureShot: 视频变化，清空截图缓存");
            clearAllCache();
        }
    }

    /**
     * 仅丢弃等待中的加载请求（菜单隐藏/页面销毁时调用），已缓存的解码器/截图保留。
     */
    public static void clearPendingLoads() {
        int cleared;
        List<ScheduledSheet> scheduled;
        synchronized (pendingLoads) {
            cleared = countPendingLocked();
            scheduled = new ArrayList<ScheduledSheet>(scheduledSheets.values());
            scheduledSheets.clear();
            // 保留 activeSheets：正在下载的 sheet 不重复发起请求，下载完成后仍会缓存解码器
            pendingLoads.clear();
            android.util.Log.i("ShotPerf", "[clearPending] clearedReqs=" + cleared
                    + " | activeSheets=" + activeSheets.size()
                    + " | scheduled=" + scheduled.size());
        }
        for (int i = 0; i < scheduled.size(); i++) {
            mainHandler.removeCallbacks(scheduled.get(i));
        }
        android.util.Log.i(TAG, "clearPendingLoads | 已清空等待队列");
    }

    private static int countPendingLocked() {
        int total = 0;
        for (List<PendingLoad> list : pendingLoads.values()) {
            total += list.size();
        }
        return total;
    }

    private static int totalPendingRequests() {
        synchronized (pendingLoads) {
            return countPendingLocked();
        }
    }

    private static int activeSheetCount() {
        synchronized (pendingLoads) {
            return activeSheets.size();
        }
    }

    private static void cancelScheduledSheet(String sheetUrl) {
        ScheduledSheet scheduled;
        synchronized (pendingLoads) {
            scheduled = scheduledSheets.remove(sheetUrl);
        }
        if (scheduled != null) {
            mainHandler.removeCallbacks(scheduled);
            android.util.Log.i("ShotPerf", "[schedule-cancel] sheetFile=" + shortUrl(sheetUrl));
        }
    }

    private static String shortUrl(String url) {
        if (url == null) {
            return "null";
        }
        int slash = url.lastIndexOf('/');
        return slash >= 0 && slash + 1 < url.length() ? url.substring(slash + 1) : url;
    }

    /**
     * holder 被复用绑定时，移除它之前为其它截图提交的等待请求。
     * 快速滚动时卡片会不断复用，旧请求若不撤销会持续触发中间 sheet 的下载。
     */
    private static void pruneRequestsForHolder(CompactVideoHolder holder, VideoShotItem newItem) {
        List<String> emptiedSheets = new ArrayList<String>();
        synchronized (pendingLoads) {
            Iterator<Map.Entry<String, List<PendingLoad>>> mapIt = pendingLoads.entrySet().iterator();
            while (mapIt.hasNext()) {
                Map.Entry<String, List<PendingLoad>> entry = mapIt.next();
                List<PendingLoad> list = entry.getValue();
                for (Iterator<PendingLoad> it = list.iterator(); it.hasNext(); ) {
                    PendingLoad request = it.next();
                    if (request.holderRef.get() == holder && request.item != newItem) {
                        it.remove();
                    }
                }
                if (list.isEmpty()) {
                    mapIt.remove();
                    emptiedSheets.add(entry.getKey());
                }
            }
        }
        for (int i = 0; i < emptiedSheets.size(); i++) {
            // 撤销尚未真正开始的下载调度，避免中间 sheet 被下载
            cancelScheduledSheet(emptiedSheets.get(i));
        }
    }

    /**
     * 返回仍然有效的 holder：未被回收、已附着在窗口、tag 仍对应当前请求的截图。
     * 仅做只读判断，供后台线程在下载前/解码前过滤失效请求。
     */
    private static CompactVideoHolder getValidHolder(PendingLoad request) {
        CompactVideoHolder holder = request.holderRef.get();
        if (holder == null) {
            return null;
        }
        if (!holder.a.isAttachedToWindow() || holder.a.getTag() != request.item) {
            return null;
        }
        return holder;
    }

    private static void cleanupSheetState(String sheetUrl) {
        synchronized (pendingLoads) {
            pendingLoads.remove(sheetUrl);
            activeSheets.remove(sheetUrl);
        }
    }

    /**
     * 彻底释放截图相关资源（页面销毁时调用）。
     */
    public static void clearAllCache() {
        clearingSnapshotCache = true;
        try {
            snapshotCache.evictAll();
        } finally {
            clearingSnapshotCache = false;
        }
        synchronized (decoderLock) {
            for (Iterator<Map.Entry<String, BitmapRegionDecoder>> it = decoderCache.entrySet().iterator(); it.hasNext(); ) {
                BitmapRegionDecoder decoder = it.next().getValue();
                it.remove();
                if (decoder != null && !decoder.isRecycled()) {
                    decoder.recycle();
                }
            }
        }
        List<ScheduledSheet> scheduled;
        synchronized (pendingLoads) {
            scheduled = new ArrayList<ScheduledSheet>(scheduledSheets.values());
            scheduledSheets.clear();
            pendingLoads.clear();
            activeSheets.clear();
        }
        for (int i = 0; i < scheduled.size(); i++) {
            mainHandler.removeCallbacks(scheduled.get(i));
        }
        loadVersion.incrementAndGet();
        android.util.Log.i(TAG, "clearAllCache | 已释放截图缓存 | bitmapCacheSize=" + snapshotCache.size());
    }

    public static void setShowStartTime(long time) {
        showStartTime = time;
    }

    private static long getElapsedTime() {
        if (showStartTime == 0) return 0;
        return System.currentTimeMillis() - showStartTime;
    }

    public static void setDeferLoading(boolean defer) {
        deferLoading = defer;
        android.util.Log.i(TAG, "setDeferLoading: " + defer + " | elapsed=" + getElapsedTime() + "ms");
    }

    @Override
    public void bind(VideoDetailActivity.f holder, Object data, int position) {
    }

    @Override
    public void bindCompact(CompactVideoHolder holder, Object data, int position) {
        if (!(data instanceof VideoShotItem)) {
            return;
        }

        VideoShotItem shot = (VideoShotItem) data;

        // android.util.Log.i("ShotPerf", "[bindCompact] pos=" + position
        //         + " | time=" + shot.time + "s | imageIndex=" + shot.imageIndex
        //         + " | defer=" + deferLoading);

        // holder 被复用绑定时，撤销它之前为其它截图提交的等待请求，避免快速滚动时积压
        pruneRequestsForHolder(holder, shot);

        loadShotImage(shot, holder);

        TextView durationView = holder.getDurationView();
        if (durationView != null) {
            durationView.setText(TimeFormatUtil.formatTime(shot.time, totalDuration));
            durationView.setVisibility(View.VISIBLE);
        }

        holder.getTitleView().setVisibility(View.GONE);
        holder.getUpView().setVisibility(View.GONE);
        holder.getPubdateView().setVisibility(View.GONE);
        holder.getPlayCountView().setVisibility(View.GONE);
        holder.getDanmakuView().setVisibility(View.GONE);
        holder.getBadgeView().setVisibility(View.GONE);

        // 左上角"片头/片尾/广告"badge（复用"当前播放"badge样式）
        TextView indexBadge = holder.getIndexBadgeView();
        if (indexBadge != null) {
            String badgeText = getSkipBadgeText(shot.time);
            if (badgeText != null) {
                indexBadge.setText(badgeText);
                indexBadge.setVisibility(View.VISIBLE);
            } else {
                indexBadge.setVisibility(View.GONE);
            }
        }

        View parent = (View) holder.getTitleView().getParent();
        if (parent != null) {
            parent.setVisibility(View.GONE);
        }
    }

    /**
     * 根据截图时间点匹配跳过段，返回需要显示的badge文字
     * 类型映射：片头→片头，片尾→片尾，硬广→广告
     */
    private String getSkipBadgeText(int timeSeconds) {
        if (skipSegments == null || skipSegments.length() == 0) {
            return null;
        }
        long timeMs = (long) timeSeconds * 1000L;
        for (int i = 0; i < skipSegments.length(); i++) {
            try {
                JSONObject seg = skipSegments.optJSONObject(i);
                if (seg == null) {
                    continue;
                }
                long start = seg.optLong("start", -1);
                long end = seg.optLong("end", -1);
                if (start < 0 || end <= start) {
                    continue;
                }
                if (timeMs >= start && timeMs < end) {
                    String type = seg.optString("type");
                    String badgeText = null;
                    if ("片头".equals(type)) {
                        badgeText = "片头";
                    } else if ("片尾".equals(type)) {
                        badgeText = "片尾";
                    } else if ("硬广".equals(type)) {
                        badgeText = "广告";
                    }
                    android.util.Log.i(TAG, "getSkipBadgeText: MATCH time=" + timeSeconds + "s(" + timeMs + "ms) -> " + badgeText);
                    return badgeText;
                }
            } catch (Exception e) {
                android.util.Log.i(TAG, "getSkipBadgeText error: " + e.getMessage());
            }
        }
        return null;
    }

    private void loadShotImage(VideoShotItem shot, final CompactVideoHolder holder) {
        if (videoShot == null) {
            return;
        }

        holder.getCoverImageView().setImageResource(com.bilibili.tv.R.drawable.default_img_loading);

        if (deferLoading) {
            // android.util.Log.i(TAG, "loadShotImage: 延迟加载中，跳过 | time=" + shot.time + "s | elapsed=" + getElapsedTime() + "ms");
            return;
        }

        final String sheetUrl = videoShot.getImageUrl(shot.imageIndex);
        if (sheetUrl == null) {
            android.util.Log.i(TAG, "loadShotImage: sheetUrl is null for index " + shot.imageIndex);
            return;
        }

        final int imageIndex = shot.imageIndex;
        final int shotTime = shot.time;
        final String cacheKey = sheetUrl + "_" + imageIndex;

        Bitmap cached = snapshotCache.get(cacheKey);
        if (cached != null) {
            // android.util.Log.i("ShotPerf", "[hit-bitmap] time=" + shotTime + "s | imageIndex=" + imageIndex);
            holder.getCoverImageView().setImageBitmap(cached);
            return;
        }

        final int xLen = videoShot.getImgXLen();
        final int yLen = videoShot.getImgYLen();
        final int sheetIndex = (xLen > 0 && yLen > 0) ? imageIndex / (xLen * yLen) : -1;

        // 同步命中：解码器已在内存中，直接解出目标格子（几毫秒），不进线程池排队
        Bitmap syncBitmap = tryDecodeFromCache(sheetUrl, imageIndex, xLen, yLen);
        if (syncBitmap != null) {
            snapshotCache.put(cacheKey, syncBitmap);
            holder.getCoverImageView().setImageBitmap(syncBitmap);
            // android.util.Log.i("ShotPerf", "[hit-decoder] time=" + shotTime + "s | sheet=" + sheetIndex);
            return;
        }

        // android.util.Log.i("ShotPerf", "[need-sheet] time=" + shotTime + "s | imageIndex=" + imageIndex
        //         + " | sheet=" + sheetIndex + " | sheetFile=" + shortUrl(sheetUrl)
        //         + " | queue=" + workQueue.size()
        //         + " | activeSheets=" + activeSheetCount()
        //         + " | scheduled=" + scheduledSheetCount()
        //         + " | pendingReqs=" + totalPendingRequests());

        final long currentVersion = loadVersion.get();
        final java.lang.ref.WeakReference<CompactVideoHolder> holderRef = new java.lang.ref.WeakReference<CompactVideoHolder>(holder);
        PendingLoad request = new PendingLoad(holderRef, shot, imageIndex, cacheKey, currentVersion);

        synchronized (pendingLoads) {
            List<PendingLoad> list = pendingLoads.get(sheetUrl);
            if (list == null) {
                list = new ArrayList<PendingLoad>();
                pendingLoads.put(sheetUrl, list);
            }
            list.add(request);
        }

        boolean scheduled = scheduleSheetDownload(sheetUrl, xLen, yLen, currentVersion, false);
        if (scheduled) {
            // 仅在新排入一次防抖调度时输出，避免逐卡日志刷屏
            android.util.Log.i("ShotPerf", "[schedule] time=" + shotTime + "s | sheet=" + sheetIndex
                    + " | sheetFile=" + shortUrl(sheetUrl)
                    + " | pendingReqs=" + totalPendingRequests());
        }
    }

    /**
     * 延迟调度 sheet 下载：
     * 普通任务延迟 SHEET_DOWNLOAD_DEBOUNCE_MS 提交，期间若请求被撤销（快速滚动）则不下载；
     * 预加载任务立即提交。
     *
     * @return 是否新排入了一个调度（已存在活动/调度中的任务时返回 false）
     */
    private static boolean scheduleSheetDownload(String sheetUrl, int xLen, int yLen,
                                                 long version, boolean forPreload) {
        if (forPreload) {
            boolean run = false;
            synchronized (pendingLoads) {
                if (!activeSheets.contains(sheetUrl) && !scheduledSheets.containsKey(sheetUrl)) {
                    activeSheets.add(sheetUrl);
                    run = true;
                }
            }
            if (run) {
                imageLoadExecutor.execute(new SheetLoadTask(sheetUrl, xLen, yLen, version, true));
            }
            return run;
        }

        ScheduledSheet scheduled = new ScheduledSheet(sheetUrl, xLen, yLen, version);
        boolean post = false;
        synchronized (pendingLoads) {
            if (!activeSheets.contains(sheetUrl) && !scheduledSheets.containsKey(sheetUrl)) {
                scheduledSheets.put(sheetUrl, scheduled);
                post = true;
            }
        }
        if (post) {
            mainHandler.postDelayed(scheduled, SHEET_DOWNLOAD_DEBOUNCE_MS);
        }
        return post;
    }

    /**
     * 延迟调度任务：触发时再次确认仍有有效请求，然后才提交线程池下载
     */
    private static final class ScheduledSheet implements Runnable {
        private final String sheetUrl;
        private final int xLen;
        private final int yLen;
        private final long version;

        ScheduledSheet(String sheetUrl, int xLen, int yLen, long version) {
            this.sheetUrl = sheetUrl;
            this.xLen = xLen;
            this.yLen = yLen;
            this.version = version;
        }

        @Override
        public void run() {
            synchronized (pendingLoads) {
                scheduledSheets.remove(sheetUrl);
                if (activeSheets.contains(sheetUrl)) {
                    return;
                }
                List<PendingLoad> list = pendingLoads.get(sheetUrl);
                if (list == null || list.isEmpty()) {
                    pendingLoads.remove(sheetUrl);
                    android.util.Log.i("ShotPerf", "[schedule-skip] sheetFile=" + shortUrl(sheetUrl)
                            + " | 无等待请求，取消下载");
                    return;
                }
                activeSheets.add(sheetUrl);
            }
            android.util.Log.i("ShotPerf", "[schedule-run] sheetFile=" + shortUrl(sheetUrl)
                    + " | pendingReqs=" + totalPendingRequests());
            imageLoadExecutor.execute(new SheetLoadTask(sheetUrl, xLen, yLen, version, false));
        }
    }

    /**
     * 预加载指定播放时间所在雪碧图的解码器（只下载、不绑定 View）。
     * 菜单弹出时提前发起网络请求，抵消布局/滚动定位的耗时，首屏出图更快。
     *
     * @param items 卡片数据列表，复用调用方已构建的列表，避免重复构建
     */
    public static void preloadSheet(VideoShot shot, List<VideoShotItem> items, int playTimeSec) {
        if (shot == null || items == null || items.isEmpty()) {
            return;
        }
        VideoShotItem target = items.get(0);
        for (int i = 0; i < items.size(); i++) {
            if (items.get(i).time <= playTimeSec) {
                target = items.get(i);
            } else {
                break;
            }
        }
        final String sheetUrl = shot.getImageUrl(target.imageIndex);
        if (sheetUrl == null) {
            return;
        }
        boolean decoderCached = false;
        synchronized (decoderLock) {
            BitmapRegionDecoder cached = decoderCache.get(sheetUrl);
            decoderCached = cached != null && !cached.isRecycled();
        }
        if (decoderCached) {
            android.util.Log.i("ShotPerf", "preloadSheet | time=" + playTimeSec + "s | sheetFile=" + shortUrl(sheetUrl)
                    + " | decoderCached=true | elapsed=" + getElapsedTime() + "ms");
            return;
        }
        boolean submitTask = scheduleSheetDownload(sheetUrl, shot.getImgXLen(), shot.getImgYLen(), loadVersion.get(), true);
        android.util.Log.i("ShotPerf", "preloadSheet | time=" + playTimeSec + "s | sheetFile=" + shortUrl(sheetUrl)
                + " | submit=" + submitTask + " | elapsed=" + getElapsedTime() + "ms");
    }

    /**
     * 从解码器缓存中同步裁剪一格；未命中返回 null（需要下载雪碧图）。
     */
    private static Bitmap tryDecodeFromCache(String sheetUrl, int imageIndex, int xLen, int yLen) {
        synchronized (decoderLock) {
            BitmapRegionDecoder decoder = decoderCache.get(sheetUrl);
            if (decoder == null || decoder.isRecycled()) {
                return null;
            }
            return decodeCell(decoder, imageIndex, xLen, yLen);
        }
    }

    /**
     * 只解码目标矩形区域，调用方必须持有 decoderLock。
     */
    private static Bitmap decodeCell(BitmapRegionDecoder decoder, int imageIndex, int xLen, int yLen) {
        if (decoder == null || decoder.isRecycled() || xLen <= 0 || yLen <= 0) {
            return null;
        }
        try {
            int perSheet = xLen * yLen;
            int indexInSheet = imageIndex % perSheet;
            int col = indexInSheet % xLen;
            int row = indexInSheet / xLen;

            int width = decoder.getWidth();
            int height = decoder.getHeight();
            int cellWidth = width / xLen;
            int cellHeight = height / yLen;
            if (cellWidth <= 0 || cellHeight <= 0) {
                return null;
            }

            int left = col * cellWidth;
            int top = row * cellHeight;
            if (left + cellWidth > width || top + cellHeight > height) {
                return null;
            }

            // 显示尺寸约 213x107，自适应降采样，避免解码远大于显示尺寸的原始区域
            int sampleSize = 1;
            while (cellWidth / (sampleSize * 2) >= 200 && cellHeight / (sampleSize * 2) >= 110) {
                sampleSize *= 2;
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = sampleSize;

            return decoder.decodeRegion(new Rect(left, top, left + cellWidth, top + cellHeight), options);
        } catch (Exception e) {
            android.util.Log.i(TAG, "decodeCell error: " + e.getMessage());
            return null;
        }
    }

    /**
     * 缓存雪碧图解码器，超过上限时回收最旧的解码器。
     */
    private static void putDecoder(String sheetUrl, BitmapRegionDecoder decoder) {
        int size;
        synchronized (decoderLock) {
            BitmapRegionDecoder replaced = decoderCache.put(sheetUrl, decoder);
            if (replaced != null && replaced != decoder && !replaced.isRecycled()) {
                replaced.recycle();
            }
            while (decoderCache.size() > MAX_CACHED_DECODERS) {
                Iterator<Map.Entry<String, BitmapRegionDecoder>> it = decoderCache.entrySet().iterator();
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, BitmapRegionDecoder> eldestEntry = it.next();
                BitmapRegionDecoder eldest = eldestEntry.getValue();
                it.remove();
                android.util.Log.i("ShotPerf", "[decoder-evict] sheetFile=" + shortUrl(eldestEntry.getKey())
                        + " | size=" + decoderCache.size());
                if (eldest != null && eldest != decoder && !eldest.isRecycled()) {
                    eldest.recycle();
                }
            }
            size = decoderCache.size();
        }
        android.util.Log.i("ShotPerf", "[decoder-put] sheetFile=" + shortUrl(sheetUrl) + " | size=" + size);
    }

    /**
     * 单张雪碧图的下载任务：下载一次，解码器入缓存，再为该图上的所有等待卡片裁剪。
     */
    private static final class SheetLoadTask implements Runnable {
        private final String sheetUrl;
        private final int xLen;
        private final int yLen;
        private final long versionAtSubmit;
        private final long submittedAt;
        // 预加载任务允许"无等待请求"也下载（只缓存解码器）；普通任务无请求则跳过
        private final boolean forPreload;

        SheetLoadTask(String sheetUrl, int xLen, int yLen, long versionAtSubmit, boolean forPreload) {
            this.sheetUrl = sheetUrl;
            this.xLen = xLen;
            this.yLen = yLen;
            this.versionAtSubmit = versionAtSubmit;
            this.forPreload = forPreload;
            this.submittedAt = System.currentTimeMillis();
        }

        @Override
        public void run() {
            final long startAt = System.currentTimeMillis();
            android.util.Log.i("ShotPerf", "[task-start] sheetFile=" + shortUrl(sheetUrl)
                    + " | waitMs=" + (startAt - submittedAt)
                    + " | queue=" + workQueue.size()
                    + " | poolActive=" + imageLoadExecutor.getActiveCount()
                    + " | poolSize=" + imageLoadExecutor.getPoolSize()
                    + " | activeSheets=" + activeSheetCount()
                    + " | pendingReqs=" + totalPendingRequests()
                    + " | preload=" + forPreload);

            if (versionAtSubmit != loadVersion.get()) {
                cleanupSheetState(sheetUrl);
                android.util.Log.i("ShotPerf", "[task-abort] sheetFile=" + shortUrl(sheetUrl) + " | reason=version");
                return;
            }

            // 普通任务在真正下载前剔除已失效的请求（holder 已复用/回收），没有有效请求则跳过下载
            if (!forPreload) {
                int stale = 0;
                boolean skip;
                synchronized (pendingLoads) {
                    List<PendingLoad> list = pendingLoads.get(sheetUrl);
                    if (list != null) {
                        for (Iterator<PendingLoad> it = list.iterator(); it.hasNext(); ) {
                            PendingLoad request = it.next();
                            if (getValidHolder(request) == null) {
                                it.remove();
                                stale++;
                            }
                        }
                    }
                    skip = (list == null || list.isEmpty());
                    if (skip) {
                        pendingLoads.remove(sheetUrl);
                        activeSheets.remove(sheetUrl);
                    }
                }
                if (skip) {
                    android.util.Log.i("ShotPerf", "[task-skip] sheetFile=" + shortUrl(sheetUrl)
                            + " | 无有效请求，跳过下载 | staleRemoved=" + stale
                            + " | waitMs=" + (startAt - submittedAt));
                    return;
                }
                if (stale > 0) {
                    android.util.Log.i("ShotPerf", "[task-stale] sheetFile=" + shortUrl(sheetUrl)
                            + " | removed=" + stale);
                }
            }

            BitmapRegionDecoder decoder = null;
            long downloadCost = 0;
            try {
                long downloadStart = System.currentTimeMillis();
                java.net.URL url = new java.net.URL(sheetUrl);
                java.net.HttpURLConnection conn = (java.net.HttpURLConnection) url.openConnection();
                conn.setConnectTimeout(3000);
                conn.setReadTimeout(3000);
                conn.connect();
                try {
                    decoder = BitmapRegionDecoder.newInstance(conn.getInputStream(), false);
                } finally {
                    conn.disconnect();
                }
                downloadCost = System.currentTimeMillis() - downloadStart;
            } catch (Exception e) {
                downloadCost = System.currentTimeMillis() - startAt;
                android.util.Log.i(TAG, "download sheet failed: " + e.getMessage() + " | url=" + sheetUrl);
            }
            android.util.Log.i("ShotPerf", "[task-download] sheetFile=" + shortUrl(sheetUrl)
                    + " | costMs=" + downloadCost + " | ok=" + (decoder != null)
                    + (decoder != null ? " | w=" + decoder.getWidth() + " | h=" + decoder.getHeight() : ""));

            // 页面已销毁 / 缓存被清空：丢弃本次下载，避免残留解码器
            if (versionAtSubmit != loadVersion.get()) {
                if (decoder != null && !decoder.isRecycled()) {
                    decoder.recycle();
                }
                cleanupSheetState(sheetUrl);
                android.util.Log.i(TAG, "download sheet cancelled | url=" + sheetUrl);
                return;
            }

            if (decoder != null) {
                putDecoder(sheetUrl, decoder);
            }

            List<PendingLoad> requests;
            synchronized (pendingLoads) {
                requests = pendingLoads.remove(sheetUrl);
                activeSheets.remove(sheetUrl);
            }

            android.util.Log.i("ShotPerf", "[task-pending] sheetFile=" + shortUrl(sheetUrl)
                    + " | requests=" + (requests == null ? -1 : requests.size())
                    + " | pendingReqs=" + totalPendingRequests()
                    + " | decoderOk=" + (decoder != null));

            if (decoder == null || requests == null || requests.isEmpty()) {
                return;
            }

            long dispatchStart = System.currentTimeMillis();
            long currentVersion = loadVersion.get();
            int decoded = 0;
            int decodeFail = 0;
            int skippedVersion = 0;
            int skippedHolder = 0;
            for (int i = 0; i < requests.size(); i++) {
                PendingLoad request = requests.get(i);
                if (request.version != currentVersion) {
                    skippedVersion++;
                    continue;
                }
                // 解码前先校验 holder 是否仍绑定到该截图：避免"解码完成才丢弃"的无效工作
                final CompactVideoHolder liveHolder = getValidHolder(request);
                if (liveHolder == null) {
                    skippedHolder++;
                    continue;
                }
                Bitmap bitmap = decodeCellLocked(decoder, request.imageIndex, xLen, yLen);
                if (bitmap == null) {
                    decodeFail++;
                    android.util.Log.i("ShotPerf", "[task-decode-fail] sheetFile=" + shortUrl(sheetUrl)
                            + " | time=" + request.item.time + "s | decoderRecycled=" + decoder.isRecycled());
                    continue;
                }
                decoded++;
                snapshotCache.put(request.cacheKey, bitmap);

                final Bitmap liveBitmap = bitmap;
                liveHolder.getCoverImageView().post(new Runnable() {
                    @Override
                    public void run() {
                        if (request.version != loadVersion.get()) {
                            android.util.Log.i("ShotPerf", "[post-drop] reason=version | time=" + request.item.time + "s");
                            return;
                        }
                        // holder 可能已被复用绑定到其它截图，tag 不一致则丢弃
                        if (liveHolder.a.getTag() != request.item) {
                            android.util.Log.i("ShotPerf", "[post-drop] reason=tag | time=" + request.item.time + "s");
                            return;
                        }
                        // android.util.Log.i(TAG, "loadShotImage: 图片显示 | time=" + request.item.time
                        //         + "s | elapsed=" + getElapsedTime() + "ms");
                        liveHolder.getCoverImageView().setImageBitmap(liveBitmap);
                    }
                });
            }
            android.util.Log.i("ShotPerf", "[task-dispatch] sheetFile=" + shortUrl(sheetUrl)
                    + " | requests=" + requests.size()
                    + " | decoded=" + decoded + " | decodeFail=" + decodeFail
                    + " | skipVer=" + skippedVersion + " | skipHolder=" + skippedHolder
                    + " | costMs=" + (System.currentTimeMillis() - dispatchStart));
        }
    }

    private static Bitmap decodeCellLocked(BitmapRegionDecoder decoder, int imageIndex, int xLen, int yLen) {
        synchronized (decoderLock) {
            return decodeCell(decoder, imageIndex, xLen, yLen);
        }
    }

    /**
     * 等待某张雪碧图下载完成的卡片请求
     */
    private static final class PendingLoad {
        final java.lang.ref.WeakReference<CompactVideoHolder> holderRef;
        final VideoShotItem item;
        final int imageIndex;
        final String cacheKey;
        final long version;

        PendingLoad(java.lang.ref.WeakReference<CompactVideoHolder> holderRef,
                    VideoShotItem item, int imageIndex, String cacheKey, long version) {
            this.holderRef = holderRef;
            this.item = item;
            this.imageIndex = imageIndex;
            this.cacheKey = cacheKey;
            this.version = version;
        }
    }

    @Override
    public long getVideoId(Object data) {
        return 0;
    }

    @Override
    public String getCoverUrl(Object data) {
        if (data instanceof VideoShotItem && videoShot != null) {
            VideoShotItem shot = (VideoShotItem) data;
            return videoShot.getImageUrl(shot.imageIndex);
        }
        return null;
    }

    @Override
    public boolean isCurrentVideo(Object data, long currentVideoId) {
        return false;
    }

    @Override
    public boolean isCurrentVideoByCid(Object data, long currentCid) {
        return false;
    }

    @Override
    public boolean isCurrentSeason(Object data, int currentSeasonId) {
        return false;
    }

    @Override
    public boolean hasPlayProgress(Object data, long currentCid) {
        return false;
    }
}
