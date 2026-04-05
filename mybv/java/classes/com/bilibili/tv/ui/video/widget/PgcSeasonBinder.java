package com.bilibili.tv.ui.video.widget;

import android.content.Context;
import android.util.Log;
import android.view.View;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.api.video.PgcInfo;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import bl.abd;
import bl.nv;

public class PgcSeasonBinder implements VideoCardBinder {
    private static final String TAG = "PgcBinder";

    @Override
    public void bind(VideoDetailActivity.f holder, Object data, int position) {
        // Log.i(TAG, "bind | position=" + position + " | dataClass=" + (data == null ? "null" : data.getClass().getSimpleName()));
        if (!(data instanceof PgcInfo.Season)) {
            // Log.w(TAG, "bind | 数据类型不匹配，期望PgcInfo.Season，实际=" + (data == null ? "null" : data.getClass().getName()));
            return;
        }
        PgcInfo.Season season = (PgcInfo.Season) data;

        // Log.i(TAG, "bind | seasonId=" + season.seasonId + " | title=" + season.title
        //         + " | seasonTitle=" + season.seasonTitle
        //         + " | indexShow=" + (season.newEp != null ? season.newEp.indexShow : "null")
        //         + " | iconFontText=" + (season.iconFont != null ? season.iconFont.text : "null")
        //         + " | cover=" + season.getBestCover());

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
            // Log.d(TAG, "bind | position=" + position + " | 设置标题: " + displayTitle);
        } else {
            // Log.w(TAG, "bind | position=" + position + " | 标题为空! seasonId=" + season.seasonId);
        }

        if (season.newEp != null && season.newEp.indexShow != null) {
            holder.getUpView().setText(season.newEp.indexShow);
            holder.getUpView().setCompoundDrawables(null, null, null, null);
        } else {
            holder.getUpView().setText("");
            holder.getUpView().setCompoundDrawables(null, null, null, null);
            // Log.d(TAG, "bind | position=" + position + " | indexShow为空，UP主区域清空");
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

        if (season.badgeInfo != null && season.badgeInfo.text != null && !season.badgeInfo.text.isEmpty()) {
            holder.getBadgeView().setText(season.badgeInfo.text);
            Context context = MainApplication.a().getApplicationContext();
            float cornerRadius = 4 * context.getResources().getDisplayMetrics().density;
            try {
                int bgColor = android.graphics.Color.parseColor(season.badgeInfo.bgColor);
                int alphaColor = (bgColor & 0x00FFFFFF) | (153 << 24);
                android.graphics.drawable.GradientDrawable drawable = new android.graphics.drawable.GradientDrawable();
                drawable.setShape(android.graphics.drawable.GradientDrawable.RECTANGLE);
                drawable.setCornerRadius(cornerRadius);
                drawable.setColor(alphaColor);
                holder.getBadgeView().setBackground(drawable);
            } catch (Exception e) {
                android.graphics.drawable.GradientDrawable drawable = new android.graphics.drawable.GradientDrawable();
                drawable.setShape(android.graphics.drawable.GradientDrawable.RECTANGLE);
                drawable.setCornerRadius(cornerRadius);
                drawable.setColor(0x99FB7299);
                holder.getBadgeView().setBackground(drawable);
            }
            holder.getBadgeView().setVisibility(View.VISIBLE);
        } else {
            holder.getBadgeView().setVisibility(View.GONE);
        }

        String cover = season.getBestCover();
        if (cover != null) {
            nv imageLoader = nv.a();
            Context context = MainApplication.a().getApplicationContext();
            String thumbUrl = abd.get_thumb_url_c(context, cover);
            Log.d(TAG, "bind | position=" + position + " | 加载封面 | originalUrl=" + cover + " | thumbUrl=" + thumbUrl);
            imageLoader.a(thumbUrl, holder.getCoverImageView());
        } else {
            // Log.w(TAG, "bind | position=" + position + " | 封面URL为空 | seasonId=" + season.seasonId);
        }
    }

    @Override
    public long getVideoId(Object data) {
        long videoId = -1;
        if (data instanceof PgcInfo.Season) {
            videoId = ((PgcInfo.Season) data).seasonId;
        }
        // Log.d(TAG, "getVideoId | dataClass=" + (data == null ? "null" : data.getClass().getSimpleName())
        //         + " | return(seasonId)=" + videoId);
        return videoId;
    }

    @Override
    public String getCoverUrl(Object data) {
        String coverUrl = null;
        if (data instanceof PgcInfo.Season) {
            coverUrl = ((PgcInfo.Season) data).getBestCover();
        }
        // Log.d(TAG, "getCoverUrl | dataClass=" + (data == null ? "null" : data.getClass().getSimpleName()) + " | return=" + coverUrl);
        return coverUrl;
    }

    @Override
    public boolean isCurrentVideo(Object data, long currentVideoId) {
        // Log.d(TAG, "isCurrentVideo | currentVideoId=" + currentVideoId
        //         + " | PgcSeason使用avid比较，对于PGC多季列表应使用seasonId比较");
        return false;
    }

    @Override
    public boolean isCurrentVideoByCid(Object data, long currentCid) {
        // Log.d(TAG, "isCurrentVideoByCid | PgcSeason不使用cid比较，始终返回false");
        return false;
    }

    @Override
    public boolean isCurrentSeason(Object data, int currentSeasonId) {
        boolean isCurrent = false;
        if (data instanceof PgcInfo.Season) {
            isCurrent = ((PgcInfo.Season) data).seasonId == currentSeasonId;
        }
        // Log.d(TAG, "isCurrentSeason | currentSeasonId=" + currentSeasonId
        //         + " | dataSeasonId=" + (data instanceof PgcInfo.Season ? String.valueOf(((PgcInfo.Season) data).seasonId) : "N/A")
        //         + " | return=" + isCurrent);
        return isCurrent;
    }
}
