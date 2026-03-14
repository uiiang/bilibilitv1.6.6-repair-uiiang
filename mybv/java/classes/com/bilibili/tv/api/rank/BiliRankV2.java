package com.bilibili.tv.api.rank;

import android.support.annotation.Keep;
import com.alibaba.fastjson.annotation.JSONField;
import java.util.List;

@Keep
public class BiliRankV2 {
    private List<Children> children;
    private String cover;
    private int danmaku;
    private int duration;
    private String gotoX;
    private String name;
    private String param;
    private int play;
    private int pts;
    private boolean showMore;
    private String title;
    private String uri;

    public List<Children> getChildren() {
        return this.children;
    }

    public void setChildren(List<Children> children) {
        this.children = children;
    }

    public String getCover() {
        return this.cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public int getDanmaku() {
        return this.danmaku;
    }

    public void setDanmaku(int danmaku) {
        this.danmaku = danmaku;
    }

    public int getDuration() {
        return this.duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getGotoX() {
        return this.gotoX;
    }

    @JSONField(name = "goto")
    public void setGotoX(String gotoX) {
        this.gotoX = gotoX;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getParam() {
        return this.param;
    }

    public void setParam(String param) {
        this.param = param;
    }

    public int getPlay() {
        return this.play;
    }

    public void setPlay(int play) {
        this.play = play;
    }

    public int getPts() {
        return this.pts;
    }

    public void setPts(int pts) {
        this.pts = pts;
    }

    public boolean isShowMore() {
        return this.showMore;
    }

    public void setShowMore(boolean showMore) {
        this.showMore = showMore;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUri() {
        return this.uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }

    @Keep
    public static class Children {
        private String cover;
        private int danmaku;
        private int duration;
        private String gotoX;
        private String name;
        private String param;
        private int play;
        private String title;
        private String uri;

        public String getCover() {
            return this.cover;
        }

        public void setCover(String cover) {
            this.cover = cover;
        }

        public int getDanmaku() {
            return this.danmaku;
        }

        public void setDanmaku(int danmaku) {
            this.danmaku = danmaku;
        }

        public int getDuration() {
            return this.duration;
        }

        public void setDuration(int duration) {
            this.duration = duration;
        }

        public String getGotoX() {
            return this.gotoX;
        }

        @JSONField(name = "goto")
        public void setGotoX(String gotoX) {
            this.gotoX = gotoX;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getParam() {
            return this.param;
        }

        public void setParam(String param) {
            this.param = param;
        }

        public int getPlay() {
            return this.play;
        }

        public void setPlay(int play) {
            this.play = play;
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public String getUri() {
            return this.uri;
        }

        public void setUri(String uri) {
            this.uri = uri;
        }
    }
}
