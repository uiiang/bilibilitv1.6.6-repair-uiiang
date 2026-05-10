package com.bilibili.tv.player;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;

import com.bilibili.tv.R;
import com.bilibili.tv.player.widget.PlayerBufferingView;

public class BufferingOverlayController {
    private static final String TAG = "BufferingOverlayCtrl";
    private static final long DEFAULT_SHOW_DELAY_MS = 1000L;

    private final Handler handler;
    private PlayerBufferingView bufferingView;
    private volatile boolean isBuffering = false;
    private volatile long bufferingStartedAtMs = 0L;
    private volatile long overlaySuppressedUntilMs = 0L;
    private volatile long overlayEligibleAtMs = 0L;
    private Runnable showRunnable;

    public BufferingOverlayController() {
        this.handler = new Handler(Looper.getMainLooper());
    }

    public void setBufferingView(PlayerBufferingView view) {
        this.bufferingView = view;
    }

    public void reset() {
        Log.i(TAG, "[RESET] Resetting buffering overlay state");
        handler.removeCallbacks(showRunnable);
        showRunnable = null;
        isBuffering = false;
        bufferingStartedAtMs = 0L;
        overlaySuppressedUntilMs = 0L;
        overlayEligibleAtMs = 0L;
        hideOverlay();
    }

    public void suppressFor(long durationMs, long graceMs) {
        long nowMs = SystemClock.elapsedRealtime();
        long suppressedUntil = nowMs + Math.max(0, durationMs) + Math.max(0, graceMs);
        if (suppressedUntil > overlaySuppressedUntilMs) {
            overlaySuppressedUntilMs = suppressedUntil;
            Log.i(TAG, "[SUPPRESS] Overlay suppressed until " + suppressedUntil + "ms (duration=" + durationMs + "ms, grace=" + graceMs + "ms)");
        }
        if (overlayEligibleAtMs < overlaySuppressedUntilMs) {
            overlayEligibleAtMs = overlaySuppressedUntilMs;
        }
    }

    public void clearSuppression() {
        Log.i(TAG, "[CLEAR_SUPPRESS] Clearing overlay suppression");
        overlaySuppressedUntilMs = 0L;
        overlayEligibleAtMs = 0L;
    }

    public boolean isSuppressed() {
        if (overlaySuppressedUntilMs <= 0L) {
            return false;
        }
        long nowMs = SystemClock.elapsedRealtime();
        return nowMs < overlaySuppressedUntilMs;
    }

    public void onBufferingStarted() {
        Log.i(TAG, "[BUFFERING_START] Buffering started");
        long nowMs = SystemClock.elapsedRealtime();
        if (bufferingStartedAtMs <= 0L) {
            bufferingStartedAtMs = nowMs;
        }
        isBuffering = true;
        update();
    }

    public void onBufferingEnded() {
        Log.i(TAG, "[BUFFERING_END] Buffering ended");
        isBuffering = false;
        reset();
    }

    private void update() {
        if (bufferingView == null) {
            Log.w(TAG, "[UPDATE] BufferingView is null, skipping");
            return;
        }

        long nowMs = SystemClock.elapsedRealtime();
        long suppressedUntil = overlaySuppressedUntilMs;

        if (suppressedUntil > 0L && nowMs < suppressedUntil) {
            Log.i(TAG, "[UPDATE] Overlay is suppressed, now=" + nowMs + ", suppressedUntil=" + suppressedUntil);
            handler.removeCallbacks(showRunnable);
            showRunnable = null;
            hideOverlay();
            if (isBuffering && overlayEligibleAtMs < suppressedUntil) {
                overlayEligibleAtMs = suppressedUntil;
            }
            return;
        }

        if (!isBuffering) {
            Log.i(TAG, "[UPDATE] Not buffering, hiding overlay");
            reset();
            return;
        }

        if (suppressedUntil > 0L) {
            overlaySuppressedUntilMs = 0L;
        }

        if (bufferingStartedAtMs <= 0L) {
            bufferingStartedAtMs = nowMs;
        }

        long bufferingStartedAt = Math.max(
            bufferingStartedAtMs,
            overlayEligibleAtMs > 0L ? overlayEligibleAtMs : 0L
        );
        long remainingDelayMs = DEFAULT_SHOW_DELAY_MS - (nowMs - bufferingStartedAt);

        Log.i(TAG, "[UPDATE] bufferingStartedAt=" + bufferingStartedAt + 
                   ", remainingDelay=" + remainingDelayMs + "ms");

        if (remainingDelayMs > 0L) {
            hideOverlay();
            scheduleDelayedShow(remainingDelayMs);
            return;
        }

        handler.removeCallbacks(showRunnable);
        showRunnable = null;
        showOverlay();
    }

    private void scheduleDelayedShow(long delayMs) {
        if (showRunnable != null) {
            return;
        }

        Log.i(TAG, "[SCHEDULE] Scheduling show in " + delayMs + "ms");
        showRunnable = new Runnable() {
            @Override
            public void run() {
                showRunnable = null;
                update();
            }
        };
        handler.postDelayed(showRunnable, Math.max(1L, delayMs));
    }

    private void showOverlay() {
        if (bufferingView != null && bufferingView.getVisibility() != View.VISIBLE) {
            Log.i(TAG, "[SHOW] Showing buffering overlay");
            bufferingView.setText(R.string.buffering);
            bufferingView.setVisibility(View.VISIBLE);
        }
    }

    private void hideOverlay() {
        if (bufferingView != null && bufferingView.getVisibility() != View.GONE) {
            Log.i(TAG, "[HIDE] Hiding buffering overlay");
            bufferingView.setVisibility(View.GONE);
        }
    }
}
