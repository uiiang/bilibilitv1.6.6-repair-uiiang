.class public Lcom/bilibili/tv/api/video/PgcInfo$Stat;
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
    name = "Stat"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/api/video/PgcInfo$Stat;",
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

.field public views:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "views"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 623
    new-instance v0, Lcom/bilibili/tv/api/video/PgcInfo$Stat$1;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/PgcInfo$Stat$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->views:J

    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->danmakus:J

    .line 646
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 655
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->views:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 656
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->danmakus:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 657
    return-void
.end method
