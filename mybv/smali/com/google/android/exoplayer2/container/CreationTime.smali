.class public final Lcom/google/android/exoplayer2/container/CreationTime;
.super Ljava/lang/Object;
.source "CreationTime.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/exoplayer2/container/CreationTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final unixTimestampMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/container/CreationTime$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/container/CreationTime$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/container/CreationTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/google/android/exoplayer2/container/CreationTime;->unixTimestampMs:J

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p0, p1, :cond_5

    .line 67
    :cond_4
    :goto_4
    return v0

    .line 63
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 64
    goto :goto_4

    .line 66
    :cond_13
    check-cast p1, Lcom/google/android/exoplayer2/container/CreationTime;

    .line 67
    iget-wide v2, p0, Lcom/google/android/exoplayer2/container/CreationTime;->unixTimestampMs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/container/CreationTime;->unixTimestampMs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getWrappedMetadataBytes()[B
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWrappedMetadataFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/google/android/exoplayer2/container/CreationTime;->unixTimestampMs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/container/CreationTime;->unixTimestampMs:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/container/CreationTime;->unixTimestampMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/google/android/exoplayer2/container/CreationTime;->unixTimestampMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    return-void
.end method
