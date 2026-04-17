package com.bilibili.tv.player.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.LruCache;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;

import bl.aan;
import com.bilibili.tv.api.video.VideoShot;

public class PlayerSeekBar extends LinearLayout implements SeekBar.OnSeekBarChangeListener {
    private static final String TAG = "PlayerSeekBar_java";
    private TextView a;
    private SeekBar b;
    private boolean c = true;
    private SeekBar.OnSeekBarChangeListener d;
    private VideoShot videoShot;
    private int duration;
    private LruCache<String, Bitmap> snapshotCache;
    private static final int PREVIEW_WIDTH = 320;
    private static final int PREVIEW_HEIGHT = 180;

    public PlayerSeekBar(Context context) {
        super(context);
        this.c = true;
        this.d = null;
        initSnapshotCache();
    }

    public PlayerSeekBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.c = true;
        this.d = null;
        initSnapshotCache();
    }

    public PlayerSeekBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.c = true;
        this.d = null;
        initSnapshotCache();
    }

    @TargetApi(21)
    public PlayerSeekBar(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.c = true;
        this.d = null;
        initSnapshotCache();
    }
    
    private void initSnapshotCache() {
        snapshotCache = new LruCache<String, Bitmap>(5 * 1024 * 1024) {
            @Override
            protected int sizeOf(String key, Bitmap value) {
                return value.getByteCount();
            }
        };
    }

    private void a() {
        if (this.a != null) {
            return;
        }
        this.a = (TextView) findViewById(0x7f08012c);
        this.b = (SeekBar) findViewById(0x7f080109);
        if (this.a == null || this.b == null) {
            return;
        }
        this.a.post(new Runnable() {
            @Override
            public void run() {
                PlayerSeekBar.this.a(PlayerSeekBar.this.b.getProgress());
            }
        });
        this.b.setOnSeekBarChangeListener(this);
    }

    private void a(int progress) {
        if (this.a != null) {
            this.a.setText(aan.a((long) progress));
        }
    }

    private void b(int progress) {
        if (!this.c) {
            this.a.setVisibility(View.GONE);
            return;
        }
        this.a.setVisibility(View.VISIBLE);
        int textViewWidth = this.a.getWidth();
        float progressRatio = (float) progress / (float) this.b.getMax();
        int seekBarWidth = this.b.getWidth() - this.b.getPaddingLeft() - this.b.getPaddingRight();
        float leftPosition = (float) (this.b.getLeft() + this.b.getPaddingLeft()) + progressRatio * (float) seekBarWidth - (float) (textViewWidth / 2);
        leftPosition -= (float) getPaddingLeft();
        int leftMargin = (int) leftPosition;
        int maxLeftMargin = getRight() - getPaddingRight() - textViewWidth;
        if (leftMargin < 0) {
            leftMargin = 0;
        } else if (leftMargin > maxLeftMargin) {
            leftMargin = maxLeftMargin;
        }
        LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) this.a.getLayoutParams();
        if (params == null) {
            params = new LinearLayout.LayoutParams(-2, -2);
        }
        params.leftMargin = leftMargin;
        this.a.setLayoutParams(params);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        a();
    }

    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
        Log.i(TAG, "onProgressChanged: progress=" + progress + ", fromUser=" + fromUser);
        
        if (fromUser) {
            this.c = true;
        }
        a(progress);
        b(progress);
        
        if (this.d != null) {
            this.d.onProgressChanged(seekBar, progress, fromUser);
        }
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        if (this.d != null) {
            this.d.onStartTrackingTouch(seekBar);
        }
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        if (this.d != null) {
            this.d.onStopTrackingTouch(seekBar);
        }
    }

    protected void onVisibilityChanged(View changedView, int visibility) {
        this.a.setVisibility(this.c ? View.VISIBLE : View.GONE);
        super.onVisibilityChanged(changedView, visibility);
    }

    public void setOnSeekBarChangeListener(SeekBar.OnSeekBarChangeListener listener) {
        this.d = listener;
    }

    public void setMax(int max) {
        if (this.b != null) {
            this.b.setMax(max);
        }
    }

    public void a(int progress, boolean z) {
        if (this.b != null) {
            this.b.setProgress(progress);
        }
        this.c = true;
    }

    public void setProgress(int progress) {
        Log.i(TAG, "setProgress called with progress=" + progress);
        a(progress, false);
    }

    public void setSecondaryProgress(int secondaryProgress) {
        Log.i(TAG, "setSecondaryProgress called with secondaryProgress=" + secondaryProgress);
        if (this.b != null) {
            this.b.setSecondaryProgress(secondaryProgress);
        }
    }
    
    public void setVideoShot(VideoShot shot) {
        Log.i(TAG, "setVideoShot: shot=" + shot);
        this.videoShot = shot;
        if (shot != null) {
            Log.i(TAG, "setVideoShot: image=" + shot.getImage() + ", index=" + shot.getIndex());
        }
    }
    
    public VideoShot getVideoShot() {
        return this.videoShot;
    }
    
    public void setDuration(int duration) {
        Log.i(TAG, "setDuration: duration=" + duration);
        this.duration = duration;
    }
    
    public int getDuration() {
        return this.duration;
    }
    
    public Bitmap getSnapshot(int timeSeconds) {
        if (videoShot == null || videoShot.getIndex() == null || videoShot.getImage() == null || videoShot.getImage().isEmpty()) {
            return null;
        }
        
        final int snapshotIndex = videoShot.getSnapshotIndex(timeSeconds);
        if (snapshotIndex < 0) {
            return null;
        }
        
        final String imageUrl = videoShot.getImageUrl(snapshotIndex);
        if (imageUrl == null) {
            return null;
        }
        
        final String cacheKey = imageUrl + "_" + snapshotIndex;
        return snapshotCache.get(cacheKey);
    }
    
    public void loadSnapshotAsync(final int timeSeconds, final SnapshotLoadCallback callback) {
        if (videoShot == null || videoShot.getIndex() == null || videoShot.getImage() == null || videoShot.getImage().isEmpty()) {
            callback.onLoadFailed();
            return;
        }
        
        final int snapshotIndex = videoShot.getSnapshotIndex(timeSeconds);
        if (snapshotIndex < 0) {
            callback.onLoadFailed();
            return;
        }
        
        final String imageUrl = videoShot.getImageUrl(snapshotIndex);
        if (imageUrl == null) {
            callback.onLoadFailed();
            return;
        }
        
        final String cacheKey = imageUrl + "_" + snapshotIndex;
        
        Bitmap cached = snapshotCache.get(cacheKey);
        if (cached != null) {
            callback.onLoadSuccess(cached);
            return;
        }
        
        new Thread(new Runnable() {
            @Override
            public void run() {
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
                        post(new Runnable() {
                            @Override
                            public void run() {
                                callback.onLoadFailed();
                            }
                        });
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
                    
                    final Bitmap scaled = Bitmap.createScaledBitmap(
                        cropped, PREVIEW_WIDTH, PREVIEW_HEIGHT, true
                    );
                    
                    snapshotCache.put(cacheKey, scaled);
                    
                    post(new Runnable() {
                        @Override
                        public void run() {
                            callback.onLoadSuccess(scaled);
                        }
                    });
                    
                    if (cropped != scaled) {
                        cropped.recycle();
                    }
                } catch (Exception e) {
                    Log.i(TAG, "loadSnapshotAsync error: " + e.getMessage());
                    post(new Runnable() {
                        @Override
                        public void run() {
                            callback.onLoadFailed();
                        }
                    });
                }
            }
        }).start();
    }
    
    public interface SnapshotLoadCallback {
        void onLoadSuccess(Bitmap bitmap);
        void onLoadFailed();
    }
    
    public void clearCache() {
        if (snapshotCache != null) {
            snapshotCache.evictAll();
        }
    }
}
