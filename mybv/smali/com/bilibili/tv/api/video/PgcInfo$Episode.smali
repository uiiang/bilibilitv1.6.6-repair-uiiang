.class public Lcom/bilibili/tv/api/video/PgcInfo$Episode;
.super Ljava/lang/Object;
.source "PgcInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/video/PgcInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Episode"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/api/video/PgcInfo$Episode;",
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

.field public badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "badge_info"
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

.field public duration:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "duration"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "id"
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "link"
    .end annotation
.end field

.field public longTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "long_title"
    .end annotation
.end field

.field public pubTime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pub_time"
    .end annotation
.end field

.field public showTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "show_title"
    .end annotation
.end field

.field public stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "stat"
    .end annotation
.end field

.field public statForUnity:Lcom/alibaba/fastjson/JSONObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "stat_for_unity"
    .end annotation
.end field

.field public subtitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "subtitle"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 752
    new-instance v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode$1;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/PgcInfo$Episode$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    .line 813
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->aid:J

    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->bvid:Ljava/lang/String;

    .line 815
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    .line 816
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->title:Ljava/lang/String;

    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->showTitle:Ljava/lang/String;

    .line 819
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cover:Ljava/lang/String;

    .line 820
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->link:Ljava/lang/String;

    .line 821
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->duration:J

    .line 822
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->pubTime:J

    .line 823
    const-class v0, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->subtitle:Ljava/lang/String;

    .line 825
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 826
    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 827
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    .line 829
    :cond_6b
    const-class v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    .line 830
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 834
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 839
    iget v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->aid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 841
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->bvid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 842
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 843
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->showTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 848
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 849
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->pubTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 850
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 851
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    :goto_4b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 854
    return-void

    .line 852
    :cond_54
    const-string v0, ""

    goto :goto_4b
.end method
