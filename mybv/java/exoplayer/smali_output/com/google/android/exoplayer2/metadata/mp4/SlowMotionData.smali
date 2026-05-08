.class public final Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;
.super Ljava/lang/Object;
.source "SlowMotionData.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/Metadata$Entry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 180
    new-instance v0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    .line 145
    invoke-static {p1}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->doSegmentsOverlap(Ljava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 146
    return-void
.end method

.method private static doSegmentsOverlap(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;",
            ">;)Z"
        }
    .end annotation

    .line 196
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 197
    return v1

    .line 199
    :cond_8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    .line 200
    .local v2, "previousEndTimeMs":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_30

    .line 201
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    cmp-long v6, v4, v2

    if-gez v6, :cond_25

    .line 202
    const/4 v1, 0x1

    return v1

    .line 204
    :cond_25
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    iget-wide v2, v4, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 207
    .end local v0    # "i":I
    :cond_30
    return v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 155
    if-ne p0, p1, :cond_4

    .line 156
    const/4 v0, 0x1

    return v0

    .line 158
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 161
    :cond_11
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    .line 162
    .local v0, "that":Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 159
    .end local v0    # "that":Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic getWrappedMetadataBytes()[B
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry$-CC;->$default$getWrappedMetadataBytes(Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic getWrappedMetadataFormat()Lcom/google/android/exoplayer2/Format;
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry$-CC;->$default$getWrappedMetadataFormat(Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry$-CC;->$default$populateMediaMetadata(Lcom/google/android/exoplayer2/metadata/Metadata$Entry;Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlowMotion: segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 178
    return-void
.end method
