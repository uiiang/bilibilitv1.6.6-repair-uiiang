package com.bilibili.tv.ui.video.widget;

import android.view.View;
import android.widget.TextView;
import com.bilibili.tv.R;
import com.bilibili.tv.api.video.BiliVideoDetail;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.widget.ScalableImageView;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;

public class UnifiedVideoCardBinder implements VideoCardBinder {
    private int listType;

    public UnifiedVideoCardBinder(int listType) {
        this.listType = listType;
    }

    @Override
    public void bind(VideoDetailActivity.f holder, Object data, int position) {
        if (data instanceof BiliVideoDetail) {
            bindFields(holder.getTitleView(), holder.getUpView(), holder.getPlayCountView(),
                    holder.getDanmakuInImageView(), holder.getPubdateView(), holder.getDurationView(),
                    holder.getBadgeView(), holder.getCoverImageView(), (BiliVideoDetail) data);
        } else if (data instanceof ResolveResourceParams) {
            bindFields(holder.getTitleView(), holder.getUpView(), holder.getPlayCountView(),
                    holder.getDanmakuInImageView(), holder.getPubdateView(), holder.getDurationView(),
                    holder.getBadgeView(), holder.getCoverImageView(), (ResolveResourceParams) data);
        }
    }

    @Override
    public void bindCompact(CompactVideoHolder holder, Object data, int position) {
        if (data instanceof BiliVideoDetail) {
            bindFields(holder.getTitleView(), holder.getUpView(), holder.getPlayCountView(),
                    holder.getDanmakuView(), holder.getPubdateView(), holder.getDurationView(),
                    holder.getBadgeView(), holder.getCoverImageView(), (BiliVideoDetail) data);
        } else if (data instanceof ResolveResourceParams) {
            bindFields(holder.getTitleView(), holder.getUpView(), holder.getPlayCountView(),
                    holder.getDanmakuView(), holder.getPubdateView(), holder.getDurationView(),
                    holder.getBadgeView(), holder.getCoverImageView(), (ResolveResourceParams) data);
        }
    }

    /**
     * 普通卡片与紧凑卡片的唯一差异只在“弹幕文字挂在哪个 View 上”，
     * 因此统一走这一份绑定逻辑，避免两份近似代码再次漂移。
     */
    private void bindFields(TextView titleView, TextView upView, TextView playCountView,
                            TextView danmakuView, TextView pubdateView, TextView durationView,
                            TextView badgeView, ScalableImageView coverView, BiliVideoDetail detail) {
        titleView.setText(detail.mTitle);

        String author = getAuthorFromBiliVideoDetail(detail);
        bindUpView(upView, author, detail.hideUpIcon);
        bindPlayAndDanmaku(playCountView, danmakuView, detail.getPlays(), detail.getDanmakus());
        VideoCardTexts.bindPubDate(pubdateView, detail.mCreatedTimestamp, detail.mPubDateText, true);
        VideoCardTexts.bindDuration(durationView, detail.mDuration, true);
        VideoBadgeStyler.apply(badgeView, detail.badgeText, detail.badgeBgColor, true);
        VideoCardCoverLoader.load(null, coverView, detail.mCover);
    }

    private void bindFields(TextView titleView, TextView upView, TextView playCountView,
                            TextView danmakuView, TextView pubdateView, TextView durationView,
                            TextView badgeView, ScalableImageView coverView, ResolveResourceParams params) {
        titleView.setText(params.mPageTitle);

        bindUpView(upView, params.mAuthor, params.mHideUpIcon);
        bindPlayAndDanmaku(playCountView, danmakuView, params.mPlays, params.mDanmakus);
        VideoCardTexts.bindPubDate(pubdateView, params.mPubDate, null, true);
        VideoCardTexts.bindDuration(durationView, params.mDuration, true);
        VideoBadgeStyler.apply(badgeView, params.mBadgeText, params.mBadgeBgColor, true);
        VideoCardCoverLoader.load(null, coverView, params.mEpCover);
    }

    private String getAuthorFromBiliVideoDetail(BiliVideoDetail detail) {
        if (!VideoCardIcons.isEmpty(detail.vtText)) {
            return detail.vtText;
        }
        return detail.getAuthor();
    }

    private void bindUpView(TextView upView, String author, boolean hideUpIcon) {
        if (listType == 2) {
            upView.setVisibility(View.GONE);
            VideoCardIcons.clear(upView);
            return;
        }

        if (author != null && !author.isEmpty()) {
            upView.setText(author);
            upView.setVisibility(View.VISIBLE);

            if (listType == 1 || hideUpIcon) {
                VideoCardIcons.clear(upView);
            } else {
                VideoCardIcons.setUp(upView, VideoCardIcons.SIZE_COMPACT, R.color.white);
            }
        } else {
            upView.setVisibility(View.GONE);
            VideoCardIcons.clear(upView);
        }
    }

    private void bindPlayAndDanmaku(TextView playCountView, TextView danmakuView, String plays, String danmakus) {
        if (listType == 2) {
            playCountView.setVisibility(View.GONE);
            danmakuView.setVisibility(View.GONE);
            return;
        }
        VideoCardTexts.bindPlayCount(playCountView, plays, true);
        VideoCardTexts.bindDanmaku(danmakuView, danmakus, true);
    }

    @Override
    public long getVideoId(Object data) {
        if (data instanceof BiliVideoDetail) {
            return ((BiliVideoDetail) data).mAvid;
        } else if (data instanceof ResolveResourceParams) {
            return ((ResolveResourceParams) data).mCid;
        }
        return -1;
    }

    @Override
    public String getCoverUrl(Object data) {
        if (data instanceof BiliVideoDetail) {
            return ((BiliVideoDetail) data).mCover;
        } else if (data instanceof ResolveResourceParams) {
            return ((ResolveResourceParams) data).mEpCover;
        }
        return null;
    }

    @Override
    public boolean isCurrentVideo(Object data, long currentVideoId) {
        return getVideoId(data) == currentVideoId;
    }

    @Override
    public boolean isCurrentVideoByCid(Object data, long currentCid) {
        if (data instanceof BiliVideoDetail) {
            BiliVideoDetail detail = (BiliVideoDetail) data;
            if (detail.sourcePage != null) {
                return detail.sourcePage.mCid == currentCid;
            } else if (detail.sourceEpisode != null) {
                com.bilibili.tv.api.video.PgcInfo.Episode episode = (com.bilibili.tv.api.video.PgcInfo.Episode) detail.sourceEpisode;
                return episode.cid == currentCid;
            } else {
                return detail.mCid == currentCid;
            }
        } else if (data instanceof ResolveResourceParams) {
            return ((ResolveResourceParams) data).mCid == currentCid;
        }
        return false;
    }

    @Override
    public boolean isCurrentSeason(Object data, int currentSeasonId) {
        return false;
    }

    @Override
    public boolean hasPlayProgress(Object data, long currentCid) {
        return isCurrentVideoByCid(data, currentCid);
    }
}
