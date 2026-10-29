package com.bilibili.tv.ui.video.widget;

import android.view.View;
import android.widget.TextView;
import com.bilibili.tv.R;
import com.bilibili.tv.api.video.BiliVideoDetail;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.widget.ScalableImageView;
import bl.adh;

public class BiliVideoDetailBinder implements VideoCardBinder {
    private static final String TAG = "BiliBinder";

    @Override
    public void bind(VideoDetailActivity.f holder, Object data, int position) {
        if (!(data instanceof BiliVideoDetail)) {
            return;
        }
        BiliVideoDetail detail = (BiliVideoDetail) data;

        holder.getTitleView().setText(detail.mTitle);

        String author = detail.getAuthor();
        if (author != null && !author.isEmpty()) {
            holder.getUpView().setText(author);
            if (!detail.hideUpIcon) {
                VideoCardIcons.setUp(holder.getUpView(), VideoCardIcons.SIZE_COMPACT, R.color.white);
            } else {
                VideoCardIcons.clear(holder.getUpView());
            }
        } else {
            VideoCardIcons.clear(holder.getUpView());
        }

        String plays = detail.getPlays();
        if (plays != null) {
            holder.getPlayCountView().setText(adh.a(plays));
        }

        VideoCardTexts.bindDanmaku(holder.getDanmakuInImageView(), detail.getDanmakus(), true);
        VideoCardTexts.bindPubDate(holder.getPubdateView(), detail.mCreatedTimestamp, null, true);
        VideoCardTexts.bindDuration(holder.getDurationView(), detail.mDuration, false);

        bindBadge(holder.getBadgeView(), detail);
        bindCover(holder.getCoverImageView(), detail.mCover, position);
    }

    @Override
    public void bindCompact(CompactVideoHolder holder, Object data, int position) {
        if (!(data instanceof BiliVideoDetail)) {
            return;
        }
        BiliVideoDetail detail = (BiliVideoDetail) data;

        holder.getTitleView().setText(detail.mTitle);

        String author = detail.getAuthor();
        if (author != null && !author.isEmpty()) {
            holder.getUpView().setText(author);
            holder.getUpView().setVisibility(View.VISIBLE);
            if (!detail.hideUpIcon) {
                VideoCardIcons.setUp(holder.getUpView(), VideoCardIcons.SIZE_COMPACT, R.color.white);
            } else {
                VideoCardIcons.clear(holder.getUpView());
            }
        } else {
            holder.getUpView().setVisibility(View.GONE);
            VideoCardIcons.clear(holder.getUpView());
        }

        VideoCardTexts.bindPlayCount(holder.getPlayCountView(), detail.getPlays(), true);
        VideoCardTexts.bindDanmaku(holder.getDanmakuView(), detail.getDanmakus(), true);
        VideoCardTexts.bindPubDate(holder.getPubdateView(), detail.mCreatedTimestamp, null, true);
        VideoCardTexts.bindDuration(holder.getDurationView(), detail.mDuration, true);

        bindBadge(holder.getBadgeView(), detail);
        bindCover(holder.getCoverImageView(), detail.mCover, position);
    }

    private void bindBadge(TextView badgeView, BiliVideoDetail detail) {
        VideoBadgeStyler.apply(badgeView, detail.badgeText, detail.badgeBgColor, true);
    }

    private void bindCover(ScalableImageView coverView, String coverUrl, int position) {
        VideoCardCoverLoader.load(null, coverView, coverUrl);
    }

    @Override
    public long getVideoId(Object data) {
        long videoId = -1;
        if (data instanceof BiliVideoDetail) {
            videoId = ((BiliVideoDetail) data).mAvid;
        }
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
        return isCurrent;
    }

    @Override
    public boolean isCurrentVideoByCid(Object data, long currentCid) {
        boolean isCurrent = false;
        if (data instanceof BiliVideoDetail) {
            BiliVideoDetail detail = (BiliVideoDetail) data;
            isCurrent = detail.mCid == currentCid;
        }
        return isCurrent;
    }

    @Override
    public boolean isCurrentSeason(Object data, int currentSeasonId) {
        return false;
    }

    @Override
    public boolean hasPlayProgress(Object data, long currentCid) {
        return false;
    }
}
