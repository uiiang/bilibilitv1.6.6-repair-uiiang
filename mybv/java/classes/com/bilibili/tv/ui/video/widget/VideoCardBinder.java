package com.bilibili.tv.ui.video.widget;

public interface VideoCardBinder {
    void bind(com.bilibili.tv.ui.video.VideoDetailActivity.f holder, Object data, int position);
    long getVideoId(Object data);
    String getCoverUrl(Object data);
    boolean isCurrentVideo(Object data, long currentVideoId);
    boolean isCurrentSeason(Object data, int currentSeasonId);
}
