.class final Lcom/bilibili/tv/api/video/PgcInfo$1;
.super Ljava/lang/Object;
.source "PgcInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/video/PgcInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/bilibili/tv/api/video/PgcInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/bilibili/tv/api/video/PgcInfo;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/bilibili/tv/api/video/PgcInfo;

    invoke-direct {v0, p1}, Lcom/bilibili/tv/api/video/PgcInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/api/video/PgcInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/bilibili/tv/api/video/PgcInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/bilibili/tv/api/video/PgcInfo;
    .locals 1

    .prologue
    .line 20
    new-array v0, p1, [Lcom/bilibili/tv/api/video/PgcInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/api/video/PgcInfo$1;->newArray(I)[Lcom/bilibili/tv/api/video/PgcInfo;

    move-result-object v0

    return-object v0
.end method
