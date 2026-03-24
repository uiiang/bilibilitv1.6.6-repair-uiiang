package com.bilibili.tv.api.search;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Keep;
import com.alibaba.fastjson.annotation.JSONField;
import java.util.ArrayList;

@Keep
public class BiliSearchResultNew extends Object implements Parcelable {
    public ArrayList<Video> archive;
    public ArrayList<Bangumi> movie;
    public ArrayList<Bangumi> season;
    public ArrayList<Upuser> upuser;
    public String trackId;

    public static final Parcelable.Creator<BiliSearchResultNew> CREATOR = new Parcelable.Creator<BiliSearchResultNew>() {
        @Override
        public BiliSearchResultNew createFromParcel(Parcel source) {
            return new BiliSearchResultNew(source);
        }

        @Override
        public BiliSearchResultNew[] newArray(int size) {
            return new BiliSearchResultNew[size];
        }
    };

    public BiliSearchResultNew() {
    }

    protected BiliSearchResultNew(Parcel source) {
        this.trackId = source.readString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.trackId);
    }

    @Keep
    public static class Video extends Object implements Parcelable {
        public String author;
        public String cover;
        public String danmaku;
        public String desc;
        public String duration;
        public String param;
        public String play;
        public String pubdateFormatted;
        public String title;
        public String trackId;
        public String uri;

        public static final Parcelable.Creator<Video> CREATOR = new Parcelable.Creator<Video>() {
            @Override
            public Video createFromParcel(Parcel source) {
                return new Video(source);
            }

            @Override
            public Video[] newArray(int size) {
                return new Video[size];
            }
        };

        public Video() {
        }

        protected Video(Parcel source) {
            this.title = source.readString();
            this.cover = source.readString();
            this.uri = source.readString();
            this.param = source.readString();
            this.duration = source.readString();
            this.desc = source.readString();
            this.author = source.readString();
            this.play = source.readString();
            this.danmaku = source.readString();
            this.trackId = source.readString();
            this.pubdateFormatted = source.readString();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.title);
            dest.writeString(this.cover);
            dest.writeString(this.uri);
            dest.writeString(this.param);
            dest.writeString(this.duration);
            dest.writeString(this.desc);
            dest.writeString(this.author);
            dest.writeString(this.play);
            dest.writeString(this.danmaku);
            dest.writeString(this.trackId);
            dest.writeString(this.pubdateFormatted);
        }
    }

    @Keep
    public static class Bangumi extends Object implements Parcelable {
        public String area;
        public String areas;
        public String catDesc;
        public String cover;
        public int finish;
        public String index;
        public String indexShow;
        public String newestCat;
        public String newestSeason;
        public String param;
        public int rating;
        public int seasonType;
        public String seasonTypeName;
        public String staff;
        public String title;
        public String totalCount;
        public String uri;
        public int vote;

        public static final Parcelable.Creator<Bangumi> CREATOR = new Parcelable.Creator<Bangumi>() {
            @Override
            public Bangumi createFromParcel(Parcel source) {
                return new Bangumi(source);
            }

            @Override
            public Bangumi[] newArray(int size) {
                return new Bangumi[size];
            }
        };

        public Bangumi() {
        }

        protected Bangumi(Parcel source) {
            this.title = source.readString();
            this.cover = source.readString();
            this.uri = source.readString();
            this.param = source.readString();
            this.index = source.readString();
            this.totalCount = source.readString();
            this.finish = source.readInt();
            this.catDesc = source.readString();
            this.newestCat = source.readString();
            this.newestSeason = source.readString();
            this.areas = source.readString();
            this.indexShow = source.readString();
            this.seasonTypeName = source.readString();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.title);
            dest.writeString(this.cover);
            dest.writeString(this.uri);
            dest.writeString(this.param);
            dest.writeString(this.index);
            dest.writeString(this.totalCount);
            dest.writeInt(this.finish);
            dest.writeString(this.catDesc);
            dest.writeString(this.newestCat);
            dest.writeString(this.newestSeason);
            dest.writeString(this.areas);
            dest.writeString(this.indexShow);
            dest.writeString(this.seasonTypeName);
        }
    }

    @Keep
    public static class Upuser extends Object implements Parcelable {
        public String desc;
        public String face;
        public int fans;
        public String len;
        public String name;
        public String officialVerify;
        public String param;
        public String uid;
        public String uri;
        public String userVerify;
        public String vip;

        public static final Parcelable.Creator<Upuser> CREATOR = new Parcelable.Creator<Upuser>() {
            @Override
            public Upuser createFromParcel(Parcel source) {
                return new Upuser(source);
            }

            @Override
            public Upuser[] newArray(int size) {
                return new Upuser[size];
            }
        };

        public Upuser() {
        }

        protected Upuser(Parcel source) {
            this.name = source.readString();
            this.uid = source.readString();
            this.face = source.readString();
            this.len = source.readString();
            this.fans = source.readInt();
            this.desc = source.readString();
            this.param = source.readString();
            this.uri = source.readString();
            this.officialVerify = source.readString();
            this.userVerify = source.readString();
            this.vip = source.readString();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.name);
            dest.writeString(this.uid);
            dest.writeString(this.face);
            dest.writeString(this.len);
            dest.writeInt(this.fans);
            dest.writeString(this.desc);
            dest.writeString(this.param);
            dest.writeString(this.uri);
            dest.writeString(this.officialVerify);
            dest.writeString(this.userVerify);
            dest.writeString(this.vip);
        }
    }

    @Keep
    public static class Special extends Object implements Parcelable {
        public String cover;
        public String desc;
        public String title;
        public String type;
        public String uri;

        public static final Parcelable.Creator<Special> CREATOR = new Parcelable.Creator<Special>() {
            @Override
            public Special createFromParcel(Parcel source) {
                return new Special(source);
            }

            @Override
            public Special[] newArray(int size) {
                return new Special[size];
            }
        };

        public Special() {
        }

        protected Special(Parcel source) {
            this.title = source.readString();
            this.cover = source.readString();
            this.desc = source.readString();
            this.uri = source.readString();
            this.type = source.readString();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.title);
            dest.writeString(this.cover);
            dest.writeString(this.desc);
            dest.writeString(this.uri);
            dest.writeString(this.type);
        }
    }

    @Keep
    public static class Movie extends Object implements Parcelable {
        public String actor;
        public String area;
        public String cover;
        public String desc;
        public int episode;
        public String label;
        public String msg;
        public String new冒;
        public String param;
        public String site;
        public String staff;
        public String style;
        public String title;
        public String uri;
        public String year;

        public static final Parcelable.Creator<Movie> CREATOR = new Parcelable.Creator<Movie>() {
            @Override
            public Movie createFromParcel(Parcel source) {
                return new Movie(source);
            }

            @Override
            public Movie[] newArray(int size) {
                return new Movie[size];
            }
        };

        public Movie() {
        }

        protected Movie(Parcel source) {
            this.title = source.readString();
            this.cover = source.readString();
            this.uri = source.readString();
            this.actor = source.readString();
            this.staff = source.readString();
            this.desc = source.readString();
            this.area = source.readString();
            this.style = source.readString();
            this.year = source.readString();
            this.param = source.readString();
            this.site = source.readString();
            this.episode = source.readInt();
            this.label = source.readString();
            this.msg = source.readString();
            this.new冒 = source.readString();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.title);
            dest.writeString(this.cover);
            dest.writeString(this.uri);
            dest.writeString(this.actor);
            dest.writeString(this.staff);
            dest.writeString(this.desc);
            dest.writeString(this.area);
            dest.writeString(this.style);
            dest.writeString(this.year);
            dest.writeString(this.param);
            dest.writeString(this.site);
            dest.writeInt(this.episode);
            dest.writeString(this.label);
            dest.writeString(this.msg);
            dest.writeString(this.new冒);
        }
    }
}