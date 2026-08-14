.class final Lcom/google/android/exoplayer2/container/CreationTime$1;
.super Ljava/lang/Object;
.source "CreationTime.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/container/CreationTime;
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
        "Lcom/google/android/exoplayer2/container/CreationTime;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/container/CreationTime;
    .locals 4

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/exoplayer2/container/CreationTime;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/container/CreationTime;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/container/CreationTime$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/container/CreationTime;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/container/CreationTime;
    .locals 1

    .prologue
    .line 19
    new-array v0, p1, [Lcom/google/android/exoplayer2/container/CreationTime;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/container/CreationTime$1;->newArray(I)[Lcom/google/android/exoplayer2/container/CreationTime;

    move-result-object v0

    return-object v0
.end method
