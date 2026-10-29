package com.bilibili.tv.ui.video.widget;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.bilibili.tv.util.DateHelper;
import bl.adh;

/**
 * 视频卡片文字统一格式化（时长 / 播放数 / 弹幕数 / 发布日期）。
 *
 * 原先这些格式化逻辑在 15+ 个 Holder/Binder 里各复制一份，现统一在此维护。
 * hideWhenZero 用于兼容各页面原有行为：为 false 时只更新文字、不改变可见性。
 */
public final class VideoCardTexts {

    private VideoCardTexts() {
    }

    /** 秒数 -> "MM:SS" 或 "H:MM:SS"；与旧实现一致，0 秒返回 "00:00" */
    public static String formatDuration(int seconds) {
        if (seconds >= 3600) {
            return String.format("%d:%02d:%02d",
                    seconds / 3600, (seconds % 3600) / 60, seconds % 60);
        }
        return String.format("%02d:%02d", seconds / 60, seconds % 60);
    }

    /** 时长绑定；hideWhenZero=true 时 0 秒会隐藏 */
    public static void bindDuration(TextView view, int seconds, boolean hideWhenZero) {
        if (view == null) {
            return;
        }
        if (seconds <= 0 && hideWhenZero) {
            view.setVisibility(View.GONE);
            return;
        }
        view.setText(formatDuration(seconds));
        if (hideWhenZero) {
            view.setVisibility(View.VISIBLE);
        }
    }

    /** 播放数：plays 为空/为 "0" 时的处理由 hideWhenZero 控制 */
    public static void bindPlayCount(TextView view, String plays, boolean hideWhenZero) {
        if (view == null) {
            return;
        }
        if (plays != null && !"0".equals(plays)) {
            view.setText(adh.a(plays));
            if (hideWhenZero) {
                view.setVisibility(View.VISIBLE);
            }
        } else if (hideWhenZero) {
            view.setVisibility(View.GONE);
        }
    }

    /** 弹幕数：非法/为 0 时的处理由 hideWhenZero 控制 */
    public static void bindDanmaku(TextView view, String danmakus, boolean hideWhenZero) {
        if (view == null) {
            return;
        }
        int danmaku = 0;
        try {
            danmaku = Integer.parseInt(danmakus != null ? danmakus : "0");
        } catch (Exception e) {
        }
        if (danmaku > 0) {
            view.setText(adh.a(danmaku));
            view.setVisibility(View.VISIBLE);
        } else if (hideWhenZero) {
            view.setVisibility(View.GONE);
        }
    }

    /** 发布日期：优先使用接口给的文本，其次按时间戳格式化 */
    public static void bindPubDate(TextView view, long timestamp, String pubDateText, boolean hideWhenZero) {
        if (view == null) {
            return;
        }
        if (!TextUtils.isEmpty(pubDateText)) {
            view.setText(pubDateText);
            view.setVisibility(View.VISIBLE);
        } else if (timestamp > 0) {
            view.setText(DateHelper.formatDate(timestamp));
            view.setVisibility(View.VISIBLE);
        } else if (hideWhenZero) {
            view.setVisibility(View.GONE);
        }
    }
}
