package com.bilibili.tv.ui.video.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.video.BiliVideoDetail;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.util.DateHelper;
import com.bilibili.tv.widget.ScalableImageView;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import bl.adh;
import bl.adl;
import bl.abd;
import bl.nv;

public class UnifiedVideoCardBinder implements VideoCardBinder {
    private static final String TAG = "UnifiedVideoCardBinder";
    private int listType;

    public UnifiedVideoCardBinder(int listType) {
        this.listType = listType;
        Log.i(TAG, "构造函数 | listType=" + listType);
    }

    @Override
    public void bind(VideoDetailActivity.f holder, Object data, int position) {
        if (data instanceof BiliVideoDetail) {
            bindFromBiliVideoDetail(holder, (BiliVideoDetail) data);
        } else if (data instanceof ResolveResourceParams) {
            bindFromResolveParams(holder, (ResolveResourceParams) data);
        }
    }

    @Override
    public void bindCompact(CompactVideoHolder holder, Object data, int position) {
        Log.i(TAG, "bindCompact | position=" + position + " | dataType=" + (data != null ? data.getClass().getSimpleName() : "null") + " | listType=" + listType);
        if (data instanceof BiliVideoDetail) {
            bindFromBiliVideoDetailCompact(holder, (BiliVideoDetail) data);
        } else if (data instanceof ResolveResourceParams) {
            bindFromResolveParamsCompact(holder, (ResolveResourceParams) data);
        }
    }

    private void bindFromBiliVideoDetail(VideoDetailActivity.f holder, BiliVideoDetail detail) {
        holder.getTitleView().setText(detail.mTitle);
        
        String author = getAuthorFromBiliVideoDetail(detail);
        boolean hideUpIcon = detail.hideUpIcon;
        bindUpView(holder.getUpView(), author, hideUpIcon);
        
        String plays = detail.getPlays();
        String danmakus = detail.getDanmakus();
        bindPlayAndDanmaku(holder.getPlayCountView(), holder.getDanmakuInImageView(), plays, danmakus);
        
        bindPubDate(holder.getPubdateView(), detail.mCreatedTimestamp, detail.mPubDateText);
        bindDuration(holder.getDurationView(), detail.mDuration);
        bindBadge(holder.getBadgeView(), detail.badgeText, detail.badgeBgColor);
        bindCover(holder.getCoverImageView(), detail.mCover);
    }

    private void bindFromBiliVideoDetailCompact(CompactVideoHolder holder, BiliVideoDetail detail) {
        holder.getTitleView().setText(detail.mTitle);
        
        String author = getAuthorFromBiliVideoDetail(detail);
        boolean hideUpIcon = detail.hideUpIcon;
        bindUpView(holder.getUpView(), author, hideUpIcon);
        
        String plays = detail.getPlays();
        String danmakus = detail.getDanmakus();
        bindPlayAndDanmakuCompact(holder.getPlayCountView(), holder.getDanmakuView(), plays, danmakus);
        
        bindPubDate(holder.getPubdateView(), detail.mCreatedTimestamp, detail.mPubDateText);
        bindDuration(holder.getDurationView(), detail.mDuration);
        bindBadge(holder.getBadgeView(), detail.badgeText, detail.badgeBgColor);
        bindCover(holder.getCoverImageView(), detail.mCover);
    }

    private void bindFromResolveParams(VideoDetailActivity.f holder, ResolveResourceParams params) {
        holder.getTitleView().setText(params.mPageTitle);
        
        bindUpView(holder.getUpView(), params.mAuthor, params.mHideUpIcon);
        bindPlayAndDanmaku(holder.getPlayCountView(), holder.getDanmakuInImageView(), params.mPlays, params.mDanmakus);
        bindPubDate(holder.getPubdateView(), params.mPubDate, null);
        bindDuration(holder.getDurationView(), params.mDuration);
        bindBadge(holder.getBadgeView(), params.mBadgeText, params.mBadgeBgColor);
        bindCover(holder.getCoverImageView(), params.mEpCover);
    }

    private void bindFromResolveParamsCompact(CompactVideoHolder holder, ResolveResourceParams params) {
        Log.i(TAG, "bindFromResolveParamsCompact | title=" + params.mPageTitle + " | author=" + params.mAuthor + " | mListType=" + params.mListType + " | listType=" + listType);
        holder.getTitleView().setText(params.mPageTitle);
        
        bindUpView(holder.getUpView(), params.mAuthor, params.mHideUpIcon);
        bindPlayAndDanmakuCompact(holder.getPlayCountView(), holder.getDanmakuView(), params.mPlays, params.mDanmakus);
        bindPubDate(holder.getPubdateView(), params.mPubDate, null);
        bindDuration(holder.getDurationView(), params.mDuration);
        bindBadge(holder.getBadgeView(), params.mBadgeText, params.mBadgeBgColor);
        bindCover(holder.getCoverImageView(), params.mEpCover);
    }

    private String getAuthorFromBiliVideoDetail(BiliVideoDetail detail) {
        if (!TextUtils.isEmpty(detail.vtText)) {
            return detail.vtText;
        }
        return detail.getAuthor();
    }

    private void bindUpView(TextView upView, String author, boolean hideUpIcon) {
        if (listType == 2) {
            upView.setVisibility(View.GONE);
            upView.setCompoundDrawables(null, null, null, null);
            return;
        }
        
        if (author != null && !author.isEmpty()) {
            upView.setText(author);
            upView.setVisibility(View.VISIBLE);
            
            if (listType == 1 || hideUpIcon) {
                upView.setCompoundDrawables(null, null, null, null);
            } else {
                Drawable upIcon = adl.a.c(R.drawable.ic_video_info_up);
                int iconSize = adl.b(R.dimen.px_26);
                upIcon.setBounds(0, 0, iconSize, iconSize);
                int color = adl.d(R.color.white);
                upIcon.setColorFilter(color, PorterDuff.Mode.MULTIPLY);
                upView.setCompoundDrawables(upIcon, null, null, null);
            }
        } else {
            upView.setVisibility(View.GONE);
            upView.setCompoundDrawables(null, null, null, null);
        }
    }

    private void bindPlayAndDanmaku(TextView playCountView, TextView danmakuView, String plays, String danmakus) {
        if (listType == 2) {
            playCountView.setVisibility(View.GONE);
            danmakuView.setVisibility(View.GONE);
            return;
        }
        
        if (plays != null && !"0".equals(plays)) {
            playCountView.setText(adh.a(plays));
            playCountView.setVisibility(View.VISIBLE);
        } else {
            playCountView.setVisibility(View.GONE);
        }
        
        int danmaku = 0;
        try {
            danmaku = Integer.parseInt(danmakus != null ? danmakus : "0");
        } catch (Exception e) {}
        if (danmaku > 0) {
            danmakuView.setText(adh.a(danmaku));
            danmakuView.setVisibility(View.VISIBLE);
        } else {
            danmakuView.setVisibility(View.GONE);
        }
    }

    private void bindPlayAndDanmakuCompact(TextView playCountView, TextView danmakuView, String plays, String danmakus) {
        if (listType == 2) {
            playCountView.setVisibility(View.GONE);
            danmakuView.setVisibility(View.GONE);
            return;
        }
        
        if (plays != null && !"0".equals(plays)) {
            playCountView.setText(adh.a(plays));
            playCountView.setVisibility(View.VISIBLE);
        } else {
            playCountView.setVisibility(View.GONE);
        }
        
        int danmaku = 0;
        try {
            danmaku = Integer.parseInt(danmakus != null ? danmakus : "0");
        } catch (Exception e) {}
        if (danmaku > 0) {
            danmakuView.setText(adh.a(danmaku));
            danmakuView.setVisibility(View.VISIBLE);
        } else {
            danmakuView.setVisibility(View.GONE);
        }
    }

    private void bindPubDate(TextView pubdateView, long pubDate, String pubDateText) {
        if (pubDateText != null && !pubDateText.isEmpty()) {
            pubdateView.setText(pubDateText);
            pubdateView.setVisibility(View.VISIBLE);
        } else if (pubDate > 0) {
            pubdateView.setText(DateHelper.formatDate(pubDate));
            pubdateView.setVisibility(View.VISIBLE);
        } else {
            pubdateView.setVisibility(View.GONE);
        }
    }

    private void bindDuration(TextView durationView, int duration) {
        if (duration > 0) {
            if (duration >= 3600) {
                durationView.setText(String.format("%d:%02d:%02d",
                        duration / 3600, (duration % 3600) / 60, duration % 60));
            } else {
                durationView.setText(String.format("%02d:%02d", duration / 60, duration % 60));
            }
            durationView.setVisibility(View.VISIBLE);
        } else {
            durationView.setVisibility(View.GONE);
        }
    }

    private void bindBadge(TextView badgeView, String badgeText, String badgeBgColor) {
        if (badgeText != null && !badgeText.isEmpty()) {
            badgeView.setText(badgeText);
            Context context = MainApplication.a().getApplicationContext();
            float cornerRadius = 4 * context.getResources().getDisplayMetrics().density;
            try {
                int bgColor = android.graphics.Color.parseColor(badgeBgColor);
                int alphaColor = (bgColor & 0x00FFFFFF) | (153 << 24);
                android.graphics.drawable.GradientDrawable drawable = new android.graphics.drawable.GradientDrawable();
                drawable.setShape(android.graphics.drawable.GradientDrawable.RECTANGLE);
                drawable.setCornerRadius(cornerRadius);
                drawable.setColor(alphaColor);
                badgeView.setBackground(drawable);
            } catch (Exception e) {
                android.graphics.drawable.GradientDrawable drawable = new android.graphics.drawable.GradientDrawable();
                drawable.setShape(android.graphics.drawable.GradientDrawable.RECTANGLE);
                drawable.setCornerRadius(cornerRadius);
                drawable.setColor(0x99FB7299);
                badgeView.setBackground(drawable);
            }
            badgeView.setVisibility(View.VISIBLE);
        } else {
            badgeView.setVisibility(View.GONE);
        }
    }

    private void bindCover(ScalableImageView coverView, String coverUrl) {
        if (coverUrl != null && !coverUrl.isEmpty()) {
            nv imageLoader = nv.a();
            Context context = MainApplication.a().getApplicationContext();
            String thumbUrl = abd.get_thumb_url_c(context, coverUrl);
            imageLoader.a(thumbUrl, coverView);
        }
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
            return ((BiliVideoDetail) data).mCid == currentCid;
        } else if (data instanceof ResolveResourceParams) {
            return ((ResolveResourceParams) data).mCid == currentCid;
        }
        return false;
    }

    @Override
    public boolean isCurrentSeason(Object data, int currentSeasonId) {
        return false;
    }
}
