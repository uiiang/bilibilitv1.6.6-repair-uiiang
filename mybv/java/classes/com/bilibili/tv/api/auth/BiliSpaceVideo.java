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
}
