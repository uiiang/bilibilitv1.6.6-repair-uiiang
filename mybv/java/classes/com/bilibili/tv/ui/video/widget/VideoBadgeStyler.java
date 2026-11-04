package com.bilibili.tv.ui.video.widget;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bilibili.tv.R;

/**
 * 视频卡片封面 badge 的统一实现。
 *
 * 视觉规则（右上角与左上角镜像）：
 *  - 右上角：紧贴封面右上角，右上角、左下角为圆角，半径与封面圆角一致（px_12）；
 *  - 左上角：紧贴封面左上角，左上角、右下角为圆角，其余为直角。
 */
public final class VideoBadgeStyler {

    private static final int DEFAULT_COLOR_OPAQUE = 0xFFFB7299;
    private static final int DEFAULT_COLOR_TRANSLUCENT = 0x99FB7299;

    private VideoBadgeStyler() {
    }

    /**
     * 右上角 badge。
     *
     * @param translucent true 时沿用详情页现有样式（60% 透明背景）
     */
    public static void apply(TextView badgeView, String text, String bgColor, boolean translucent) {
        applyInternal(badgeView, text, bgColor, translucent, false);
    }

    /**
     * 左上角 badge（与右上角镜像：左上、右下为圆角）。
     */
    public static void applyLeft(TextView badgeView, String text, String bgColor, boolean translucent) {
        applyInternal(badgeView, text, bgColor, translucent, true);
    }

    /** 获取已创建的左上角角标（未创建返回 null） */
    public static TextView findLeftBadge(TextView rightBadge) {
        if (rightBadge == null) {
            return null;
        }
        Object tag = rightBadge.getTag();
        return tag instanceof TextView ? (TextView) tag : null;
    }

    /**
     * 获取（懒创建）封面左上角文本角标。
     * 卡片布局只有一个右上角文本角标时，用它的字号/颜色/内边距创建镜像的左上角角标，
     * 添加进封面所在的 FrameLayout，并缓存在 rightBadge 的 tag 上随 Holder 复用。
     *
     * @param rightBadge 布局中已有的右上角文本角标，用作样式模板与缓存键
     * @param cover      封面 View，其父容器需为 FrameLayout
     */
    public static TextView ensureLeftBadge(TextView rightBadge, View cover) {
        TextView cached = findLeftBadge(rightBadge);
        if (cached != null) {
            return cached;
        }
        if (rightBadge == null) {
            return null;
        }
        ViewParent parent = cover != null ? cover.getParent() : null;
        if (!(parent instanceof FrameLayout)) {
            return null;
        }

        TextView badge = new TextView(rightBadge.getContext());
        badge.setTextSize(TypedValue.COMPLEX_UNIT_PX, rightBadge.getTextSize());
        badge.setTextColor(rightBadge.getCurrentTextColor());
        badge.setGravity(rightBadge.getGravity());
        badge.setSingleLine(true);
        badge.setFocusable(false);
        badge.setPadding(rightBadge.getPaddingLeft(), rightBadge.getPaddingTop(),
                rightBadge.getPaddingRight(), rightBadge.getPaddingBottom());

        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.gravity = Gravity.TOP | Gravity.LEFT;
        ((FrameLayout) parent).addView(badge, lp);
        rightBadge.setTag(badge);
        return badge;
    }

    private static void applyInternal(TextView badgeView, String text, String bgColor,
                                      boolean translucent, boolean alignLeft) {
        if (badgeView == null) {
            return;
        }
        if (text == null || text.isEmpty()) {
            badgeView.setVisibility(View.GONE);
            return;
        }

        badgeView.setText(text);
        badgeView.setBackground(createBackground(badgeView, bgColor, translucent, alignLeft));
        badgeView.setVisibility(View.VISIBLE);
    }

    private static GradientDrawable createBackground(TextView badgeView, String bgColor,
                                                     boolean translucent, boolean alignLeft) {
        float radius = badgeView.getResources().getDimension(R.dimen.px_12);
        GradientDrawable drawable = new GradientDrawable();
        drawable.setShape(GradientDrawable.RECTANGLE);
        // setCornerRadii 顺序：左上、右上、右下、左下（每个角两个 float）
        if (alignLeft) {
            drawable.setCornerRadii(new float[]{radius, radius, 0f, 0f, radius, radius, 0f, 0f});
        } else {
            drawable.setCornerRadii(new float[]{0f, 0f, radius, radius, 0f, 0f, radius, radius});
        }
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
