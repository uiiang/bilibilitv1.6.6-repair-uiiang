package com.bilibili.tv.ui.video.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.bilibili.tv.R;

/**
 * 视频卡片图标统一配置（UP / 播放 / 弹幕）。
 *
 * 原先各页面 Holder 构造函数里各复制一份，尺寸/着色容易不一致；
 * 统一后所有卡片图标只在这里维护。
 */
public final class VideoCardIcons {

    /** 详情页/播放页紧凑卡片使用的图标尺寸 */
    public static final int SIZE_COMPACT = R.dimen.px_26;
    /** 搜索/横条卡片使用的图标尺寸 */
    public static final int SIZE_WIDE = R.dimen.px_34;

    private VideoCardIcons() {
    }

    /**
     * 一次性配置 UP / 播放 / 弹幕三个图标，任一 view 传 null 表示该卡片没有这个图标。
     */
    public static void apply(Context context, TextView upView, TextView playView,
                             TextView danmakuView, int sizeDimenRes, int colorRes) {
        if (context == null) {
            return;
        }
        int size = context.getResources().getDimensionPixelSize(sizeDimenRes);
        int color = context.getResources().getColor(colorRes);
        setCompoundDrawable(context, upView, R.drawable.ic_video_info_up, size, color);
        setCompoundDrawable(context, playView, R.drawable.ic_video_info_play, size, color);
        setCompoundDrawable(context, danmakuView, R.drawable.ic_video_info_danmaku, size, color);
    }

    public static void setUp(TextView view, int sizeDimenRes, int colorRes) {
        if (view == null) {
            return;
        }
        setUp(view.getContext(), view, sizeDimenRes, colorRes);
    }

    public static void setPlay(TextView view, int sizeDimenRes, int colorRes) {
        if (view == null) {
            return;
        }
        setPlay(view.getContext(), view, sizeDimenRes, colorRes);
    }

    public static void setDanmaku(TextView view, int sizeDimenRes, int colorRes) {
        if (view == null) {
            return;
        }
        setDanmaku(view.getContext(), view, sizeDimenRes, colorRes);
    }

    public static void setUp(Context context, TextView view, int sizeDimenRes, int colorRes) {
        if (context == null) {
            return;
        }
        setCompoundDrawable(context, view, R.drawable.ic_video_info_up,
                context.getResources().getDimensionPixelSize(sizeDimenRes),
                context.getResources().getColor(colorRes));
    }

    public static void setPlay(Context context, TextView view, int sizeDimenRes, int colorRes) {
        if (context == null) {
            return;
        }
        setCompoundDrawable(context, view, R.drawable.ic_video_info_play,
                context.getResources().getDimensionPixelSize(sizeDimenRes),
                context.getResources().getColor(colorRes));
    }

    public static void setDanmaku(Context context, TextView view, int sizeDimenRes, int colorRes) {
        if (context == null) {
            return;
        }
        setCompoundDrawable(context, view, R.drawable.ic_video_info_danmaku,
                context.getResources().getDimensionPixelSize(sizeDimenRes),
                context.getResources().getColor(colorRes));
    }

    private static void setCompoundDrawable(Context context, TextView view, int drawableRes, int size, int color) {
        if (view == null) {
            return;
        }
        Drawable drawable = context.getResources().getDrawable(drawableRes);
        drawable.setBounds(0, 0, size, size);
        drawable.setColorFilter(color, PorterDuff.Mode.MULTIPLY);
        view.setCompoundDrawables(drawable, null, null, null);
    }

    /** 清除图标（用于 UP 名称隐藏时和普通卡片的动态场景） */
    public static void clear(TextView view) {
        if (view != null) {
            view.setCompoundDrawables(null, null, null, null);
        }
    }

    public static boolean isEmpty(CharSequence text) {
        return TextUtils.isEmpty(text);
    }

    public static void setVisible(TextView view, boolean visible) {
        if (view != null) {
            view.setVisibility(visible ? View.VISIBLE : View.GONE);
        }
    }
}
