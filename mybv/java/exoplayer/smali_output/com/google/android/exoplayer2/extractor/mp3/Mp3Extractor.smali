.class public final Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x8

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS:I = 0x2

.field public static final FLAG_ENABLE_INDEX_SEEKING:I = 0x4

.field private static final MAX_SNIFF_BYTES:I = 0x8000

.field private static final MAX_SYNC_BYTES:I = 0x20000

.field private static final MPEG_AUDIO_HEADER_MASK:I = -0x1f400

.field private static final REQUIRED_ID3_FRAME_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

.field private static final SCRATCH_LENGTH:I = 0xa

.field private static final SEEK_HEADER_INFO:I = 0x496e666f

.field private static final SEEK_HEADER_UNSET:I = 0x0

.field private static final SEEK_HEADER_VBRI:I = 0x56425249

.field private static final SEEK_HEADER_XING:I = 0x58696e67


# instance fields
.field private basisTimeUs:J

.field private currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private disableSeeking:Z

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private firstSamplePosition:J

.field private final flags:I

.field private final forcedFirstSampleTimestampUs:J

.field private final gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

.field private final id3Peeker:Lcom/google/android/exoplayer2/extractor/Id3Peeker;

.field private isSeekInProgress:Z

.field private metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private realTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private sampleBytesRemaining:I

.field private samplesRead:J

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private seekTimeUs:J

.field private seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

.field private final skippingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

.field private synchronizedHeaderData:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 129
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(I)V

    .line 178
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 184
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    .line 185
    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "forcedFirstSampleTimestampUs"    # J

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    .line 194
    or-int/lit8 p1, p1, 0x1

    .line 196
    :cond_9
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    .line 197
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    .line 198
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 199
    new-instance v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 200
    new-instance v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    .line 201
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 202
    new-instance v0, Lcom/google/android/exoplayer2/extractor/Id3Peeker;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/Id3Peeker;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->id3Peeker:Lcom/google/android/exoplayer2/extractor/Id3Peeker;

    .line 203
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 204
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 205
    return-void
.end method

.method private assertInitialized()V
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->realTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    return-void
.end method

.method private computeSeeker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    .registers 18
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->maybeReadSeekFrame(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    move-result-object v1

    .line 454
    .local v1, "seekFrameSeeker":Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->maybeHandleSeekMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;J)Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;

    move-result-object v2

    .line 456
    .local v2, "metadataSeeker":Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    if-eqz v3, :cond_1a

    .line 457
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp3/Seeker$UnseekableSeeker;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker$UnseekableSeeker;-><init>()V

    return-object v3

    .line 460
    :cond_1a
    const/4 v3, 0x0

    .line 461
    .local v3, "resultSeeker":Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4d

    .line 463
    const-wide/16 v4, -0x1

    .line 464
    .local v4, "dataEndPosition":J
    if-eqz v2, :cond_2e

    .line 465
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v6

    .line 466
    .local v6, "durationUs":J
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v4

    goto :goto_3f

    .line 467
    .end local v6    # "durationUs":J
    :cond_2e
    if-eqz v1, :cond_39

    .line 468
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v6

    .line 469
    .restart local v6    # "durationUs":J
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v4

    goto :goto_3f

    .line 471
    .end local v6    # "durationUs":J
    :cond_39
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->getId3TlenUs(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v6

    .line 473
    .restart local v6    # "durationUs":J
    :goto_3f
    new-instance v15, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    .line 475
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    move-object v8, v15

    move-wide v9, v6

    move-wide v13, v4

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;-><init>(JJJ)V

    move-object v3, v15

    .line 476
    .end local v4    # "dataEndPosition":J
    .end local v6    # "durationUs":J
    goto :goto_54

    :cond_4d
    if-eqz v2, :cond_51

    .line 477
    move-object v3, v2

    goto :goto_54

    .line 478
    :cond_51
    if-eqz v1, :cond_54

    .line 479
    move-object v3, v1

    .line 482
    :cond_54
    :goto_54
    const/4 v4, 0x1

    if-eqz v3, :cond_66

    .line 483
    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->isSeekable()Z

    move-result v5

    if-nez v5, :cond_63

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_63

    goto :goto_66

    .line 489
    :cond_63
    move-object/from16 v5, p1

    goto :goto_74

    .line 484
    :cond_66
    :goto_66
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v4, 0x0

    .line 485
    :goto_6e
    move-object/from16 v5, p1

    invoke-direct {v0, v5, v4}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    move-result-object v3

    .line 489
    :goto_74
    return-object v3
.end method

.method private computeTimeUs(J)J
    .registers 9
    .param p1, "samplesRead"    # J

    .line 353
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/32 v2, 0xf4240

    mul-long v2, v2, p1

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v4, v4, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getConstantBitrateSeeker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    .registers 12
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "allowSeeksIfLengthUnknown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 544
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;

    .line 545
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    move-object v2, v0

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;-><init>(JJLcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;Z)V

    .line 544
    return-object v0
.end method

.method private static getId3TlenUs(Lcom/google/android/exoplayer2/metadata/Metadata;)J
    .registers 6
    .param p0, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 597
    if-eqz p0, :cond_36

    .line 598
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    .line 599
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_36

    .line 600
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 601
    .local v2, "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    if-eqz v3, :cond_33

    move-object v3, v2

    check-cast v3, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    iget-object v3, v3, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    .line 602
    const-string v4, "TLEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 603
    move-object v3, v2

    check-cast v3, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    iget-object v3, v3, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v3

    return-wide v3

    .line 599
    .end local v2    # "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 607
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_36
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private static getSeekFrameHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I
    .registers 4
    .param p0, "frame"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "xingBase"    # I

    .line 565
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1a

    .line 566
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 567
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 568
    .local v0, "headerData":I
    const v1, 0x58696e67

    if-eq v0, v1, :cond_19

    const v1, 0x496e666f

    if-ne v0, v1, :cond_1a

    .line 569
    :cond_19
    return v0

    .line 572
    .end local v0    # "headerData":I
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_31

    .line 573
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 574
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    const v1, 0x56425249

    if-ne v0, v1, :cond_31

    .line 575
    return v1

    .line 578
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method private static headersMatch(IJ)Z
    .registers 8
    .param p0, "headerA"    # I
    .param p1, "headerB"    # J

    .line 556
    const v0, -0x1f400

    and-int/2addr v0, p0

    int-to-long v0, v0

    const-wide/32 v2, -0x1f400

    and-long/2addr v2, p1

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic lambda$static$1(IIIII)Z
    .registers 8
    .param p0, "majorVersion"    # I
    .param p1, "id0"    # I
    .param p2, "id1"    # I
    .param p3, "id2"    # I
    .param p4, "id3"    # I

    .line 131
    const/16 v0, 0x43

    const/4 v1, 0x2

    const/16 v2, 0x4d

    if-ne p1, v0, :cond_11

    const/16 v0, 0x4f

    if-ne p2, v0, :cond_11

    if-ne p3, v2, :cond_11

    if-eq p4, v2, :cond_1f

    if-eq p0, v1, :cond_1f

    :cond_11
    if-ne p1, v2, :cond_21

    const/16 v0, 0x4c

    if-ne p2, v0, :cond_21

    if-ne p3, v0, :cond_21

    const/16 v0, 0x54

    if-eq p4, v0, :cond_1f

    if-ne p0, v1, :cond_21

    :cond_1f
    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method private static maybeHandleSeekMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;J)Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;
    .registers 9
    .param p0, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;
    .param p1, "firstFramePosition"    # J

    .line 584
    if-eqz p0, :cond_20

    .line 585
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    .line 586
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 587
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 588
    .local v2, "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    if-eqz v3, :cond_1d

    .line 589
    move-object v3, v2

    check-cast v3, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->getId3TlenUs(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v4

    invoke-static {p1, p2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;->create(JLcom/google/android/exoplayer2/metadata/id3/MlltFrame;J)Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;

    move-result-object v3

    return-object v3

    .line 586
    .end local v2    # "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 593
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeReadSeekFrame(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    .registers 13
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 505
    .local v0, "frame":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    const/4 v8, 0x0

    invoke-interface {p1, v1, v8, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 507
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->version:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x15

    if-eqz v1, :cond_28

    .line 508
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->channels:I

    if-eq v1, v2, :cond_31

    const/16 v3, 0x24

    goto :goto_31

    .line 509
    :cond_28
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->channels:I

    if-eq v1, v2, :cond_2f

    goto :goto_31

    :cond_2f
    const/16 v3, 0xd

    :cond_31
    :goto_31
    move v1, v3

    .line 510
    .local v1, "xingBase":I
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->getSeekFrameHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v9

    .line 512
    .local v9, "seekHeader":I
    const v2, 0x58696e67

    const v10, 0x496e666f

    if-eq v9, v2, :cond_62

    if-ne v9, v10, :cond_41

    goto :goto_62

    .line 527
    :cond_41
    const v2, 0x56425249

    if-ne v9, v2, :cond_5d

    .line 528
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->create(JJLcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;

    move-result-object v2

    .line 529
    .local v2, "seeker":Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_b3

    .line 532
    .end local v2    # "seeker":Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    :cond_5d
    const/4 v2, 0x0

    .line 533
    .restart local v2    # "seeker":Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_b3

    .line 513
    .end local v2    # "seeker":Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    :cond_62
    :goto_62
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->create(JJLcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;

    move-result-object v2

    .line 514
    .restart local v2    # "seeker":Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    if-eqz v2, :cond_9d

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v3

    if-nez v3, :cond_9d

    .line 516
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 517
    add-int/lit16 v3, v1, 0x8d

    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 518
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p1, v3, v8, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 519
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 520
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromXingHeaderValue(I)Z

    .line 522
    :cond_9d
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 523
    if-eqz v2, :cond_b3

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->isSeekable()Z

    move-result v3

    if-nez v3, :cond_b3

    if-ne v9, v10, :cond_b3

    .line 525
    invoke-direct {p0, p1, v8}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    move-result-object v3

    return-object v3

    .line 535
    :cond_b3
    :goto_b3
    return-object v2
.end method

.method private peekEndOfStreamOrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 10
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 436
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v2

    .line 437
    .local v2, "dataEndPosition":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1c

    .line 438
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long v6, v2, v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_1c

    .line 439
    return v1

    .line 443
    .end local v2    # "dataEndPosition":J
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 444
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 443
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0
    :try_end_28
    .catch Ljava/io/EOFException; {:try_start_1c .. :try_end_28} :catch_2a

    xor-int/2addr v0, v1

    return v0

    .line 445
    :catch_2a
    move-exception v0

    .line 446
    .local v0, "e":Ljava/io/EOFException;
    return v1
.end method

.method private readInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .registers 7
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    .line 268
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v0, :cond_c

    .line 270
    const/4 v0, 0x0

    :try_start_5
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_8} :catch_9

    .line 273
    goto :goto_c

    .line 271
    :catch_9
    move-exception v0

    .line 272
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, -0x1

    return v1

    .line 275
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    if-nez v0, :cond_6c

    .line 276
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->computeSeeker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    .line 277
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 280
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 281
    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->channels:I

    .line 282
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    .line 283
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 284
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 285
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 286
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_58

    const/4 v2, 0x0

    goto :goto_5a

    :cond_58
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    :goto_5a
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 287
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 278
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 288
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    goto :goto_83

    .line 289
    :cond_6c
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_83

    .line 290
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 291
    .local v0, "inputPosition":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_83

    .line 293
    sub-long/2addr v2, v0

    long-to-int v3, v2

    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 296
    .end local v0    # "inputPosition":J
    :cond_83
    :goto_83
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    return v0
.end method

.method private readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .registers 13
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "realTrackOutput",
            "seeker"
        }
    .end annotation

    .line 301
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_9e

    .line 302
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 303
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 304
    return v2

    .line 306
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 308
    .local v0, "sampleHeaderData":I
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 309
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->getFrameSize(I)I

    move-result v4

    if-ne v4, v2, :cond_2c

    goto :goto_98

    .line 315
    :cond_2c
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 316
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v6

    if-nez v8, :cond_5e

    .line 317
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    invoke-interface {v4, v8, v9}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 318
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_5e

    .line 319
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v4

    .line 320
    .local v4, "embeddedFirstSampleTimestampUs":J
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 323
    .end local v4    # "embeddedFirstSampleTimestampUs":J
    :cond_5e
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v4, v4, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 324
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    instance-of v5, v4, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    if-eqz v5, :cond_9e

    .line 325
    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    .line 328
    .local v4, "indexSeeker":Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v7, v7, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 329
    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v5

    .line 330
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v9, v9, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 328
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->maybeAddSeekPoint(JJ)V

    .line 331
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    if-eqz v5, :cond_9e

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 332
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    .line 333
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->realTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    goto :goto_9e

    .line 311
    .end local v4    # "indexSeeker":Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;
    :cond_98
    :goto_98
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 312
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 313
    return v3

    .line 337
    .end local v0    # "sampleHeaderData":I
    :cond_9e
    :goto_9e
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    invoke-interface {v0, p1, v4, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v0

    .line 338
    .local v0, "bytesAppended":I
    if-ne v0, v2, :cond_a9

    .line 339
    return v2

    .line 341
    :cond_a9
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 342
    if-lez v1, :cond_b1

    .line 343
    return v3

    .line 345
    :cond_b1
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 346
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v5

    const/4 v7, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v8, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 345
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 347
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v4, v4, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 348
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 349
    return v3
.end method

.method private synchronize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    .registers 16
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "sniffing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "validFrameCount":I
    const/4 v1, 0x0

    .line 359
    .local v1, "candidateSynchronizedHeaderData":I
    const/4 v2, 0x0

    .line 360
    .local v2, "peekedId3Bytes":I
    const/4 v3, 0x0

    .line 361
    .local v3, "searchedBytes":I
    if-eqz p2, :cond_a

    const v4, 0x8000

    goto :goto_c

    :cond_a
    const/high16 v4, 0x20000

    .line 362
    .local v4, "searchLimitBytes":I
    :goto_c
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 363
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    cmp-long v12, v5, v7

    if-nez v12, :cond_44

    .line 366
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_24

    const/4 v5, 0x1

    goto :goto_25

    :cond_24
    const/4 v5, 0x0

    .line 368
    .local v5, "parseAllId3Frames":Z
    :goto_25
    if-eqz v5, :cond_29

    move-object v6, v9

    goto :goto_2b

    :cond_29
    sget-object v6, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 369
    .local v6, "id3FramePredicate":Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;
    :goto_2b
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->id3Peeker:Lcom/google/android/exoplayer2/extractor/Id3Peeker;

    invoke-virtual {v7, p1, v6}, Lcom/google/android/exoplayer2/extractor/Id3Peeker;->peekId3Data(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 370
    if-eqz v7, :cond_3a

    .line 371
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    .line 373
    :cond_3a
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v7

    long-to-int v2, v7

    .line 374
    if-nez p2, :cond_44

    .line 375
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 379
    .end local v5    # "parseAllId3Frames":Z
    .end local v6    # "id3FramePredicate":Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;
    :cond_44
    :goto_44
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 380
    if-lez v0, :cond_4d

    .line 382
    goto :goto_9e

    .line 384
    :cond_4d
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 386
    :cond_53
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 387
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 389
    .local v5, "headerData":I
    if-eqz v1, :cond_67

    int-to-long v6, v1

    .line 390
    invoke-static {v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 391
    :cond_67
    invoke-static {v5}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->getFrameSize(I)I

    move-result v6

    move v7, v6

    .local v7, "frameSize":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_8f

    .line 393
    .end local v7    # "frameSize":I
    :cond_6f
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "searchedBytes":I
    .local v6, "searchedBytes":I
    if-ne v3, v4, :cond_7d

    .line 394
    if-eqz p2, :cond_76

    .line 398
    return v10

    .line 395
    :cond_76
    const-string v3, "Searched too many bytes."

    invoke-static {v3, v9}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v3

    throw v3

    .line 400
    :cond_7d
    const/4 v0, 0x0

    .line 401
    const/4 v1, 0x0

    .line 402
    if-eqz p2, :cond_8a

    .line 403
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 404
    add-int v3, v2, v6

    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_8d

    .line 406
    :cond_8a
    invoke-interface {p1, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 419
    .end local v5    # "headerData":I
    :goto_8d
    move v3, v6

    goto :goto_b1

    .line 410
    .end local v6    # "searchedBytes":I
    .restart local v3    # "searchedBytes":I
    .restart local v5    # "headerData":I
    .restart local v7    # "frameSize":I
    :cond_8f
    add-int/lit8 v0, v0, 0x1

    .line 411
    if-ne v0, v11, :cond_9a

    .line 412
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 413
    move v1, v5

    goto :goto_ac

    .line 414
    :cond_9a
    const/4 v6, 0x4

    if-ne v0, v6, :cond_ac

    .line 415
    nop

    .line 421
    .end local v5    # "headerData":I
    .end local v7    # "frameSize":I
    :goto_9e
    if-eqz p2, :cond_a6

    .line 422
    add-int v5, v2, v3

    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_a9

    .line 424
    :cond_a6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 426
    :goto_a9
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 427
    return v11

    .line 417
    .restart local v5    # "headerData":I
    .restart local v7    # "frameSize":I
    :cond_ac
    :goto_ac
    add-int/lit8 v6, v7, -0x4

    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 419
    .end local v5    # "headerData":I
    .end local v7    # "frameSize":I
    :goto_b1
    goto :goto_44
.end method


# virtual methods
.method public disableSeeking()V
    .registers 2

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    .line 262
    return-void
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 4
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 216
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 217
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->realTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 218
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 220
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 9
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->assertInitialized()V

    .line 243
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->readInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    .line 244
    .local v0, "readResult":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    instance-of v1, v1, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    if-eqz v1, :cond_2e

    .line 246
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v1

    .line 247
    .local v1, "durationUs":J
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2e

    .line 248
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->setDurationUs(J)V

    .line 249
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 252
    .end local v1    # "durationUs":J
    :cond_2e
    return v0
.end method

.method public release()V
    .registers 1

    .line 238
    return-void
.end method

.method public seek(JJ)V
    .registers 8
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 225
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 226
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 227
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 228
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    if-eqz v1, :cond_27

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v0

    if-nez v0, :cond_27

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 233
    :cond_27
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 3
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
