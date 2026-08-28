package com.bilibili.tv.ui.video;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

import com.bilibili.tv.R;

/**
 * 通用右侧滑出半透明面板
 * <p>
 * 与收藏夹列表面板保持一致的展示效果：全屏透明窗口 + 透明蒙层（点击关闭）+ 右侧半透明面板 + 进出动画 + 返回键关闭。
 * 面板宽度按屏幕比例配置（默认40%），内容由外部通过 {@link #setContent(View)} 注入，将来可复用显示其它内容。
 */
public class RightSlidePanelDialog extends Dialog {

    private Activity activity;
    private float widthRatio;
    private int widthDp;
    private boolean useDp;
    private View content;

    public RightSlidePanelDialog(Activity activity) {
        this(activity, 0.4f);
    }

    /**
     * 宽度按屏幕宽度比例（如 0.4f 表示 40%）
     */
    public RightSlidePanelDialog(Activity activity, float widthRatio) {
        super(activity);
        this.activity = activity;
        this.widthRatio = widthRatio;
    }

    /**
     * 宽度为固定 dp 值（dpMode 传 true 区分重载）
     */
    public RightSlidePanelDialog(Activity activity, int widthDp, boolean dpMode) {
        super(activity);
        this.activity = activity;
        this.widthDp = widthDp;
        this.useDp = true;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.dialog_right_slide_panel);

        // 注入内容（setContent 在 show 之前调用，需在 onCreate 中再注入内容）
        if (content != null) {
            View contentContainer = findViewById(R.id.panel_content);
            if (contentContainer instanceof android.widget.FrameLayout) {
                ((android.widget.FrameLayout) contentContainer).addView(content);
            }
        }

        Window dialogWindow = getWindow();
        dialogWindow.setBackgroundDrawable(new ColorDrawable(0));
        // 进出动画：从右侧滑入/滑出
        dialogWindow.setWindowAnimations(R.style.RightSlidePanelAnimation);
        dialogWindow.setFlags(
                WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS | WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS | WindowManager.LayoutParams.FLAG_FULLSCREEN
        );
        WindowManager.LayoutParams params = dialogWindow.getAttributes();
        params.width = WindowManager.LayoutParams.MATCH_PARENT;
        params.height = WindowManager.LayoutParams.MATCH_PARENT;
        dialogWindow.setAttributes(params);

        View decorView = dialogWindow.getDecorView();
        decorView.setPadding(0, 0, 0, 0);

        // 面板宽度：固定 dp 或屏幕宽度比例
        View panelContainer = findViewById(R.id.panel_container);
        if (panelContainer != null) {
            android.util.DisplayMetrics dm = getContext().getResources().getDisplayMetrics();
            int width;
            if (useDp) {
                width = (int) (widthDp * dm.density);
            } else {
                width = (int) (dm.widthPixels * widthRatio);
            }
            panelContainer.getLayoutParams().width = width;
        }

        // 点击蒙层关闭
        View dimBackground = findViewById(R.id.dim_background);
        if (dimBackground != null) {
            dimBackground.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    dismiss();
                }
            });
        }
    }

    /**
     * 注入面板内容，在 onCreate 时添加到右侧面板的内容容器中
     */
    public void setContent(View content) {
        this.content = content;
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            dismiss();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }
}
