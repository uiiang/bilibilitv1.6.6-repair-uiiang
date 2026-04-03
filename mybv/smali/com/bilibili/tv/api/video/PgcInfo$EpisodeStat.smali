.class public Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;
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
    name = "EpisodeStat"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public danmakus:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "danmakus"
    .end annotation
.end field

.field public play:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "play"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 661
    new-instance v0, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat$1;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->play:J

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->danmakus:J

    .line 684
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 693
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->play:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 694
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->danmakus:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 695
    return-void
.end method
