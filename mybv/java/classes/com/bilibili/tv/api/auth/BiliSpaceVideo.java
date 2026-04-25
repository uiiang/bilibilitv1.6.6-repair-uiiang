package com.bilibili.tv.api.auth;

import android.text.TextUtils;

import com.alibaba.fastjson.JSONObject;
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

    @JSONField(name = "is_steins_gate")
    public int isSteinsGate;

    public String durationStr;

    public String bvid;

    public long aid;

    public String playStr;

    public String danmakuStr;

    public String badgeText;

    public String badgeBgColor;

    public String authorName;

    public String pubTimeStr;

    public void resolveBadge() {
        if (badgeText != null && "投稿视频".equals(badgeText)) {
            badgeText = null;
            badgeBgColor = null;
        }
        if (badgeText == null || badgeText.isEmpty()) {
            if (elecArcType == 1 && !TextUtils.isEmpty(elecArcBadge)) {
                badgeText = elecArcBadge;
            } else if (isUnionVideo == 1) {
                badgeText = "合作";
            } else if (isLivePlayback == 1) {
                badgeText = "直播回放";
            } else if (isSteinsGate == 1) {
                badgeText = "互动视频";
                badgeBgColor = "#1296db";
            }
        }
    }

    public void resolvePlayStr() {
        if (playStr == null || playStr.isEmpty()) {
            playStr = bl.adh.a(play);
        }
    }

    public void resolveDanmakuStr() {
        if (danmakuStr == null || danmakuStr.isEmpty()) {
            int danmakuVal = 0;
            try {
                if (danmaku != null && !danmaku.isEmpty()) {
                    danmakuVal = Integer.parseInt(danmaku);
                }
            } catch (Exception e) {}
            danmakuStr = bl.adh.a(danmakuVal);
        }
    }

    public void resolveDurationStr() {
        if ((durationStr == null || durationStr.isEmpty()) && duration > 0) {
            durationStr = com.bilibili.tv.util.DateHelper.formatDuration(duration);
        }
    }

    public void resolvePubTimeStr() {
        if ((pubTimeStr == null || pubTimeStr.isEmpty()) && ctime != null && ctime > 0) {
            pubTimeStr = com.bilibili.tv.util.DateHelper.formatDate(ctime);
        }
    }

    public void resolveAll() {
        resolvePlayStr();
        resolveDanmakuStr();
        resolveDurationStr();
        resolvePubTimeStr();
        resolveBadge();
    }

    public static BiliSpaceVideo fromArchives(JSONObject item) {
        BiliSpaceVideo v = new BiliSpaceVideo();
        v.aid = item.getLongValue("aid");
        v.param = String.valueOf(v.aid);
        v.bvid = item.getString("bvid");
        v.title = item.getString("title");
        v.cover = item.getString("pic");
        if (v.cover == null || v.cover.isEmpty()) {
            v.cover = item.getString("cover");
        }
        JSONObject stat = item.getJSONObject("stat");
        if (stat != null) {
            int viewCount = stat.getIntValue("view");
            v.play = viewCount;
            v.playStr = bl.adh.a(viewCount);
            int danmakuVal = stat.getIntValue("danmaku");
            v.danmaku = String.valueOf(danmakuVal);
            v.danmakuStr = bl.adh.a(danmakuVal);
        }
        v.ctime = item.getLong("pubdate");
        v.duration = item.getIntValue("duration");
        String durText = item.getString("duration_text");
        if (durText != null && !durText.isEmpty()) {
            v.durationStr = durText;
        } else {
            v.durationStr = com.bilibili.tv.util.DateHelper.formatDuration(v.duration);
        }
        v.elecArcType = item.getIntValue("elec_arc_type");
        v.elecArcBadge = item.getString("elec_arc_badge");
        v.isUnionVideo = item.getIntValue("is_union_video");
        v.isLivePlayback = item.getIntValue("is_live_playback");
        v.isSteinsGate = item.getIntValue("is_steins_gate");
        
        v.resolvePubTimeStr();
        v.resolveBadge();
        
        return v;
    }

    public static BiliSpaceVideo fromVlist(JSONObject item) {
        BiliSpaceVideo v = new BiliSpaceVideo();
        v.cover = item.getString("pic");
        v.aid = item.getLongValue("aid");
        v.param = String.valueOf(v.aid);
        v.bvid = item.getString("bvid");
        v.title = item.getString("title");
        v.play = item.getIntValue("play");
        v.playStr = bl.adh.a(v.play);
        int danmakuVal = item.getIntValue("video_review");
        v.danmaku = String.valueOf(danmakuVal);
        v.danmakuStr = bl.adh.a(danmakuVal);
        v.ctime = item.getLong("created");
        String lengthStr = item.getString("length");
        v.durationStr = com.bilibili.tv.util.DateHelper.formatDuration(lengthStr);
        v.duration = com.bilibili.tv.util.DateHelper.parseDurationStr(lengthStr);
        v.elecArcType = item.getIntValue("elec_arc_type");
        v.elecArcBadge = item.getString("elec_arc_badge");
        v.isUnionVideo = item.getIntValue("is_union_video");
        v.isLivePlayback = item.getIntValue("is_live_playback");
        v.isSteinsGate = item.getIntValue("is_steins_gate");
        
        v.resolvePubTimeStr();
        v.resolveBadge();
        
        return v;
    }

    public static BiliSpaceVideo fromFeedDynamic(JSONObject modules) {
        BiliSpaceVideo v = new BiliSpaceVideo();
        JSONObject moduleDynamic = modules.getJSONObject("module_dynamic");
        if (moduleDynamic == null) return null;
        JSONObject major = moduleDynamic.getJSONObject("major");
        if (major == null) return null;
        JSONObject archive = major.getJSONObject("archive");
        if (archive == null) return null;
        
        v.aid = archive.getLongValue("aid");
        v.param = String.valueOf(v.aid);
        v.bvid = archive.getString("bvid");
        v.title = archive.getString("title");
        v.cover = archive.getString("cover");
        
        JSONObject statObj = archive.getJSONObject("stat");
        if (statObj != null) {
            String playVal = statObj.getString("play");
            v.playStr = playVal;
            v.play = 0;
            try {
                if (playVal != null && !playVal.isEmpty()) {
                    v.play = Integer.parseInt(playVal);
                }
            } catch (Exception e) {}
            String danmakuVal = statObj.getString("danmaku");
            v.danmakuStr = danmakuVal;
            v.danmaku = danmakuVal;
        }
        
        JSONObject moduleAuthor = modules.getJSONObject("module_author");
        if (moduleAuthor != null) {
            v.authorName = moduleAuthor.getString("name");
            v.pubTimeStr = moduleAuthor.getString("pub_time");
            String pubTs = moduleAuthor.getString("pub_ts");
            if (pubTs != null && !pubTs.isEmpty()) {
                try {
                    v.ctime = Long.parseLong(pubTs);
                } catch (Exception e) {}
            }
        }
        if (v.ctime == null || v.ctime == 0) {
            v.ctime = archive.getLongValue("pubdate");
        }
        
        v.duration = archive.getIntValue("duration");
        String durText = archive.getString("duration_text");
        if (durText != null && !durText.isEmpty()) {
            v.durationStr = durText;
        } else {
            v.durationStr = com.bilibili.tv.util.DateHelper.formatDuration(v.duration);
        }
        
        JSONObject badgeObj = archive.getJSONObject("badge");
        if (badgeObj != null) {
            v.badgeText = badgeObj.getString("text");
            v.badgeBgColor = badgeObj.getString("bg_color");
        }
        
        v.elecArcType = archive.getIntValue("elec_arc_type");
        v.elecArcBadge = archive.getString("elec_arc_badge");
        v.isUnionVideo = archive.getIntValue("is_union_video");
        v.isLivePlayback = archive.getIntValue("is_live_playback");
        v.isSteinsGate = archive.getIntValue("is_steins_gate");
        
        v.resolveAll();
        
        return v;
    }
}
