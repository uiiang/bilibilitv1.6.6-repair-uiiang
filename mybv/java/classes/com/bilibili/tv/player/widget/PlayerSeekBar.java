package com.bilibili.tv.player.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;

import bl.aan;

public class PlayerSeekBar extends LinearLayout implements SeekBar.OnSeekBarChangeListener {
    private static final String TAG = "PlayerSeekBar_java";
    private TextView a;
    private SeekBar b;
    private boolean c = true;
    private SeekBar.OnSeekBarChangeListener d;

    public PlayerSeekBar(Context context) {
        super(context);
        this.c = true;
        this.d = null;
    }

    public PlayerSeekBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.c = true;
        this.d = null;
    }

    public PlayerSeekBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.c = true;
        this.d = null;
    }

    @TargetApi(21)
    public PlayerSeekBar(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.c = true;
        this.d = null;
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
}
