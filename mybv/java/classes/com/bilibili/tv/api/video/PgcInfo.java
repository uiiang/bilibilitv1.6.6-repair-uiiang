package com.bilibili.tv.api.video;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Keep;
import com.alibaba.fastjson.annotation.JSONField;
import java.util.List;

@Keep
public class PgcInfo implements Parcelable {
    public static final Parcelable.Creator<PgcInfo> CREATOR = new Parcelable.Creator<PgcInfo>() {
        @Override
        public PgcInfo createFromParcel(Parcel parcel) {
            return new PgcInfo(parcel);
        }

        @Override
        public PgcInfo[] newArray(int i) {
            return new PgcInfo[i];
        }
    };

    @JSONField(name = "season_id")
    public int seasonId;

    @JSONField(name = "media_id")
    public int mediaId;

    @JSONField(name = "title")
    public String title;

    @JSONField(name = "cover")
    public String cover;

    @JSONField(name = "type")
    public int type;

    @JSONField(name = "type_name")
    public String typeName;

    @JSONField(name = "areas")
    public List<Area> areas;

    @JSONField(name = "rating")
    public Rating rating;

    @JSONField(name = "new_ep")
    public NewEp newEp;

    @JSONField(name = "stat")
    public Stat stat;

    @JSONField(name = "evaluate")
    public String evaluate;

    @JSONField(name = "total")
    public int total;

    @JSONField(name = "episodes")
    public List<Episode> episodes;

    @JSONField(name = "section")
    public List<Section> sections;

    public static class Area implements Parcelable {
        public static final Creator<Area> CREATOR = new Creator<Area>() {
            @Override
            public Area createFromParcel(Parcel parcel) {
                return new Area(parcel);
            }

            @Override
            public Area[] newArray(int i) {
                return new Area[i];
            }
        };

        @JSONField(name = "id")
        public int id;

        @JSONField(name = "name")
        public String name;

        public Area() {}

        protected Area(Parcel parcel) {
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

        @JSONField(name = "id")
        public int id;

        @JSONField(name = "index")
        public String index;

        @JSONField(name = "index_show")
        public String indexShow;

        public NewEp() {}

        protected NewEp(Parcel parcel) {
            this.id = parcel.readInt();
            this.index = parcel.readString();
            this.indexShow = parcel.readString();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.id);
            parcel.writeString(this.index);
            parcel.writeString(this.indexShow);
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

        @JSONField(name = "views")
        public long views;

        @JSONField(name = "danmakus")
        public long danmakus;

        public Stat() {}

        protected Stat(Parcel parcel) {
            this.views = parcel.readLong();
            this.danmakus = parcel.readLong();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.views);
            parcel.writeLong(this.danmakus);
        }
    }

    public static class EpisodeStat implements Parcelable {
        public static final Creator<EpisodeStat> CREATOR = new Creator<EpisodeStat>() {
            @Override
            public EpisodeStat createFromParcel(Parcel parcel) {
                return new EpisodeStat(parcel);
            }

            @Override
            public EpisodeStat[] newArray(int i) {
                return new EpisodeStat[i];
            }
        };

        @JSONField(name = "play")
        public long play;

        @JSONField(name = "danmakus")
        public long danmakus;

        public EpisodeStat() {}

        protected EpisodeStat(Parcel parcel) {
            this.play = parcel.readLong();
            this.danmakus = parcel.readLong();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.play);
            parcel.writeLong(this.danmakus);
        }
    }

    public static class Episode implements Parcelable {
        public static final Creator<Episode> CREATOR = new Creator<Episode>() {
            @Override
            public Episode createFromParcel(Parcel parcel) {
                return new Episode(parcel);
            }

            @Override
            public Episode[] newArray(int i) {
                return new Episode[i];
            }
        };

        @JSONField(name = "id")
        public int id;

        @JSONField(name = "aid")
        public long aid;

        @JSONField(name = "bvid")
        public String bvid;

        @JSONField(name = "cid")
        public long cid;

        @JSONField(name = "title")
        public String title;

        @JSONField(name = "long_title")
        public String longTitle;

        @JSONField(name = "show_title")
        public String showTitle;

        @JSONField(name = "cover")
        public String cover;

        @JSONField(name = "link")
        public String link;

        @JSONField(name = "duration")
        public long duration;

        @JSONField(name = "pub_time")
        public long pubTime;

        @JSONField(name = "stat")
        public EpisodeStat stat;

        @JSONField(name = "subtitle")
        public String subtitle;

        public Episode() {}

        protected Episode(Parcel parcel) {
            this.id = parcel.readInt();
            this.aid = parcel.readLong();
            this.bvid = parcel.readString();
            this.cid = parcel.readLong();
            this.title = parcel.readString();
            this.longTitle = parcel.readString();
            this.showTitle = parcel.readString();
            this.cover = parcel.readString();
            this.link = parcel.readString();
            this.duration = parcel.readLong();
            this.pubTime = parcel.readLong();
            this.stat = parcel.readParcelable(EpisodeStat.class.getClassLoader());
            this.subtitle = parcel.readString();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.id);
            parcel.writeLong(this.aid);
            parcel.writeString(this.bvid);
            parcel.writeLong(this.cid);
            parcel.writeString(this.title);
            parcel.writeString(this.longTitle);
            parcel.writeString(this.showTitle);
            parcel.writeString(this.cover);
            parcel.writeString(this.link);
            parcel.writeLong(this.duration);
            parcel.writeLong(this.pubTime);
            parcel.writeParcelable(this.stat, i);
            parcel.writeString(this.subtitle);
        }
    }

    public static class Section implements Parcelable {
        public static final Creator<Section> CREATOR = new Creator<Section>() {
            @Override
            public Section createFromParcel(Parcel parcel) {
                return new Section(parcel);
            }

            @Override
            public Section[] newArray(int i) {
                return new Section[i];
            }
        };

        @JSONField(name = "title")
        public String title;

        @JSONField(name = "episodes")
        public List<Episode> episodes;

        public Section() {}

        protected Section(Parcel parcel) {
            this.title = parcel.readString();
            this.episodes = parcel.createTypedArrayList(Episode.CREATOR);
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.title);
            parcel.writeTypedList(this.episodes);
        }
    }

    public PgcInfo() {}

    protected PgcInfo(Parcel parcel) {
        this.seasonId = parcel.readInt();
        this.mediaId = parcel.readInt();
        this.title = parcel.readString();
        this.cover = parcel.readString();
        this.type = parcel.readInt();
        this.typeName = parcel.readString();
        this.areas = parcel.createTypedArrayList(Area.CREATOR);
        this.rating = parcel.readParcelable(Rating.class.getClassLoader());
        this.newEp = parcel.readParcelable(NewEp.class.getClassLoader());
        this.stat = parcel.readParcelable(Stat.class.getClassLoader());
        this.evaluate = parcel.readString();
        this.total = parcel.readInt();
        this.episodes = parcel.createTypedArrayList(Episode.CREATOR);
        this.sections = parcel.createTypedArrayList(Section.CREATOR);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.seasonId);
        parcel.writeInt(this.mediaId);
        parcel.writeString(this.title);
        parcel.writeString(this.cover);
        parcel.writeInt(this.type);
        parcel.writeString(this.typeName);
        parcel.writeTypedList(this.areas);
        parcel.writeParcelable(this.rating, i);
        parcel.writeParcelable(this.newEp, i);
        parcel.writeParcelable(this.stat, i);
        parcel.writeString(this.evaluate);
        parcel.writeInt(this.total);
        parcel.writeTypedList(this.episodes);
        parcel.writeTypedList(this.sections);
    }

    public String getAreaString() {
        if (areas == null || areas.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < areas.size(); i++) {
            if (i > 0) {
                sb.append(" ");
            }
            sb.append(areas.get(i).name);
        }
        return sb.toString();
    }

    public String getRatingString() {
        if (rating == null) {
            return "";
        }
        return "★ " + String.format("%.1f", rating.score);
    }

    public String getTypeName() {
        if (typeName != null && !typeName.isEmpty()) {
            return typeName;
        }
        switch (type) {
            case 1:
                return "番剧";
            case 2:
                return "电影";
            case 3:
                return "纪录片";
            case 4:
                return "国创";
            case 5:
                return "电视剧";
            case 7:
                return "综艺";
            default:
                return "PGC";
        }
    }
}
