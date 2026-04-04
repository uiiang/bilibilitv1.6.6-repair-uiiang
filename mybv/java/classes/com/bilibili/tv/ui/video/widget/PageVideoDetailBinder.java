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

public class PageVideoDetailBinder implements VideoCardBinder {
    private static final String TAG = "PageBinder";
    private boolean isPgcMode;

    public PageVideoDetailBinder(boolean isPgcMode) {
        this.isPgcMode = isPgcMode;
    }

    @Override
    public void bind(VideoDetailActivity.f holder, Object data, int position) {
        // Log.i(TAG, "bind | position=" + position + " | isPgcMode=" + isPgcMode + " | dataClass=" + (data == null ? "null" : data.getClass().getSimpleName()));
        if (!(data instanceof BiliVideoDetail)) {
            // Log.w(TAG, "bind | 数据类型不匹配，期望BiliVideoDetail");
            return;
        }
        BiliVideoDetail detail = (BiliVideoDetail) data;

        // Log.i(TAG, "bind | mAvid=" + detail.mAvid + " | mTitle=" + detail.mTitle
        //         + " | duration=" + detail.mDuration + " | pubdateTs=" + detail.mCreatedTimestamp
        //         + " | cover=" + detail.mCover + " | vtText=" + detail.vtText);

        holder.getTitleView().setText(detail.mTitle);

        if (isPgcMode) {
            if (detail.vtText != null && !detail.vtText.isEmpty()) {
                holder.getUpView().setText(detail.vtText);
                holder.getUpView().setVisibility(View.VISIBLE);
            } else {
                holder.getUpView().setVisibility(View.GONE);
            }
        } else {
            holder.getUpView().setVisibility(View.GONE);
        }
        holder.getUpView().setCompoundDrawables(null, null, null, null);

        if (isPgcMode) {
            String plays = detail.getPlays();
            if (plays != null && !"0".equals(plays)) {
                holder.getPlayCountView().setText(adh.a(plays));
                holder.getPlayCountView().setVisibility(View.VISIBLE);
            } else {
                holder.getPlayCountView().setVisibility(View.GONE);
            }

            int danmaku = 0;
            try {
                danmaku = Integer.parseInt(detail.getDanmakus());
            } catch (Exception e) {}
            if (danmaku > 0) {
                holder.getDanmakuInImageView().setText(adh.a(danmaku));
                holder.getDanmakuInImageView().setVisibility(View.VISIBLE);
            } else {
                holder.getDanmakuInImageView().setVisibility(View.GONE);
            }
        } else {
            holder.getPlayCountView().setVisibility(View.GONE);
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
        durationView.setVisibility(View.VISIBLE);

        String coverUrl = detail.mCover;
        if (coverUrl != null && !coverUrl.isEmpty()) {
            nv imageLoader = nv.a();
            Context context = MainApplication.a().getApplicationContext();
            String thumbUrl = abd.get_thumb_url_c(context, coverUrl);
            Log.d(TAG, "bind | position=" + position + " | 加载封面 | originalUrl=" + coverUrl + " | thumbUrl=" + thumbUrl);
            imageLoader.a(thumbUrl, holder.getCoverImageView());
        } else {
            // Log.w(TAG, "bind | position=" + position + " | 封面URL为空");
        }
    }

    @Override
    public long getVideoId(Object data) {
        long videoId = -1;
        if (data instanceof BiliVideoDetail) {
            videoId = ((BiliVideoDetail) data).mAvid;
        }
        // Log.d(TAG, "getVideoId | return=" + videoId);
        return videoId;
    }

    @Override
    public String getCoverUrl(Object data) {
        String coverUrl = null;
        if (data instanceof BiliVideoDetail) {
            coverUrl = ((BiliVideoDetail) data).mCover;
        }
        return coverUrl;
    }

    @Override
    public boolean isCurrentVideo(Object data, long currentVideoId) {
        boolean isCurrent = false;
        if (data instanceof BiliVideoDetail) {
            isCurrent = ((BiliVideoDetail) data).mAvid == currentVideoId;
        }
        // Log.d(TAG, "isCurrentVideo | currentVideoId=" + currentVideoId + " | dataAvid="
        //         + (data instanceof BiliVideoDetail ? ((BiliVideoDetail) data).mAvid : "N/A")
        //         + " | result=" + isCurrent);
        return isCurrent;
    }

    @Override
    public boolean isCurrentVideoByCid(Object data, long currentCid) {
        boolean isCurrent = false;
        if (data instanceof BiliVideoDetail) {
            BiliVideoDetail detail = (BiliVideoDetail) data;
            isCurrent = detail.mCid == currentCid;
            // Log.d(TAG, "isCurrentVideoByCid | currentCid=" + currentCid
            //         + " | dataCid=" + detail.mCid
            //         + " | dataAvid=" + detail.mAvid
            //         + " | result=" + isCurrent);
        }
        return isCurrent;
    }

    @Override
    public boolean isCurrentSeason(Object data, int currentSeasonId) {
        return false;
    }
}
