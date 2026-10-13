package bl;

import android.os.Handler;
import android.view.KeyEvent;

/**
 * 统一处理「更多操作=确定键」模式下，长按[确定]键触发页面级动作（删除/排序/筛选）的逻辑。
 *
 * 用法：在 Activity.dispatchKeyEvent 顶部，当焦点位于目标区域且处于 OK 模式时调用
 * {@link #handle(KeyEvent, Trigger)}；长按到达阈值后执行 Trigger，并吞掉随后的 ACTION_UP，
 * 避免误触 focused item 的打开。短按(未达阈值)不拦截，正常交给上层处理。
 */
public class MoreActionKeyHandler {
    public interface Trigger {
        void run();
    }

    private final Handler handler = new Handler();
    private final long delayMs;
    private Trigger trigger;
    private Runnable pending;
    private boolean fired = false;

    public MoreActionKeyHandler(long delayMs) {
        this.delayMs = delayMs;
    }

    public MoreActionKeyHandler() {
        this(500L);
    }

    /**
     * 在 dispatchKeyEvent 中调用。返回 true 表示本事件已被消费（调用方应直接 return true）。
     */
    public boolean handle(KeyEvent event, Trigger trigger) {
        int action = event.getAction();
        int keyCode = event.getKeyCode();
        boolean isOk = (keyCode == KeyEvent.KEYCODE_DPAD_CENTER
                || keyCode == KeyEvent.KEYCODE_ENTER);
        if (!isOk) {
            return false;
        }
        if (action == KeyEvent.ACTION_DOWN) {
            if (event.getRepeatCount() == 0) {
                this.trigger = trigger;
                this.fired = false;
                this.pending = new Runnable() {
                    @Override
                    public void run() {
                        fired = true;
                        if (MoreActionKeyHandler.this.trigger != null) {
                            MoreActionKeyHandler.this.trigger.run();
                        }
                    }
                };
                handler.postDelayed(pending, delayMs);
            }
            // 不消费 DOWN，让焦点/选中等默认行为照常进行
            return false;
        } else if (action == KeyEvent.ACTION_UP) {
            if (pending != null) {
                handler.removeCallbacks(pending);
                pending = null;
            }
            if (fired) {
                fired = false;
                // 长按已触发动作，吞掉 UP 防止 focused item 被打开
                return true;
            }
            return false;
        }
        return false;
    }

    public void cancel() {
        if (pending != null) {
            handler.removeCallbacks(pending);
            pending = null;
        }
        fired = false;
    }
}
