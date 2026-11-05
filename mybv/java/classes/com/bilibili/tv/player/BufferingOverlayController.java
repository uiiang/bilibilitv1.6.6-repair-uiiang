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
    /**
     * 弱引用持有转圈 View。PlayerActivityUrlRefreshHelper 的静态 controller 虽有
     * destroy() 清引用，但该方法全库没有调用点；强引用会顺着 View -> Activity
     * 泄漏整个播放页。改弱引用后不依赖销毁钩子，也避开「新页面先创建、
     * 旧页面后销毁」时把新 controller 一起置空的时序竞态。
     * 页面存活期间 View 树本身强引用该 View，功能不受影响。
     */
    private java.lang.ref.WeakReference<PlayerBufferingView> bufferingViewRef;
    private volatile boolean isBuffering = false;
    private volatile long bufferingStartedAtMs = 0L;
    private volatile long overlaySuppressedUntilMs = 0L;
    private volatile long overlayEligibleAtMs = 0L;
    /**
     * 换集专用守卫。不能复用 overlaySuppressedUntilMs：
     * 旧播放器释放时 onBufferingEnded() -> reset() 会把后者清零，而这次 BUFFERING_END
     * 恰好发生在换集起点之后（实测 31.910 SUPPRESS -> 32.001 BUFFERING_END/RESET
     * -> 33.045 SHOW），导致抑制失效、换集窗口仍闪转圈。
     */
    private volatile long episodeSwitchGuardUntilMs = 0L;
    private Runnable showRunnable;

    public BufferingOverlayController() {
        this.handler = new Handler(Looper.getMainLooper());
    }

    public void setBufferingView(PlayerBufferingView view) {
        this.bufferingViewRef = view == null
                ? null : new java.lang.ref.WeakReference<PlayerBufferingView>(view);
    }

    private PlayerBufferingView getBufferingView() {
        return bufferingViewRef == null ? null : bufferingViewRef.get();
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
        if (isEpisodeSwitchGuarded()) {
            return true;
        }
        if (overlaySuppressedUntilMs <= 0L) {
            return false;
        }
        long nowMs = SystemClock.elapsedRealtime();
        return nowMs < overlaySuppressedUntilMs;
    }

    /**
     * 换集起点调用：在起播完成前强制隐藏转圈。
     * durationMs 是兜底超时，正常情况下由 onPrepared 侧调用 endEpisodeSwitchGuard() 提前解除。
     */
    public void beginEpisodeSwitchGuard(long durationMs) {
        long untilMs = SystemClock.elapsedRealtime() + Math.max(0L, durationMs);
        if (untilMs > episodeSwitchGuardUntilMs) {
            episodeSwitchGuardUntilMs = untilMs;
        }
        handler.removeCallbacks(showRunnable);
        showRunnable = null;
        hideOverlay();
        Log.i(TAG, "[EP_GUARD] Episode switch guard until " + episodeSwitchGuardUntilMs
                + "ms (duration=" + durationMs + "ms)");
    }

    /** onPrepared 时调用：起播完成，立即恢复正常的 1s 延迟提示逻辑。 */
    public void endEpisodeSwitchGuard() {
        if (episodeSwitchGuardUntilMs <= 0L) {
            return;
        }
        episodeSwitchGuardUntilMs = 0L;
        overlayEligibleAtMs = 0L;
        bufferingStartedAtMs = 0L;
        Log.i(TAG, "[EP_GUARD_END] Guard cleared, normal buffering hints restored");
    }

    private boolean isEpisodeSwitchGuarded() {
        long untilMs = episodeSwitchGuardUntilMs;
        if (untilMs <= 0L) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < untilMs) {
            return true;
        }
        episodeSwitchGuardUntilMs = 0L;
        return false;
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
        if (isEpisodeSwitchGuarded()) {
            Log.i(TAG, "[UPDATE] Episode switch guard active, keeping overlay hidden");
            handler.removeCallbacks(showRunnable);
            showRunnable = null;
            hideOverlay();
            return;
        }
        if (getBufferingView() == null) {
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
        PlayerBufferingView view = getBufferingView();
        if (view != null && view.getVisibility() != View.VISIBLE) {
            Log.i(TAG, "[SHOW] Showing buffering overlay");
            view.setText(R.string.buffering);
            view.setVisibility(View.VISIBLE);
        }
    }

    private void hideOverlay() {
        PlayerBufferingView view = getBufferingView();
        if (view != null && view.getVisibility() != View.GONE) {
            Log.i(TAG, "[HIDE] Hiding buffering overlay");
            view.setVisibility(View.GONE);
        }
    }
}
