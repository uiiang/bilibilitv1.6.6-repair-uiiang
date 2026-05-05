.class public final Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;
.super Ljava/lang/Object;
.source "BundledHlsMediaChunkExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final POSITION_HOLDER:Lcom/google/android/exoplayer2/extractor/PositionHolder;


# instance fields
.field final extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

.field private final multivariantPlaylistFormat:Lcom/google/android/exoplayer2/Format;

.field private final timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/PositionHolder;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->POSITION_HOLDER:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .registers 4
    .param p1, "extractor"    # Lcom/google/android/exoplayer2/extractor/Extractor;
    .param p2, "multivariantPlaylistFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 62
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Lcom/google/android/exoplayer2/Format;

    .line 63
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 64
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 3
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 69
    return-void
.end method

.method public isPackedAudioExtractor()Z
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-nez v1, :cond_15

    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-nez v1, :cond_15

    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    if-nez v1, :cond_15

    instance-of v0, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public isReusable()Z
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    if-nez v1, :cond_d

    instance-of v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public onTruncatedSegmentParsed()V
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2, v1, v2}, Lcom/google/android/exoplayer2/extractor/Extractor;->seek(JJ)V

    .line 115
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 4
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    sget-object v1, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->POSITION_HOLDER:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public recreate()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;
    .registers 5

    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->isReusable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    instance-of v1, v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    if-eqz v1, :cond_1b

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .local v0, "newExtractorInstance":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_42

    .line 96
    .end local v0    # "newExtractorInstance":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_1b
    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-eqz v1, :cond_25

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    .restart local v0    # "newExtractorInstance":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_42

    .line 98
    .end local v0    # "newExtractorInstance":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_25
    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-eqz v1, :cond_2f

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    .restart local v0    # "newExtractorInstance":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_42

    .line 100
    .end local v0    # "newExtractorInstance":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_2f
    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    if-eqz v1, :cond_39

    .line 101
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    .restart local v0    # "newExtractorInstance":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_42

    .line 102
    .end local v0    # "newExtractorInstance":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_39
    instance-of v0, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz v0, :cond_4c

    .line 103
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>()V

    .line 108
    .restart local v0    # "newExtractorInstance":Lcom/google/android/exoplayer2/extractor/Extractor;
    :goto_42
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-object v1

    .line 105
    .end local v0    # "newExtractorInstance":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected extractor type for recreation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
