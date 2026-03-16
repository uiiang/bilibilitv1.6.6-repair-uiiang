package com.bilibili.tv.api.auth;

import com.alibaba.fastjson.annotation.JSONField;
import java.util.List;

public class BiliSpaceVideoList {
    @JSONField(name = "count")
    public int count;

    @JSONField(name = "has_next")
    public boolean hasNext;

    @JSONField(name = "item")
    public List<BiliSpaceVideo> videos;
}
