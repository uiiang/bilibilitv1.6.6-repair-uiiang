package com.bilibili.tv.ui.video.widget;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.widget.TextView;

/**
 * 标题旁的小标签（“充电专属”、PGC 信息标签）统一圆角样式。
 *
 * 这类标签不是卡片角标，保持四角 4dp 圆角；集中在此维护，避免多处复制。
 */
public final class VideoTagStyler {

    private static final float CORNER_RADIUS_DP = 4f;
    private static final int FALLBACK_TRANSLUCENT = 0x99FB7299;

    private VideoTagStyler() {
    }

    /** 不透明底色标签（如“充电专属”） */
    public static void applySolid(TextView view, int color) {
        if (view == null) {
            return;
        }
        view.setBackground(create(view, color));
    }

    /** 半透明底色标签（PGC 信息标签，沿用接口 color 并叠加 60% 透明度） */
    public static void applyTranslucent(TextView view, String colorString) {
        if (view == null) {
            return;
        }
        int color = FALLBACK_TRANSLUCENT;
        if (colorString != null && !colorString.isEmpty()) {
            try {
                int parsed = Color.parseColor(colorString);
                color = (parsed & 0x00FFFFFF) | (0x99 << 24);
            } catch (Exception e) {
            }
        }
        view.setBackground(create(view, color));
    }

    private static GradientDrawable create(TextView view, int color) {
        float radius = CORNER_RADIUS_DP * view.getResources().getDisplayMetrics().density;
        GradientDrawable drawable = new GradientDrawable();
        drawable.setShape(GradientDrawable.RECTANGLE);
        drawable.setCornerRadius(radius);
        drawable.setColor(color);
        return drawable;
    }
}
