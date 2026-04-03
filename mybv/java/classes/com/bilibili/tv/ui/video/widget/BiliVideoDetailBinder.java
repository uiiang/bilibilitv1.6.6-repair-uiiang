package com.bilibili.tv.ui.video.widget;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.api.video.BiliVideoDetail;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.util.DateHelper;
import com.bilibili.tv.widget.ScalableImageView;
import bl.adh;
import bl.abd;
import bl.nv;

public class BiliVideoDetailBinder implements VideoCardBinder {
    private static final String TAG = "BiliBinder";

    @Override
    public void bind(VideoDetailActivity.f holder, Object data, int position) {
        Log.i(TAG, "bind | position=" + position + " | dataClass=" + (data == null ? "null" : data.getClass().getSimpleName()));
        if (!(data instanceof BiliVideoDetail)) {
            Log.w(TAG, "bind | 数据类型不匹配，期望BiliVideoDetail，实际=" + (data == null ? "null" : data.getClass().getName()));
            return;
        }
        BiliVideoDetail detail = (BiliVideoDetail) data;

        Log.i(TAG, "bind | mAvid=" + detail.mAvid + " | mTitle=" + detail.mTitle
                + " | author=" + detail.getAuthor() + " | hideUpIcon=" + detail.hideUpIcon
                + " | plays=" + detail.getPlays() + " | danmaku=" + detail.getDanmakus()
                + " | duration=" + detail.mDuration + " | pubdateTs=" + detail.mCreatedTimestamp
                + " | cover=" + detail.mCover);

        holder.getTitleView().setText(detail.mTitle);

        String author = detail.getAuthor();
        if (author != null) {
            holder.getUpView().setText(author);
        }
        if (detail.hideUpIcon) {
            holder.getUpView().setCompoundDrawables(null, null, null, null);
            Log.d(TAG, "bind | position=" + position + " | 隐藏UP主图标(hideUpIcon=true)");
        }

        String plays = detail.getPlays();
        if (plays != null) {
            holder.getPlayCountView().setText(adh.a(plays));
        }

        int danmaku = 0;
        try {
            danmaku = Integer.parseInt(detail.getDanmakus());
        } catch (Exception e) {
            Log.w(TAG, "bind | position=" + position + " | 弹幕数解析异常: " + e.getMessage());
        }
        if (danmaku > 0) {
            holder.getDanmakuInImageView().setText(adh.a(danmaku));
            holder.getDanmakuInImageView().setVisibility(View.VISIBLE);
        } else {
            holder.getDanmakuInImageView().setVisibility(View.GONE);
        }

        long pubdate = detail.mCreatedTimestamp;
        if (pubdate > 0) {
            holder.getPubdateView().setText(DateHelper.formatDate(pubdate));
            holder.getPubdateView().setVisibility(View.VISIBLE);
        } else {
            holder.getPubdateView().setVisibility(View.GONE);
        }

        int durationVal = detail.mDuration;
        TextView durationView = holder.getDurationView();
        if (durationVal >= 3600) {
            durationView.setText(String.format("%d:%02d:%02d",
                    durationVal / 3600, (durationVal % 3600) / 60, durationVal % 60));
        } else {
            durationView.setText(String.format("%02d:%02d", durationVal / 60, durationVal % 60));
        }

        if (detail.mCover != null) {
            nv imageLoader = nv.a();
            Context context = MainApplication.a().getApplicationContext();
            String thumbUrl = abd.get_thumb_url_c(context, detail.mCover);
            Log.d(TAG, "bind | position=" + position + " | 加载封面 | originalUrl=" + detail.mCover + " | thumbUrl=" + thumbUrl);
            imageLoader.a(thumbUrl, holder.getCoverImageView());
        } else {
            Log.w(TAG, "bind | position=" + position + " | 封面URL为空");
        }
    }

    @Override
    public long getVideoId(Object data) {
        long videoId = -1;
        if (data instanceof BiliVideoDetail) {
            videoId = ((BiliVideoDetail) data).mAvid;
        }
        Log.d(TAG, "getVideoId | dataClass=" + (data == null ? "null" : data.getClass().getSimpleName()) + " | return=" + videoId);
        return videoId;
    }

    @Override
    public String getCoverUrl(Object data) {
        String coverUrl = null;
        if (data instanceof BiliVideoDetail) {
            coverUrl = ((BiliVideoDetail) data).mCover;
        }
        Log.d(TAG, "getCoverUrl | dataClass=" + (data == null ? "null" : data.getClass().getSimpleName()) + " | return=" + coverUrl);
        return coverUrl;
    }

    @Override
    public boolean isCurrentVideo(Object data, long currentVideoId) {
        boolean isCurrent = false;
        if (data instanceof BiliVideoDetail) {
            isCurrent = ((BiliVideoDetail) data).mAvid == currentVideoId;
        }
        Log.d(TAG, "isCurrentVideo | currentVideoId=" + currentVideoId + " | dataAvid="
                + (data instanceof BiliVideoDetail ? String.valueOf(((BiliVideoDetail) data).mAvid) : "N/A")
                + " | return=" + isCurrent);
        return isCurrent;
    }

    @Override
    public boolean isCurrentSeason(Object data, int currentSeasonId) {
        Log.d(TAG, "isCurrentSeason | BiliVideoDetail不使用seasonId比较，始终返回false");
        return false;
    }
}
