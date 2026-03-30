.class public Lcom/bilibili/tv/api/video/PgcInfo$UserStatus$Progress;
.super Ljava/lang/Object;
.source "PgcInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Progress"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/api/video/PgcInfo$UserStatus$Progress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public lastEpId:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "last_ep_id"
    .end annotation
.end field

.field public lastEpIndex:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "last_ep_index"
    .end annotation
.end field

.field public lastTime:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "last_time"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 698
    new-instance v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus$Progress$1;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus$Progress$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus$Progress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus$Progress;->lastEpId:I

    .line 723
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus$Progress;->lastEpIndex:Ljava/lang/String;

    .line 724
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus$Progress;->lastTime:I

    .line 725
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus$Progress;->lastEpId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus$Progress;->lastEpIndex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 736
    iget v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus$Progress;->lastTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    return-void
.end method
