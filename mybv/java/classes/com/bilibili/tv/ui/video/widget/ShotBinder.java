package com.bilibili.tv.ui.video.widget;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.TextView;
import com.bilibili.tv.api.video.VideoShot;
import com.bilibili.tv.api.video.VideoShotItem;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.util.TimeFormatUtil;
import com.bilibili.tv.widget.ScalableImageView;
import android.util.LruCache;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.HashSet;
import java.util.Set;
import java.util.Map;
import java.util.HashMap;
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
    private static final LruCache<String, Bitmap> snapshotCache = new LruCache<String, Bitmap>(50 * 1024 * 1024) {
        @Override
        protected int sizeOf(String key, Bitmap value) {
            return value.getByteCount();
        }
    };
    
    private static final int CORE_POOL_SIZE = 2;
    private static final int MAX_POOL_SIZE = 3;
    private static final LinkedBlockingQueue<Runnable> workQueue = new LinkedBlockingQueue<>();
    private static final ThreadPoolExecutor imageLoadExecutor = new ThreadPoolExecutor(
        CORE_POOL_SIZE, MAX_POOL_SIZE, 30, TimeUnit.SECONDS, workQueue);
    
    private static final Set<String> loadingUrls = new HashSet<>();
    private static final Map<String, Boolean> cancelledUrls = new HashMap<>();
    private static final AtomicLong loadVersion = new AtomicLong(0);
    
    public ShotBinder(VideoShot videoShot, int totalDuration) {
        this.videoShot = videoShot;
        this.totalDuration = totalDuration;
    }
    
    public void setSkipSegments(JSONArray segments) {
        this.skipSegments = segments;
        android.util.Log.i(TAG, "setSkipSegments | count=" + (segments != null ? segments.length() : "null"));
    }
    
    public static void clearPendingLoads() {
        android.util.Log.i(TAG, "clearPendingLoads | 清空待加载队列 | 队列大小=" + workQueue.size());
        workQueue.clear();
        synchronized (loadingUrls) {
            loadingUrls.clear();
        }
        synchronized (cancelledUrls) {
            cancelledUrls.clear();
        }
        loadVersion.incrementAndGet();
    }
    
    public static void clearAllCache() {
        android.util.Log.i(TAG, "clearAllCache | 清理所有缓存 | cacheSize=" + snapshotCache.size() 
            + " | memoryUsed=" + (snapshotCache.size() / 1024) + "KB");
        snapshotCache.evictAll();
        clearPendingLoads();
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
            android.util.Log.i(TAG, "loadShotImage: 延迟加载中，跳过 | time=" + shot.time + "s | elapsed=" + getElapsedTime() + "ms");
            return;
        }
        
        final String imageUrl = videoShot.getImageUrl(shot.imageIndex);
        if (imageUrl == null) {
            android.util.Log.i(TAG, "loadShotImage: imageUrl is null for index " + shot.imageIndex);
            return;
        }
        
        final int snapshotIndex = shot.imageIndex;
        final int shotTime = shot.time;
        final String cacheKey = imageUrl + "_" + snapshotIndex;
        
        Bitmap cached = snapshotCache.get(cacheKey);
        if (cached != null) {
            android.util.Log.i(TAG, "loadShotImage: using cached bitmap for time=" + shotTime + "s | elapsed=" + getElapsedTime() + "ms");
            holder.getCoverImageView().setImageBitmap(cached);
            return;
        }
        
        synchronized (loadingUrls) {
            if (loadingUrls.contains(cacheKey)) {
                android.util.Log.i(TAG, "loadShotImage: already loading " + cacheKey);
                return;
            }
            loadingUrls.add(cacheKey);
        }
        
        final long currentVersion = loadVersion.get();
        android.util.Log.i(TAG, "loadShotImage: 入队 | time=" + shotTime + "s | queueSize=" + workQueue.size() + " | elapsed=" + getElapsedTime() + "ms");
        
        // 关键修复：用WeakReference持有ViewHolder，避免排队/执行中的任务强持有View树导致Activity无法回收
        final java.lang.ref.WeakReference<CompactVideoHolder> holderRef = new java.lang.ref.WeakReference<>(holder);
        
        imageLoadExecutor.execute(new Runnable() {
            @Override
            public void run() {
                if (currentVersion != loadVersion.get()) {
                    android.util.Log.i(TAG, "loadShotImage: cancelled due to version change " + cacheKey);
                    synchronized (loadingUrls) {
                        loadingUrls.remove(cacheKey);
                    }
                    return;
                }
                
                // 任务真正执行时若ViewHolder已被回收，直接放弃，避免操作已销毁的View
                final CompactVideoHolder holder = holderRef.get();
                if (holder == null) {
                    android.util.Log.i(TAG, "loadShotImage: holder recycled, skip " + cacheKey);
                    synchronized (loadingUrls) {
                        loadingUrls.remove(cacheKey);
                    }
                    return;
                }
                final long versionAtStart = currentVersion;
                
                try {
                    java.net.URL url = new java.net.URL(imageUrl);
                    java.net.HttpURLConnection conn = (java.net.HttpURLConnection) url.openConnection();
                    conn.setConnectTimeout(10000);
                    conn.setReadTimeout(10000);
                    try {
                        conn.connect();
                        
                        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
                        options.inSampleSize = 2;
                        
                        Bitmap sheetBitmap = android.graphics.BitmapFactory.decodeStream(conn.getInputStream(), null, options);
                        
                        if (sheetBitmap == null) {
                            android.util.Log.i(TAG, "loadShotImage: sheetBitmap is null");
                            synchronized (loadingUrls) {
                                loadingUrls.remove(cacheKey);
                            }
                            return;
                        }
                        
                        if (versionAtStart != loadVersion.get()) {
                            android.util.Log.i(TAG, "loadShotImage: cancelled after download " + cacheKey);
                            sheetBitmap.recycle();
                            synchronized (loadingUrls) {
                                loadingUrls.remove(cacheKey);
                            }
                            return;
                        }
                        
                        int actualWidth = sheetBitmap.getWidth();
                        int actualHeight = sheetBitmap.getHeight();
                        int actualCellWidth = actualWidth / videoShot.getImgXLen();
                        int actualCellHeight = actualHeight / videoShot.getImgYLen();
                        
                        int indexInImage = snapshotIndex % (videoShot.getImgXLen() * videoShot.getImgYLen());
                        int col = indexInImage % videoShot.getImgXLen();
                        int row = indexInImage / videoShot.getImgXLen();
                        
                        int actualLeft = col * actualCellWidth;
                        int actualTop = row * actualCellHeight;
                        
                        final Bitmap cropped = Bitmap.createBitmap(
                            sheetBitmap, actualLeft, actualTop, 
                            actualCellWidth, actualCellHeight
                        );
                        
                        snapshotCache.put(cacheKey, cropped);
                        
                        if (!sheetBitmap.isRecycled()) {
                            sheetBitmap.recycle();
                        }
                        
                        synchronized (loadingUrls) {
                            loadingUrls.remove(cacheKey);
                        }
                        
                        // 显示图片前再次确认ViewHolder仍存活，且版本未变
                        final CompactVideoHolder liveHolder = holderRef.get();
                        if (liveHolder == null) {
                            android.util.Log.i(TAG, "loadShotImage: holder recycled before set image " + cacheKey);
                            return;
                        }
                        liveHolder.getCoverImageView().post(new Runnable() {
                            @Override
                            public void run() {
                                if (versionAtStart != loadVersion.get()) {
                                    android.util.Log.i(TAG, "loadShotImage: cancelled before set image " + cacheKey);
                                    return;
                                }
                                android.util.Log.i(TAG, "loadShotImage: 图片显示 | time=" + shotTime + "s | elapsed=" + getElapsedTime() + "ms");
                                liveHolder.getCoverImageView().setImageBitmap(cropped);
                            }
                        });
                    } finally {
                        conn.disconnect();
                    }
                } catch (Exception e) {
                    android.util.Log.i(TAG, "loadShotImage error: " + e.getMessage());
                    synchronized (loadingUrls) {
                        loadingUrls.remove(cacheKey);
                    }
                }
            }
        });
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
