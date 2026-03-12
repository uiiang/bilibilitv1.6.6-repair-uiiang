package com.bilibili.tv.api.main;

import android.support.annotation.Keep;
import com.alibaba.fastjson.annotation.JSONField;
import java.util.List;

/* compiled from: BL */
@Keep
/* loaded from: classes.dex */
public final class MainRecommendEx {

    @JSONField(name = "data")
    private List<Content> data;

    public final List<Content> getData() {
        return this.data;
    }

    public final void setData(List<Content> list) {
        this.data = list;
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class Content {

        @JSONField(name = "card_goto")
        private String cardGoto;

        @JSONField(name = "card_type")
        private String cardType;

        @JSONField(name = "cover")
        private String cover;

        @JSONField(name = "jump_id")
        private Long jumpId;

        @JSONField(name = "title")
        private String title;

        @JSONField(name = "uri")
        private String uri;

        @JSONField(name = "owner_name")
        private String ownerName;

        @JSONField(name = "play")
        private int play;

        @JSONField(name = "danmaku")
        private int danmaku;

        @JSONField(name = "duration")
        private int duration;

        public final String getCardType() {
            return this.cardType;
        }

        public final void setCardType(String str) {
            this.cardType = str;
        }

        public final String getCardGoto() {
            return this.cardGoto;
        }

        public final void setCardGoto(String str) {
            this.cardGoto = str;
        }

        public final Long getJumpId() {
            return this.jumpId;
        }

        public final void setJumpId(Long num) {
            this.jumpId = num;
        }

        public final String getCover() {
            return this.cover;
        }

        public final void setCover(String str) {
            this.cover = str;
        }

        public final String getTitle() {
            return this.title;
        }

        public final void setTitle(String str) {
            this.title = str;
        }

        public final String getUri() {
            return this.uri;
        }

        public final void setUri(String str) {
            this.uri = str;
        }

        public final String getOwnerName() {
            return this.ownerName;
        }

        public final void setOwnerName(String str) {
            this.ownerName = str;
        }

        public final int getPlay() {
            return this.play;
        }

        public final void setPlay(int i) {
            this.play = i;
        }

        public final int getDanmaku() {
            return this.danmaku;
        }

        public final void setDanmaku(int i) {
            this.danmaku = i;
        }

        public final int getDuration() {
            return this.duration;
        }

        public final void setDuration(int i) {
            this.duration = i;
        }
    }
}