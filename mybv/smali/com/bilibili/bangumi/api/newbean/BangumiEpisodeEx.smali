.class public Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;
.super Ljava/lang/Object;
.source "BangumiEpisodeEx.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Stat;,
        Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Right;,
        Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Dimension;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aid:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "aid"
    .end annotation
.end field

.field public badge:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "badge"
    .end annotation
.end field

.field public badgeType:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "badge_type"
    .end annotation
.end field

.field public bvid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "bvid"
    .end annotation
.end field

.field public cid:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cid"
    .end annotation
.end field

.field public cover:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cover"
    .end annotation
.end field

.field public dimension:Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Dimension;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "dimension"
    .end annotation
.end field

.field public epid:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "id"
    .end annotation
.end field

.field public from:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "from"
    .end annotation
.end field

.field public index:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation
.end field

.field public isPaid:Z

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "link"
    .end annotation
.end field

.field public long_title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "long_title"
    .end annotation
.end field

.field public movieTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "movie_title"
    .end annotation
.end field

.field public progress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

.field public releaseDate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "release_date"
    .end annotation
.end field

.field public rights:Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Right;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rights"
    .end annotation
.end field

.field public shareCopy:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "share_copy"
    .end annotation
.end field

.field public shareUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "share_url"
    .end annotation
.end field

.field public shortLink:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "short_link"
    .end annotation
.end field

.field public stat:Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Stat;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "stat"
    .end annotation
.end field

.field public statForUnity:Lcom/alibaba/fastjson/JSONObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "stat_for_unity"
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "status"
    .end annotation
.end field

.field public subTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "subtitle"
    .end annotation
.end field

.field public vid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "vid"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$1;

    invoke-direct {v0}, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$1;-><init>()V

    sput-object v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->aid:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->cid:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->epid:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->long_title:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->status:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->index:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->vid:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 108
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    .line 110
    :cond_3f
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->aid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-wide v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->cid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    iget-wide v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->epid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget-object v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->long_title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->index:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->vid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return-void

    .line 133
    :cond_31
    const-string v0, ""

    goto :goto_2d
.end method
