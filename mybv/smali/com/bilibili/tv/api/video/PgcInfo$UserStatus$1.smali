.class final Lcom/bilibili/tv/api/video/PgcInfo$UserStatus$1;
.super Ljava/lang/Object;
.source "PgcInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;
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
        "Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    invoke-direct {v0, p1}, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;
    .locals 1

    .prologue
    .line 89
    new-array v0, p1, [Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus$1;->newArray(I)[Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    move-result-object v0

    return-object v0
.end method
