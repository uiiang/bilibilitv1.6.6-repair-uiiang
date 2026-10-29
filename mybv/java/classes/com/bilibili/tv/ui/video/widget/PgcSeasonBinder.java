package com.bilibili.tv.ui.video.widget;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.api.video.PgcInfo;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import bl.abd;
import bl.nv;

public class PgcSeasonBinder implements VideoCardBinder {
    private static final String TAG = "PgcBinder";

    @Override
    public void bind(VideoDetailActivity.f holder, Object data, int position) {
        if (!(data instanceof PgcInfo.Season)) {
            return;
        }
        PgcInfo.Season season = (PgcInfo.Season) data;

        String displayTitle = "";
        if (season.title != null && !season.title.isEmpty()) {
            displayTitle = season.title;
            if (season.seasonTitle != null && !season.seasonTitle.isEmpty()) {
                displayTitle = displayTitle + "-" + season.seasonTitle;
            }
        } else if (season.seasonTitle != null) {
            displayTitle = season.seasonTitle;
        }
        if (!displayTitle.isEmpty()) {
            holder.getTitleView().setText(displayTitle);
        }

        if (season.newEp != null && season.newEp.indexShow != null) {
            holder.getUpView().setText(season.newEp.indexShow);
            holder.getUpView().setCompoundDrawables(null, null, null, null);
        } else {
            holder.getUpView().setText("");
            holder.getUpView().setCompoundDrawables(null, null, null, null);
        }

        if (season.iconFont != null && season.iconFont.text != null) {
            holder.getPubdateView().setText(season.iconFont.text + "播放");
            holder.getPubdateView().setVisibility(View.VISIBLE);
        } else {
            holder.getPubdateView().setVisibility(View.GONE);
        }

        holder.getPlayCountView().setVisibility(View.GONE);
        holder.getDanmakuInImageView().setVisibility(View.GONE);
        holder.getDurationView().setVisibility(View.GONE);

        bindBadge(holder.getBadgeView(), season);
        bindCover(holder.getCoverImageView(), season.getBestCover(), position);
    }

    @Override
    public void bindCompact(CompactVideoHolder holder, Object data, int position) {
        if (!(data instanceof PgcInfo.Season)) {
            return;
        }
        PgcInfo.Season season = (PgcInfo.Season) data;

        String displayTitle = "";
        if (season.title != null && !season.title.isEmpty()) {
            displayTitle = season.title;
            if (season.seasonTitle != null && !season.seasonTitle.isEmpty()) {
                displayTitle = displayTitle + "-" + season.seasonTitle;
            }
        } else if (season.seasonTitle != null) {
            displayTitle = season.seasonTitle;
        }
        if (!displayTitle.isEmpty()) {
            holder.getTitleView().setText(displayTitle);
        }

        if (season.newEp != null && season.newEp.indexShow != null) {
            holder.getUpView().setText(season.newEp.indexShow);
            holder.getUpView().setVisibility(View.VISIBLE);
            holder.getUpView().setCompoundDrawables(null, null, null, null);
        } else {
            holder.getUpView().setVisibility(View.GONE);
        }

        if (season.iconFont != null && season.iconFont.text != null) {
            holder.getPubdateView().setText(season.iconFont.text + "播放");
            holder.getPubdateView().setVisibility(View.VISIBLE);
        } else {
            holder.getPubdateView().setVisibility(View.GONE);
        }

        holder.getPlayCountView().setVisibility(View.GONE);
        holder.getDanmakuView().setVisibility(View.GONE);
        holder.getDurationView().setVisibility(View.GONE);

        bindBadge(holder.getBadgeView(), season);
        bindCover(holder.getCoverImageView(), season.getBestCover(), position);
    }

    private void bindBadge(TextView badgeView, PgcInfo.Season season) {
        String text = season.badgeInfo != null ? season.badgeInfo.text : null;
        String color = season.badgeInfo != null ? season.badgeInfo.bgColor : null;
        VideoBadgeStyler.apply(badgeView, text, color, true);
    }

    private void bindCover(com.bilibili.tv.widget.ScalableImageView coverView, String coverUrl, int position) {
        if (coverUrl != null) {
            nv imageLoader = nv.a();
            Context context = MainApplication.a().getApplicationContext();
            String thumbUrl = abd.get_thumb_url_c(context, coverUrl);
            imageLoader.a(thumbUrl, coverView);
        }
    }

    @Override
    public long getVideoId(Object data) {
        long videoId = -1;
        if (data instanceof PgcInfo.Season) {
            videoId = ((PgcInfo.Season) data).seasonId;
        }
        return videoId;
    }

    @Override
    public String getCoverUrl(Object data) {
        String coverUrl = null;
        if (data instanceof PgcInfo.Season) {
            coverUrl = ((PgcInfo.Season) data).getBestCover();
        }
        return coverUrl;
    }

    @Override
    public boolean isCurrentVideo(Object data, long currentVideoId) {
        return false;
    }

    @Override
    public boolean isCurrentVideoByCid(Object data, long currentCid) {
        return false;
    }

    @Override
    public boolean isCurrentSeason(Object data, int currentSeasonId) {
        boolean isCurrent = false;
        if (data instanceof PgcInfo.Season) {
            isCurrent = ((PgcInfo.Season) data).seasonId == currentSeasonId;
        }
        return isCurrent;
    }

    @Override
    public boolean hasPlayProgress(Object data, long currentCid) {
        return false;
    }
}
