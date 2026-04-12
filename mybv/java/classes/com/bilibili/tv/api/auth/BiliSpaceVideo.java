package com.bilibili.tv.api.auth;

import com.alibaba.fastjson.annotation.JSONField;

public class BiliSpaceVideo {
    @JSONField(name = "cover")
    public String cover;

    @JSONField(name = "danmaku")
    public String danmaku;

    @JSONField(name = "param")
    public String param;

    @JSONField(name = "play")
    public int play;

    @JSONField(name = "title")
    public String title;

    @JSONField(name = "uri")
    public String uri;

    @JSONField(name = "ctime")
    public Long ctime;

    @JSONField(name = "duration")
    public int duration;

    @JSONField(name = "elec_arc_type")
    public int elecArcType;

    @JSONField(name = "elec_arc_badge")
    public String elecArcBadge;

    @JSONField(name = "is_union_video")
    public int isUnionVideo;

    @JSONField(name = "is_live_playback")
    public int isLivePlayback;

    // Web端接口返回的时长字符串，如 "33:33"，直接显示
    // 非null时优先使用此字段，null时走duration(int)格式化逻辑
    public String durationStr;
}
