package com.bilibili.tv.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.bilibili.tv.R;

import bl.afy;
import bl.afz;

public class ProgressPlayButton extends LinearLayout implements afz {

    private afy focusHelper;
    private Paint progressPaint;
    private Paint bgPaint;
    private float progressRatio = 0f;
    private int progressColor;
    private int bgColor;
    private RectF rectF;
    private float cornerRadius;

    public ProgressPlayButton(Context context) {
        super(context);
        init(context);
    }

    public ProgressPlayButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public ProgressPlayButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    private void init(Context context) {
        setWillNotDraw(false);
        
        focusHelper = new afy(context, this);
        
        progressColor = context.getResources().getColor(R.color.play_progress_pink);
        bgColor = context.getResources().getColor(R.color.play_btn_bg);
        
        progressPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        progressPaint.setColor(progressColor);
        progressPaint.setStyle(Paint.Style.FILL);
        
        bgPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        bgPaint.setColor(bgColor);
        bgPaint.setStyle(Paint.Style.FILL);
        
        rectF = new RectF();
        cornerRadius = context.getResources().getDimensionPixelSize(R.dimen.px_10);
        
        setBackgroundResource(R.drawable.background_white_rect);
    }

    public void setProgress(int progress, int duration) {
        if (duration > 0) {
            this.progressRatio = (float) progress / duration;
        } else {
            this.progressRatio = 0f;
        }
        invalidate();
    }

    public void setProgressRatio(float ratio) {
        this.progressRatio = Math.max(0f, Math.min(1f, ratio));
        invalidate();
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        int width = getMeasuredWidth();
        int height = getMeasuredHeight();
        
        if (width > 0 && height > 0) {
            rectF.set(0, 0, width, height);
            
            canvas.drawRoundRect(rectF, cornerRadius, cornerRadius, bgPaint);
            
            if (progressRatio > 0) {
                int progressWidth = (int) (width * progressRatio);
                rectF.set(0, 0, progressWidth, height);
                canvas.drawRoundRect(rectF, cornerRadius, cornerRadius, progressPaint);
            }
        }
        
        focusHelper.a(canvas, 0, 0, getMeasuredWidth(), getMeasuredHeight());
        
        super.dispatchDraw(canvas);
    }

    @Override
    public void setUpDrawable(int resId) {
        focusHelper.setUpDrawable(resId);
    }

    @Override
    public void setUpEnabled(boolean enabled) {
        focusHelper.setUpEnabled(enabled);
    }

    public void setUpDrawable(Drawable drawable) {
        focusHelper.a(drawable);
    }
}
