.class public final Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
.super Ljava/lang/Object;
.source "TrueHdSampleRechunker.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private chunkFlags:I

.field private chunkOffset:I

.field private chunkSampleCount:I

.field private chunkSize:I

.field private chunkTimeUs:J

.field private foundSyncframe:Z

.field private final syncframePrefix:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->syncframePrefix:[B

    .line 47
    return-void
.end method


# virtual methods
.method public outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .registers 11
    .param p1, "trackOutput"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .param p2, "cryptoData"    # Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 94
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    if-lez v0, :cond_14

    .line 95
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkTimeUs:J

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkFlags:I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkSize:I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkOffset:I

    move-object v1, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    .line 98
    :cond_14
    return-void
.end method

.method public reset()V
    .registers 2

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    .line 51
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    .line 52
    return-void
.end method

.method public sampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .registers 11
    .param p1, "trackOutput"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .param p2, "timeUs"    # J
    .param p4, "flags"    # I
    .param p5, "size"    # I
    .param p6, "offset"    # I
    .param p7, "cryptoData"    # Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 73
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkOffset:I

    add-int v1, p5, p6

    const/4 v2, 0x0

    if-gt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "TrueHD chunk samples must be contiguous in the sample queue."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 76
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    if-nez v0, :cond_14

    .line 77
    return-void

    .line 79
    :cond_14
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    if-nez v0, :cond_22

    .line 81
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkTimeUs:J

    .line 82
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkFlags:I

    .line 83
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkSize:I

    .line 85
    :cond_22
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkSize:I

    add-int/2addr v0, p5

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkSize:I

    .line 86
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkOffset:I

    .line 87
    const/16 v0, 0x10

    if-lt v1, v0, :cond_30

    .line 88
    invoke-virtual {p0, p1, p7}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 90
    :cond_30
    return-void
.end method

.method public startSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 5
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    if-eqz v0, :cond_5

    .line 56
    return-void

    .line 58
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->syncframePrefix:[B

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 59
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->syncframePrefix:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseTrueHdSyncframeAudioSampleCount([B)I

    move-result v0

    if-nez v0, :cond_19

    .line 61
    return-void

    .line 63
    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    .line 64
    return-void
.end method
