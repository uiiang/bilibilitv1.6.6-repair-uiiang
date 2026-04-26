package com.bilibili.tv.api.video;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Keep;
import com.alibaba.fastjson.annotation.JSONField;
import java.util.List;

@Keep
public class PgcRelatedSeason implements Parcelable {
    public static final Creator<PgcRelatedSeason> CREATOR = new Creator<PgcRelatedSeason>() {
        @Override
        public PgcRelatedSeason createFromParcel(Parcel parcel) {
            return new PgcRelatedSeason(parcel);
        }

        @Override
        public PgcRelatedSeason[] newArray(int i) {
            return new PgcRelatedSeason[i];
        }
    };

    @JSONField(name = "season_id")
    public int seasonId;

    @JSONField(name = "title")
    public String title;

    @JSONField(name = "cover")
    public String cover;

    @JSONField(name = "subtitle")
    public String subtitle;

    @JSONField(name = "url")
    public String url;

    @JSONField(name = "badge")
    public String badge;

    @JSONField(name = "badge_info")
    public BadgeInfo badgeInfo;

    @JSONField(name = "new_ep")
    public NewEp newEp;

    @JSONField(name = "stat")
    public Stat stat;

    @JSONField(name = "rating")
    public Rating rating;

    @JSONField(name = "icon_font")
    public IconFont iconFont;

    @JSONField(name = "styles")
    public List<Style> styles;

    public static class BadgeInfo implements Parcelable {
        public static final Creator<BadgeInfo> CREATOR = new Creator<BadgeInfo>() {
            @Override
            public BadgeInfo createFromParcel(Parcel parcel) {
                return new BadgeInfo(parcel);
            }

            @Override
            public BadgeInfo[] newArray(int i) {
                return new BadgeInfo[i];
            }
        };

        @JSONField(name = "text")
        public String text;

        @JSONField(name = "bg_color")
        public String bgColor;

        public BadgeInfo() {}

        protected BadgeInfo(Parcel parcel) {
            this.text = parcel.readString();
            this.bgColor = parcel.readString();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.text);
            parcel.writeString(this.bgColor);
        }
    }

    public static class NewEp implements Parcelable {
        public static final Creator<NewEp> CREATOR = new Creator<NewEp>() {
            @Override
            public NewEp createFromParcel(Parcel parcel) {
                return new NewEp(parcel);
            }

            @Override
            public NewEp[] newArray(int i) {
                return new NewEp[i];
            }
        };

        @JSONField(name = "index_show")
        public String indexShow;

        @JSONField(name = "cover")
        public String cover;

        public NewEp() {}

        protected NewEp(Parcel parcel) {
            this.indexShow = parcel.readString();
            this.cover = parcel.readString();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.indexShow);
            parcel.writeString(this.cover);
        }
    }

    public static class Stat implements Parcelable {
        public static final Creator<Stat> CREATOR = new Creator<Stat>() {
            @Override
            public Stat createFromParcel(Parcel parcel) {
                return new Stat(parcel);
            }

            @Override
            public Stat[] newArray(int i) {
                return new Stat[i];
            }
        };

        @JSONField(name = "view")
        public long view;

        @JSONField(name = "danmaku")
        public long danmaku;

        @JSONField(name = "follow")
        public long follow;

        public Stat() {}

        protected Stat(Parcel parcel) {
            this.view = parcel.readLong();
            this.danmaku = parcel.readLong();
            this.follow = parcel.readLong();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.view);
            parcel.writeLong(this.danmaku);
            parcel.writeLong(this.follow);
        }
    }

    public static class Rating implements Parcelable {
        public static final Creator<Rating> CREATOR = new Creator<Rating>() {
            @Override
            public Rating createFromParcel(Parcel parcel) {
                return new Rating(parcel);
            }

            @Override
            public Rating[] newArray(int i) {
                return new Rating[i];
            }
        };

        @JSONField(name = "score")
        public double score;

        @JSONField(name = "count")
        public int count;

        public Rating() {}

        protected Rating(Parcel parcel) {
            this.score = parcel.readDouble();
            this.count = parcel.readInt();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeDouble(this.score);
            parcel.writeInt(this.count);
        }
    }

    public static class IconFont implements Parcelable {
        public static final Creator<IconFont> CREATOR = new Creator<IconFont>() {
            @Override
            public IconFont createFromParcel(Parcel parcel) {
                return new IconFont(parcel);
            }

            @Override
            public IconFont[] newArray(int i) {
                return new IconFont[i];
            }
        };

        @JSONField(name = "text")
        public String text;

        @JSONField(name = "name")
        public String name;

        public IconFont() {}

        protected IconFont(Parcel parcel) {
            this.text = parcel.readString();
            this.name = parcel.readString();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.text);
            parcel.writeString(this.name);
        }
    }

    public static class Style implements Parcelable {
        public static final Creator<Style> CREATOR = new Creator<Style>() {
            @Override
            public Style createFromParcel(Parcel parcel) {
                return new Style(parcel);
            }

            @Override
            public Style[] newArray(int i) {
                return new Style[i];
            }
        };

        @JSONField(name = "id")
        public int id;

        @JSONField(name = "name")
        public String name;

        public Style() {}

        protected Style(Parcel parcel) {
            this.id = parcel.readInt();
            this.name = parcel.readString();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.id);
            parcel.writeString(this.name);
        }
    }

    public PgcRelatedSeason() {}

    protected PgcRelatedSeason(Parcel parcel) {
        this.seasonId = parcel.readInt();
        this.title = parcel.readString();
        this.cover = parcel.readString();
        this.subtitle = parcel.readString();
        this.url = parcel.readString();
        this.badge = parcel.readString();
        this.badgeInfo = parcel.readParcelable(BadgeInfo.class.getClassLoader());
        this.newEp = parcel.readParcelable(NewEp.class.getClassLoader());
        this.stat = parcel.readParcelable(Stat.class.getClassLoader());
        this.rating = parcel.readParcelable(Rating.class.getClassLoader());
        this.iconFont = parcel.readParcelable(IconFont.class.getClassLoader());
        this.styles = parcel.createTypedArrayList(Style.CREATOR);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.seasonId);
        parcel.writeString(this.title);
        parcel.writeString(this.cover);
        parcel.writeString(this.subtitle);
        parcel.writeString(this.url);
        parcel.writeString(this.badge);
        parcel.writeParcelable(this.badgeInfo, i);
        parcel.writeParcelable(this.newEp, i);
        parcel.writeParcelable(this.stat, i);
        parcel.writeParcelable(this.rating, i);
        parcel.writeParcelable(this.iconFont, i);
        parcel.writeTypedList(this.styles);
    }

    public BiliVideoDetail toBiliVideoDetail() {
        BiliVideoDetail detail = new BiliVideoDetail();
        detail.mTitle = this.title;
        detail.mSeasonOId = this.seasonId;
        
        if (this.badgeInfo != null) {
            detail.badgeText = this.badgeInfo.text;
            detail.badgeBgColor = this.badgeInfo.bgColor;
        }
        
        if (this.newEp != null) {
            detail.mPubDateText = this.newEp.indexShow;
            detail.mCover = this.newEp.cover;
        }
        if (detail.mCover == null || detail.mCover.isEmpty()) {
            detail.mCover = this.cover;
        }
        
        detail.hideUpIcon = true;
        
        detail.mStat = new BiliVideoDetail.Stat();
        if (this.stat != null) {
            detail.mStat.mPlays = String.valueOf(this.stat.view);
            detail.mStat.mDanmakus = String.valueOf(this.stat.danmaku);
        } else {
            detail.mStat.mPlays = "0";
            detail.mStat.mDanmakus = "0";
        }
        
        return detail;
    }
}
