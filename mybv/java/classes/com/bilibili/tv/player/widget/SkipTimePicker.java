package com.bilibili.tv.player.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.bilibili.tv.R;

public class SkipTimePicker extends LinearLayout {

    private TextView timeDisplay;
    private long timeMs = 0;
    private long maxTimeMs = 23 * 3600 * 1000 + 59 * 60 * 1000 + 59 * 1000;

    private static final int STEP_SHORT = 5000;

    private OnConfirmListener onConfirmListener;

    public interface OnConfirmListener {
        long getCurrentPosition();
        void onClear();
    }

    public SkipTimePicker(Context context) {
        super(context);
        init(context);
    }

    public SkipTimePicker(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public SkipTimePicker(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    private void init(Context context) {
        Log.i("SkipTimePicker", "init() called");
        inflate(context, R.layout.item_skip_time_picker, this);
        timeDisplay = (TextView) findViewById(R.id.time_display);
        Log.i("SkipTimePicker", "timeDisplay: " + timeDisplay);
        updateTimeDisplay();
    }

    public void setOnConfirmListener(OnConfirmListener listener) {
        this.onConfirmListener = listener;
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        switch (keyCode) {
            case KeyEvent.KEYCODE_DPAD_CENTER:
            case KeyEvent.KEYCODE_ENTER:
                event.startTracking();
                return true;
            case KeyEvent.KEYCODE_DPAD_LEFT:
                adjustTime(-STEP_SHORT);
                return true;
            case KeyEvent.KEYCODE_DPAD_RIGHT:
                adjustTime(STEP_SHORT);
                return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER) {
            if ((event.getFlags() & KeyEvent.FLAG_CANCELED_LONG_PRESS) != 0) {
                return true;
            }
            if (event.isLongPress()) {
                if (onConfirmListener != null) {
                    onConfirmListener.onClear();
                }
                clear();
            } else {
                if (onConfirmListener != null) {
                    long currentPos = onConfirmListener.getCurrentPosition();
                    setTime(currentPos);
                }
            }
            return true;
        }
        return super.onKeyUp(keyCode, event);
    }

    @Override
    public boolean onKeyLongPress(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER) {
            return true;
        }
        return super.onKeyLongPress(keyCode, event);
    }

    public void adjustTime(int deltaMs) {
        timeMs += deltaMs;
        if (timeMs < 0) timeMs = 0;
        if (timeMs > maxTimeMs) timeMs = maxTimeMs;
        updateTimeDisplay();
    }

    public void setTime(long ms) {
        timeMs = Math.max(0, Math.min(ms, maxTimeMs));
        updateTimeDisplay();
    }

    public long getTime() {
        return timeMs;
    }

    public void clear() {
        timeMs = 0;
        updateTimeDisplay();
    }

    private void updateTimeDisplay() {
        if (timeDisplay != null) {
            timeDisplay.setText(formatTime(timeMs));
        }
    }

    private String formatTime(long ms) {
        long totalSeconds = ms / 1000;
        long hours = totalSeconds / 3600;
        long minutes = (totalSeconds % 3600) / 60;
        long seconds = totalSeconds % 60;
        return String.format("%02d:%02d:%02d", hours, minutes, seconds);
    }
}
