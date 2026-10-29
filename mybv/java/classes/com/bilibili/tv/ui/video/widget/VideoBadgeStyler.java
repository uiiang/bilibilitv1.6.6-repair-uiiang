package com.bilibili.tv.ui.video.widget;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.TextView;
import com.bilibili.tv.R;

/**
 * 视频卡片右上角 badge 的统一实现。
 *
 * 视觉规则（与左上角 index_badge 镜像一致）：
 *  - 紧贴封面右上角（位置由布局的 layout_gravity="top|right" + 零 margin 决定）；
 *  - 右上角、左下角为圆角，半径与封面圆角一致（px_12）；
 *  - 左上角、右下角为直角。
 */
public final class VideoBadgeStyler {

    private static final int DEFAULT_COLOR_OPAQUE = 0xFFFB7299;
    private static final int DEFAULT_COLOR_TRANSLUCENT = 0x99FB7299;

    private VideoBadgeStyler() {
    }

    /**
     * @param translucent true 时沿用详情页现有样式（60% 透明背景）
     */
    public static void apply(TextView badgeView, String text, String bgColor, boolean translucent) {
        if (badgeView == null) {
            return;
        }
        if (text == null || text.isEmpty()) {
            badgeView.setVisibility(View.GONE);
            return;
        }

        badgeView.setText(text);
        badgeView.setBackground(createBackground(badgeView, bgColor, translucent));
        badgeView.setVisibility(View.VISIBLE);
    }

    private static GradientDrawable createBackground(TextView badgeView, String bgColor, boolean translucent) {
        float radius = badgeView.getResources().getDimension(R.dimen.px_12);
        GradientDrawable drawable = new GradientDrawable();
        drawable.setShape(GradientDrawable.RECTANGLE);
        // setCornerRadii 顺序：左上、右上、右下、左下（每个角两个 float）
        drawable.setCornerRadii(new float[]{0f, 0f, radius, radius, 0f, 0f, radius, radius});
        drawable.setColor(resolveColor(bgColor, translucent));
        return drawable;
    }

    private static int resolveColor(String bgColor, boolean translucent) {
        int fallback = translucent ? DEFAULT_COLOR_TRANSLUCENT : DEFAULT_COLOR_OPAQUE;
        if (bgColor == null || bgColor.isEmpty()) {
            return fallback;
        }
        try {
            int color = Color.parseColor(bgColor);
            return translucent ? ((color & 0x00FFFFFF) | (0x99 << 24)) : color;
        } catch (Exception e) {
            return fallback;
        }
    }
}
