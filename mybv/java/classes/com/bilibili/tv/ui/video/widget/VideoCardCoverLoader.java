package com.bilibili.tv.ui.video.widget;

import android.content.Context;
import android.text.TextUtils;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.widget.ScalableImageView;
import bl.abd;
import bl.nv;

/**
 * 视频卡片封面加载统一入口。
 */
public final class VideoCardCoverLoader {

    private VideoCardCoverLoader() {
    }

    /**
     * 使用卡片默认缩略图规则加载封面。
     */
    public static void load(Context context, ScalableImageView coverView, String coverUrl) {
        if (coverView == null || TextUtils.isEmpty(coverUrl)) {
            return;
        }
        if (context == null) {
            context = MainApplication.a().getApplicationContext();
        }
        nv.a().a(abd.get_thumb_url_c(context, coverUrl), coverView);
    }

    /**
     * 指定宽高（首页按列宽计算时使用）。
     */
    public static void loadWithSize(Context context, ScalableImageView coverView, String coverUrl, int width, int height) {
        if (coverView == null || TextUtils.isEmpty(coverUrl)) {
            return;
        }
        if (context == null) {
            context = MainApplication.a().getApplicationContext();
        }
        nv.a().a(abd.get_thumb_url_with_size(context, coverUrl, width, height), coverView);
    }
}
