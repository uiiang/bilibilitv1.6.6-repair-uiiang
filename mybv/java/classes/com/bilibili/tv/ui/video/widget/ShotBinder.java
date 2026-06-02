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

public class ShotBinder implements VideoCardBinder {
    private static final String TAG = "ShotBinder";
    private static long showStartTime = 0;
    private static boolean deferLoading = true;
    private static Runnable onDeferClearedCallback = null;
    private VideoShot videoShot;
    private int totalDuration;
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
        holder.getIndexBadgeView().setVisibility(View.GONE);
        
        View parent = (View) holder.getTitleView().getParent();
        if (parent != null) {
            parent.setVisibility(View.GONE);
        }
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
                
                try {
                    java.net.URL url = new java.net.URL(imageUrl);
                    java.net.HttpURLConnection conn = (java.net.HttpURLConnection) url.openConnection();
                    conn.setConnectTimeout(10000);
                    conn.setReadTimeout(10000);
                    conn.connect();
                    
                    android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
                    options.inSampleSize = 2;
                    
                    Bitmap sheetBitmap = android.graphics.BitmapFactory.decodeStream(conn.getInputStream(), null, options);
                    conn.disconnect();
                    
                    if (sheetBitmap == null) {
                        android.util.Log.i(TAG, "loadShotImage: sheetBitmap is null");
                        synchronized (loadingUrls) {
                            loadingUrls.remove(cacheKey);
                        }
                        return;
                    }
                    
                    if (currentVersion != loadVersion.get()) {
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
                    
                    synchronized (loadingUrls) {
                        loadingUrls.remove(cacheKey);
                    }
                    
                    holder.getCoverImageView().post(new Runnable() {
                        @Override
                        public void run() {
                            if (currentVersion != loadVersion.get()) {
                                android.util.Log.i(TAG, "loadShotImage: cancelled before set image " + cacheKey);
                                return;
                            }
                            android.util.Log.i(TAG, "loadShotImage: 图片显示 | time=" + shotTime + "s | elapsed=" + getElapsedTime() + "ms");
                            holder.getCoverImageView().setImageBitmap(cropped);
                        }
                    });
                    
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
