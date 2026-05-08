.class public final Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;
.super Ljava/lang/Object;
.source "BaseMediaChunkOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseMediaChunkOutput"


# instance fields
.field private final sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

.field private final trackTypes:[I


# direct methods
.method public constructor <init>([I[Lcom/google/android/exoplayer2/source/SampleQueue;)V
    .registers 3
    .param p1, "trackTypes"    # [I
    .param p2, "sampleQueues"    # [Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->trackTypes:[I

    .line 48
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 49
    return-void
.end method


# virtual methods
.method public getWriteIndices()[I
    .registers 5

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    new-array v0, v0, [I

    .line 65
    .local v0, "writeIndices":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    if-ge v1, v3, :cond_16

    .line 66
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v2

    aput v2, v0, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 68
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method public setSampleOffsetUs(J)V
    .registers 7
    .param p1, "sampleOffsetUs"    # J

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 77
    .local v3, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->setSampleOffsetUs(J)V

    .line 76
    .end local v3    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 79
    :cond_e
    return-void
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .registers 6
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->trackTypes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 54
    aget v1, v1, v0

    if-ne p2, v1, :cond_f

    .line 55
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v1, v1, v0

    return-object v1

    .line 53
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    .end local v0    # "i":I
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmatched track of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMediaChunkOutput"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    return-object v0
.end method
