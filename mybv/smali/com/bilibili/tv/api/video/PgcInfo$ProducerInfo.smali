.class public Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;
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
    name = "ProducerInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public face:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "avatar"
    .end annotation
.end field

.field public mid:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mid"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uname"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 461
    new-instance v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo$1;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->mid:J

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->name:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->face:Ljava/lang/String;

    .line 488
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 497
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->mid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 498
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->face:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    return-void
.end method
