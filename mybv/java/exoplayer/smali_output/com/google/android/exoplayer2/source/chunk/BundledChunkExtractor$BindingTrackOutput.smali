.class final Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;
.super Ljava/lang/Object;
.source "BundledChunkExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BindingTrackOutput"
.end annotation


# instance fields
.field private endTimeUs:J

.field private final fakeTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

.field private final id:I

.field private final manifestFormat:Lcom/google/android/exoplayer2/Format;

.field public sampleFormat:Lcom/google/android/exoplayer2/Format;

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final type:I


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/Format;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "manifestFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput p1, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->id:I

    .line 205
    iput p2, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->type:I

    .line 206
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->manifestFormat:Lcom/google/android/exoplayer2/Format;

    .line 207
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->fakeTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    .line 208
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;J)V
    .registers 6
    .param p1, "trackOutputProvider"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;
    .param p2, "endTimeUs"    # J

    .line 211
    if-nez p1, :cond_7

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->fakeTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 213
    return-void

    .line 215
    :cond_7
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->endTimeUs:J

    .line 216
    iget v0, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->id:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->type:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 217
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v1, :cond_1a

    .line 218
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 220
    :cond_1a
    return-void
.end method

.method public format(Lcom/google/android/exoplayer2/Format;)V
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 224
    nop

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->manifestFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, p1

    :goto_b
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 227
    return-void
.end method

.method public synthetic sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/TrackOutput$-CC;->$default$sampleData(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZI)I
    .registers 6
    .param p1, "input"    # Lcom/google/android/exoplayer2/upstream/DataReader;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .param p4, "sampleDataPart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v0

    return v0
.end method

.method public synthetic sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput$-CC;->$default$sampleData(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V
    .registers 5
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "length"    # I
    .param p3, "sampleDataPart"    # I

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 239
    return-void
.end method

.method public sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .registers 15
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "cryptoData"    # Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 248
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->endTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    cmp-long v2, p1, v0

    if-ltz v2, :cond_13

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->fakeTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 251
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 252
    return-void
.end method
