package com.bilibili.tv.ui.video.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
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
    private static Runnable onDeferClearedCallback = null;
    private VideoShot videoShot;
    private int totalDuration;
    // 跳过段数据（片头/片尾/硬广，本地优先 + 服务器补充的合并结果），毫秒单位
    private JSONArray skipSegments;

    // 裁剪后的单格截图缓存（key = 雪碧图URL + "_" + imageIndex）
    private static final LruCache<String, Bitmap> snapshotCache = new LruCache<String, Bitmap>(50 * 1024 * 1024) {
        @Override
        protected int sizeOf(String key, Bitmap value) {
            return value.getByteCount();
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
        synchronized (pendingLoads) {
            // 保留 activeSheets：正在下载的 sheet 不重复发起请求，下载完成后仍会缓存解码器
            pendingLoads.clear();
        }
        android.util.Log.i(TAG, "clearPendingLoads | 已清空等待队列");
    }

    /**
     * 彻底释放截图相关资源（页面销毁时调用）。
     */
    public static void clearAllCache() {
        snapshotCache.evictAll();
        synchronized (decoderLock) {
            for (Iterator<Map.Entry<String, BitmapRegionDecoder>> it = decoderCache.entrySet().iterator(); it.hasNext(); ) {
                BitmapRegionDecoder decoder = it.next().getValue();
                it.remove();
                if (decoder != null && !decoder.isRecycled()) {
                    decoder.recycle();
                }
            }
        }
        synchronized (pendingLoads) {
            pendingLoads.clear();
            activeSheets.clear();
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
        if (!defer && onDeferClearedCallback != null) {
            onDeferClearedCallback.run();
            onDeferClearedCallback = null;
        }
    }

    public static void setOnDeferClearedCallback(Runnable callback) {
        onDeferClearedCallback = callback;
    }

    public static boolean isDeferLoading() {
        return deferLoading;
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
            // android.util.Log.i(TAG, "loadShotImage: using cached bitmap for time=" + shotTime + "s | elapsed=" + getElapsedTime() + "ms");
            holder.getCoverImageView().setImageBitmap(cached);
            return;
        }

        final int xLen = videoShot.getImgXLen();
        final int yLen = videoShot.getImgYLen();

        // 同步命中：解码器已在内存中，直接解出目标格子（几毫秒），不进线程池排队
        Bitmap syncBitmap = tryDecodeFromCache(sheetUrl, imageIndex, xLen, yLen);
        if (syncBitmap != null) {
            snapshotCache.put(cacheKey, syncBitmap);
            holder.getCoverImageView().setImageBitmap(syncBitmap);
            // android.util.Log.i(TAG, "loadShotImage: 同步解码命中 | time=" + shotTime + "s | elapsed=" + getElapsedTime() + "ms");
            return;
        }

        final long currentVersion = loadVersion.get();
        final java.lang.ref.WeakReference<CompactVideoHolder> holderRef = new java.lang.ref.WeakReference<CompactVideoHolder>(holder);
        PendingLoad request = new PendingLoad(holderRef, shot, imageIndex, cacheKey, currentVersion);

        boolean submitTask = false;
        synchronized (pendingLoads) {
            List<PendingLoad> list = pendingLoads.get(sheetUrl);
            if (list == null) {
                list = new ArrayList<PendingLoad>();
                pendingLoads.put(sheetUrl, list);
            }
            list.add(request);
            if (!activeSheets.contains(sheetUrl)) {
                activeSheets.add(sheetUrl);
                submitTask = true;
            }
        }

        // android.util.Log.i(TAG, "loadShotImage: 等待雪碧图下载 | time=" + shotTime + "s | submit=" + submitTask
        //         + " | queueSize=" + workQueue.size() + " | elapsed=" + getElapsedTime() + "ms");
        if (submitTask) {
            imageLoadExecutor.execute(new SheetLoadTask(sheetUrl, xLen, yLen, currentVersion));
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
        synchronized (decoderLock) {
            BitmapRegionDecoder cached = decoderCache.get(sheetUrl);
            if (cached != null && !cached.isRecycled()) {
                return;
            }
        }
        boolean submitTask = false;
        synchronized (pendingLoads) {
            if (!pendingLoads.containsKey(sheetUrl)) {
                pendingLoads.put(sheetUrl, new ArrayList<PendingLoad>());
            }
            if (!activeSheets.contains(sheetUrl)) {
                activeSheets.add(sheetUrl);
                submitTask = true;
            }
        }
        if (submitTask) {
            imageLoadExecutor.execute(new SheetLoadTask(sheetUrl, shot.getImgXLen(), shot.getImgYLen(), loadVersion.get()));
        }
        android.util.Log.i(TAG, "preloadSheet | time=" + playTimeSec + "s | submit=" + submitTask + " | elapsed=" + getElapsedTime() + "ms");
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

            return decoder.decodeRegion(new Rect(left, top, left + cellWidth, top + cellHeight), null);
        } catch (Exception e) {
            android.util.Log.i(TAG, "decodeCell error: " + e.getMessage());
            return null;
        }
    }

    /**
     * 缓存雪碧图解码器，超过上限时回收最旧的解码器。
     */
    private static void putDecoder(String sheetUrl, BitmapRegionDecoder decoder) {
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
                BitmapRegionDecoder eldest = it.next().getValue();
                it.remove();
                if (eldest != null && eldest != decoder && !eldest.isRecycled()) {
                    eldest.recycle();
                }
            }
        }
        android.util.Log.i(TAG, "putDecoder | 缓存解码器，当前数量=" + decoderCache.size());
    }

    /**
     * 单张雪碧图的下载任务：下载一次，解码器入缓存，再为该图上的所有等待卡片裁剪。
     */
    private static final class SheetLoadTask implements Runnable {
        private final String sheetUrl;
        private final int xLen;
        private final int yLen;
        private final long versionAtSubmit;

        SheetLoadTask(String sheetUrl, int xLen, int yLen, long versionAtSubmit) {
            this.sheetUrl = sheetUrl;
            this.xLen = xLen;
            this.yLen = yLen;
            this.versionAtSubmit = versionAtSubmit;
        }

        @Override
        public void run() {
            BitmapRegionDecoder decoder = null;
            try {
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
            } catch (Exception e) {
                android.util.Log.i(TAG, "download sheet failed: " + e.getMessage() + " | url=" + sheetUrl);
            }

            // 页面已销毁 / 缓存被清空：丢弃本次下载，避免残留解码器
            if (versionAtSubmit != loadVersion.get()) {
                if (decoder != null && !decoder.isRecycled()) {
                    decoder.recycle();
                }
                synchronized (pendingLoads) {
                    pendingLoads.remove(sheetUrl);
                    activeSheets.remove(sheetUrl);
                }
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

            if (decoder == null || requests == null || requests.isEmpty()) {
                return;
            }

            long currentVersion = loadVersion.get();
            for (int i = 0; i < requests.size(); i++) {
                PendingLoad request = requests.get(i);
                if (request.version != currentVersion) {
                    continue;
                }
                Bitmap bitmap = decodeCellLocked(decoder, request.imageIndex, xLen, yLen);
                if (bitmap == null) {
                    continue;
                }
                snapshotCache.put(request.cacheKey, bitmap);

                final CompactVideoHolder liveHolder = request.holderRef.get();
                if (liveHolder == null) {
                    continue;
                }
                final Bitmap liveBitmap = bitmap;
                liveHolder.getCoverImageView().post(new Runnable() {
                    @Override
                    public void run() {
                        if (request.version != loadVersion.get()) {
                            return;
                        }
                        // holder 可能已被复用绑定到其它截图，tag 不一致则丢弃
                        if (liveHolder.a.getTag() != request.item) {
                            return;
                        }
                        // android.util.Log.i(TAG, "loadShotImage: 图片显示 | time=" + request.item.time
                        //         + "s | elapsed=" + getElapsedTime() + "ms");
                        liveHolder.getCoverImageView().setImageBitmap(liveBitmap);
                    }
                });
            }
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
