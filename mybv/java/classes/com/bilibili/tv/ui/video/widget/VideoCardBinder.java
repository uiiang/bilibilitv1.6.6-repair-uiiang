package com.bilibili.tv.ui.video.widget;

public interface VideoCardBinder {
    void bind(com.bilibili.tv.ui.video.VideoDetailActivity.f holder, Object data, int position);
    void bindCompact(CompactVideoHolder holder, Object data, int position);
    long getVideoId(Object data);
    String getCoverUrl(Object data);
    boolean isCurrentVideo(Object data, long currentVideoId);
    boolean isCurrentVideoByCid(Object data, long currentCid);
    boolean isCurrentSeason(Object data, int currentSeasonId);
    
    boolean hasPlayProgress(Object data, long currentCid);
}
