.class public final Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;
.super Ljava/lang/Object;
.source "OutputConsumerAdapterV30.java"

# interfaces
.implements Landroid/media/MediaParser$OutputConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;,
        Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MEDIA_FORMAT_KEY_CHUNK_INDEX_DURATIONS:Ljava/lang/String; = "chunk-index-long-us-durations"

.field private static final MEDIA_FORMAT_KEY_CHUNK_INDEX_OFFSETS:Ljava/lang/String; = "chunk-index-long-offsets"

.field private static final MEDIA_FORMAT_KEY_CHUNK_INDEX_SIZES:Ljava/lang/String; = "chunk-index-int-sizes"

.field private static final MEDIA_FORMAT_KEY_CHUNK_INDEX_TIMES:Ljava/lang/String; = "chunk-index-long-us-times"

.field private static final MEDIA_FORMAT_KEY_TRACK_TYPE:Ljava/lang/String; = "track-type-string"

.field private static final REGEX_CRYPTO_INFO_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEEK_POINT_PAIR_START:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/media/MediaParser$SeekPoint;",
            "Landroid/media/MediaParser$SeekPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OConsumerAdapterV30"


# instance fields
.field private containerMimeType:Ljava/lang/String;

.field private dummySeekMap:Landroid/media/MediaParser$SeekMap;

.field private final expectDummySeekMap:Z

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private lastChunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

.field private final lastOutputCryptoDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;",
            ">;"
        }
    .end annotation
.end field

.field private final lastReceivedCryptoInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaCodec$CryptoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeekMap:Landroid/media/MediaParser$SeekMap;

.field private muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private primaryTrackIndex:I

.field private final primaryTrackManifestFormat:Lcom/google/android/exoplayer2/Format;

.field private final primaryTrackType:I

.field private sampleTimestampUpperLimitFilterUs:J

.field private final scratchDataReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

.field private seekingDisabled:Z

.field private timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

.field private final trackFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final trackOutputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/extractor/TrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private tracksEnded:Z

.field private tracksFoundCalled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 89
    sget-object v0, Landroid/media/MediaParser$SeekPoint;->START:Landroid/media/MediaParser$SeekPoint;

    sget-object v1, Landroid/media/MediaParser$SeekPoint;->START:Landroid/media/MediaParser$SeekPoint;

    .line 90
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->SEEK_POINT_PAIR_START:Landroid/util/Pair;

    .line 97
    nop

    .line 98
    const-string v0, "pattern \\(encrypt: (\\d+), skip: (\\d+)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->REGEX_CRYPTO_INFO_PATTERN:Ljava/util/regex/Pattern;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 128
    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;-><init>(Lcom/google/android/exoplayer2/Format;IZ)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/Format;IZ)V
    .registers 6
    .param p1, "primaryTrackManifestFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "primaryTrackType"    # I
    .param p3, "expectDummySeekMap"    # Z

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->expectDummySeekMap:Z

    .line 149
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackManifestFormat:Lcom/google/android/exoplayer2/Format;

    .line 150
    iput p2, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackType:I

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->lastReceivedCryptoInfos:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->lastOutputCryptoDatas:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;-><init>(Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->scratchDataReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

    .line 156
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DummyExtractorOutput;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DummyExtractorOutput;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 157
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->sampleTimestampUpperLimitFilterUs:J

    .line 158
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->muxedCaptionFormats:Ljava/util/List;

    .line 159
    return-void
.end method

.method private ensureSpaceForTrackIndex(I)V
    .registers 5
    .param p1, "trackIndex"    # I

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_6
    if-gt v0, p1, :cond_20

    .line 378
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->lastReceivedCryptoInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->lastOutputCryptoDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 383
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method private static getFlag(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .registers 5
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "returnValueIfPresent"    # I

    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    move v0, p2

    :cond_8
    return v0
.end method

.method private static getInitializationData(Landroid/media/MediaFormat;)Ljava/util/List;
    .registers 5
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v0, "initData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v1, 0x0

    .line 575
    .local v1, "i":I
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "csd-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 576
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    if-nez v1, :cond_23

    .line 577
    nop

    .line 581
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    return-object v0

    .line 579
    .restart local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_23
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    move v1, v3

    goto :goto_6
.end method

.method private static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "parserName"    # Ljava/lang/String;

    .line 585
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_e4

    :cond_7
    goto/16 :goto_9f

    :sswitch_9
    const-string v0, "android.media.mediaparser.FlvParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_a0

    :sswitch_14
    const-string v0, "android.media.mediaparser.Mp3Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto/16 :goto_a0

    :sswitch_1f
    const-string v0, "android.media.mediaparser.Ac4Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto/16 :goto_a0

    :sswitch_2b
    const-string v0, "android.media.mediaparser.MatroskaParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_a0

    :sswitch_36
    const-string v0, "android.media.mediaparser.FlacParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_a0

    :sswitch_41
    const-string v0, "android.media.mediaparser.AmrParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_a0

    :sswitch_4c
    const-string v0, "android.media.mediaparser.Ac3Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_a0

    :sswitch_56
    const-string v0, "android.media.mediaparser.FragmentedMp4Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_a0

    :sswitch_60
    const-string v0, "android.media.mediaparser.PsParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_a0

    :sswitch_6b
    const-string v0, "android.media.mediaparser.WavParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_a0

    :sswitch_76
    const-string v0, "android.media.mediaparser.AdtsParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_a0

    :sswitch_80
    const-string v0, "android.media.mediaparser.TsParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_a0

    :sswitch_8a
    const-string v0, "android.media.mediaparser.OggParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_a0

    :sswitch_95
    const-string v0, "android.media.mediaparser.Mp4Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_a0

    :goto_9f
    const/4 v0, -0x1

    :goto_a0
    packed-switch v0, :pswitch_data_11e

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal parser name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :pswitch_bc
    const-string v0, "audio/flac"

    return-object v0

    .line 610
    :pswitch_bf
    const-string v0, "audio/ac4"

    return-object v0

    .line 608
    :pswitch_c2
    const-string v0, "audio/amr"

    return-object v0

    .line 606
    :pswitch_c5
    const-string v0, "audio/raw"

    return-object v0

    .line 604
    :pswitch_c8
    const-string v0, "video/mp2p"

    return-object v0

    .line 602
    :pswitch_cb
    const-string v0, "audio/ogg"

    return-object v0

    .line 600
    :pswitch_ce
    const-string v0, "video/x-flv"

    return-object v0

    .line 598
    :pswitch_d1
    const-string v0, "video/mp2t"

    return-object v0

    .line 596
    :pswitch_d4
    const-string v0, "audio/ac3"

    return-object v0

    .line 594
    :pswitch_d7
    const-string v0, "audio/mp4a-latm"

    return-object v0

    .line 592
    :pswitch_da
    const-string v0, "audio/mpeg"

    return-object v0

    .line 590
    :pswitch_dd
    const-string v0, "video/mp4"

    return-object v0

    .line 587
    :pswitch_e0
    const-string v0, "video/webm"

    return-object v0

    nop

    :sswitch_data_e4
    .sparse-switch
        -0x7afe9a64 -> :sswitch_95
        -0x6f828246 -> :sswitch_8a
        -0x5d5dc92e -> :sswitch_80
        -0x35a8150b -> :sswitch_76
        -0x23289ea9 -> :sswitch_6b
        0x31d8356 -> :sswitch_60
        0x6f5c06d -> :sswitch_56
        0x1676aefc -> :sswitch_4c
        0x29eb04b1 -> :sswitch_41
        0x2dd08ffb -> :sswitch_36
        0x39936bdf -> :sswitch_2b
        0x4b5cea3d -> :sswitch_1f
        0x501b2a5b -> :sswitch_14
        0x7af8efdb -> :sswitch_9
    .end sparse-switch

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_dd
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
    .end packed-switch
.end method

.method private static getSelectionFlags(Landroid/media/MediaFormat;)I
    .registers 4
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "selectionFlags":I
    nop

    .line 550
    const-string v1, "is-autoselect"

    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getFlag(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v0, v1

    .line 554
    nop

    .line 555
    const-string v1, "is-default"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getFlag(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v0, v1

    .line 559
    nop

    .line 560
    const-string v1, "is-forced-subtitle"

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getFlag(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v0, v1

    .line 564
    return v0
.end method

.method private maybeEndTracks()V
    .registers 4

    .line 425
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->tracksFoundCalled:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->tracksEnded:Z

    if-eqz v0, :cond_9

    goto :goto_27

    .line 428
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 429
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_1e

    .line 430
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 431
    return-void

    .line 429
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 434
    .end local v1    # "i":I
    :cond_1e
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 435
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->tracksEnded:Z

    .line 436
    return-void

    .line 426
    .end local v0    # "size":I
    :cond_27
    :goto_27
    return-void
.end method

.method private maybeObtainChunkIndex(Landroid/media/MediaFormat;)Z
    .registers 13
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 348
    nop

    .line 349
    const-string v0, "chunk-index-int-sizes"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 350
    .local v0, "chunkIndexSizesByteBuffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_b

    .line 351
    const/4 v1, 0x0

    return v1

    .line 353
    :cond_b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 354
    .local v1, "chunkIndexSizes":Ljava/nio/IntBuffer;
    nop

    .line 355
    const-string v2, "chunk-index-long-offsets"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 356
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 357
    .local v2, "chunkIndexOffsets":Ljava/nio/LongBuffer;
    nop

    .line 358
    const-string v3, "chunk-index-long-us-durations"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 359
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    .line 360
    .local v3, "chunkIndexDurationsUs":Ljava/nio/LongBuffer;
    nop

    .line 361
    const-string v4, "chunk-index-long-us-times"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 362
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v4

    .line 363
    .local v4, "chunkIndexTimesUs":Ljava/nio/LongBuffer;
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [I

    .line 364
    .local v5, "sizes":[I
    invoke-virtual {v2}, Ljava/nio/LongBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [J

    .line 365
    .local v6, "offsets":[J
    invoke-virtual {v3}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    new-array v7, v7, [J

    .line 366
    .local v7, "durationsUs":[J
    invoke-virtual {v4}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    new-array v8, v8, [J

    .line 367
    .local v8, "timesUs":[J
    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 368
    invoke-virtual {v2, v6}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 369
    invoke-virtual {v3, v7}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 370
    invoke-virtual {v4, v8}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 371
    new-instance v9, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    invoke-direct {v9, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    iput-object v9, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->lastChunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 372
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v10, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 373
    const/4 v9, 0x1

    return v9
.end method

.method private toExoPlayerCryptoData(ILandroid/media/MediaCodec$CryptoInfo;)Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    .registers 9
    .param p1, "trackIndex"    # I
    .param p2, "cryptoInfo"    # Landroid/media/MediaCodec$CryptoInfo;

    .line 387
    if-nez p2, :cond_4

    .line 388
    const/4 v0, 0x0

    return-object v0

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->lastReceivedCryptoInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$CryptoInfo;

    .line 394
    .local v0, "lastReceivedCryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    if-ne v0, p2, :cond_1d

    .line 396
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->lastOutputCryptoDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .local v1, "cryptoDataToOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    goto :goto_7a

    .line 405
    .end local v1    # "cryptoDataToOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    :cond_1d
    :try_start_1d
    sget-object v1, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->REGEX_CRYPTO_INFO_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CryptoInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 406
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 407
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 408
    .local v2, "encryptedBlocks":I
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_48} :catch_4a

    move v1, v3

    .line 415
    .local v1, "clearBlocks":I
    goto :goto_66

    .line 409
    .end local v1    # "clearBlocks":I
    .end local v2    # "encryptedBlocks":I
    :catch_4a
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error while parsing CryptoInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OConsumerAdapterV30"

    invoke-static {v3, v2, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 413
    const/4 v2, 0x0

    .line 414
    .restart local v2    # "encryptedBlocks":I
    const/4 v3, 0x0

    move v1, v3

    .line 416
    .local v1, "clearBlocks":I
    :goto_66
    new-instance v3, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iget v4, p2, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    iget-object v5, p2, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    invoke-direct {v3, v4, v5, v2, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    .line 418
    .local v3, "cryptoDataToOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->lastReceivedCryptoInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->lastOutputCryptoDatas:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    .line 421
    .end local v2    # "encryptedBlocks":I
    .end local v3    # "cryptoDataToOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    .local v1, "cryptoDataToOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    :goto_7a
    return-object v1
.end method

.method private static toExoPlayerDrmInitData(Ljava/lang/String;Landroid/media/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .registers 9
    .param p0, "schemeType"    # Ljava/lang/String;
    .param p1, "drmInitData"    # Landroid/media/DrmInitData;

    .line 535
    if-nez p1, :cond_4

    .line 536
    const/4 v0, 0x0

    return-object v0

    .line 538
    :cond_4
    invoke-virtual {p1}, Landroid/media/DrmInitData;->getSchemeInitDataCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 539
    .local v0, "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_22

    .line 540
    invoke-virtual {p1, v1}, Landroid/media/DrmInitData;->getSchemeInitDataAt(I)Landroid/media/DrmInitData$SchemeInitData;

    move-result-object v2

    .line 541
    .local v2, "schemeInitData":Landroid/media/DrmInitData$SchemeInitData;
    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v4, v2, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    iget-object v5, v2, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    iget-object v6, v2, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v0, v1

    .line 539
    .end local v2    # "schemeInitData":Landroid/media/DrmInitData$SchemeInitData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 544
    .end local v1    # "i":I
    :cond_22
    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    return-object v1
.end method

.method private toExoPlayerFormat(Landroid/media/MediaParser$TrackData;)Lcom/google/android/exoplayer2/Format;
    .registers 10
    .param p1, "trackData"    # Landroid/media/MediaParser$TrackData;

    .line 464
    iget-object v0, p1, Landroid/media/MediaParser$TrackData;->mediaFormat:Landroid/media/MediaFormat;

    .line 465
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "mediaFormatMimeType":Ljava/lang/String;
    nop

    .line 467
    const-string v2, "caption-service-number"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v2

    .line 469
    .local v2, "mediaFormatAccessibilityChannel":I
    new-instance v4, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 473
    const-string v5, "crypto-mode-fourcc"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/media/MediaParser$TrackData;->drmInitData:Landroid/media/DrmInitData;

    .line 472
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->toExoPlayerDrmInitData(Ljava/lang/String;Landroid/media/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v5

    .line 471
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->containerMimeType:Ljava/lang/String;

    .line 474
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 476
    const-string v5, "bitrate"

    invoke-virtual {v0, v5, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v5

    .line 475
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 479
    const-string v5, "channel-count"

    invoke-virtual {v0, v5, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v5

    .line 478
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 481
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getColorInfo(Landroid/media/MediaFormat;)Lcom/google/android/exoplayer2/video/ColorInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 482
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 483
    const-string v5, "codecs-string"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 485
    const-string v5, "frame-rate"

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v0, v5, v6}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;F)F

    move-result v5

    .line 484
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 488
    const-string v5, "width"

    invoke-virtual {v0, v5, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v5

    .line 487
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 490
    const-string v5, "height"

    invoke-virtual {v0, v5, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v5

    .line 489
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 491
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getInitializationData(Landroid/media/MediaFormat;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 492
    const-string v5, "language"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 494
    const-string v5, "max-input-size"

    invoke-virtual {v0, v5, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v5

    .line 493
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 497
    const-string v5, "exo-pcm-encoding"

    invoke-virtual {v0, v5, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v5

    .line 496
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 499
    const-string v5, "rotation-degrees"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v5

    .line 498
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 501
    const-string v5, "sample-rate"

    invoke-virtual {v0, v5, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v3

    .line 500
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 503
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getSelectionFlags(Landroid/media/MediaFormat;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 505
    const-string v4, "encoder-delay"

    invoke-virtual {v0, v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 504
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 507
    const-string v4, "encoder-padding"

    invoke-virtual {v0, v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 506
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 509
    const-string v4, "pixel-width-height-ratio-float"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 508
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 511
    const-string v4, "subsample-offset-us-long"

    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 510
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 513
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setAccessibilityChannel(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 514
    .local v3, "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ec
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->muxedCaptionFormats:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_129

    .line 515
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->muxedCaptionFormats:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/Format;

    .line 516
    .local v5, "muxedCaptionFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v6, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_126

    iget v6, v5, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    if-ne v6, v2, :cond_126

    .line 520
    iget-object v6, v5, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 521
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    iget v7, v5, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 522
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    iget v7, v5, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 523
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 524
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 525
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 526
    goto :goto_129

    .line 514
    .end local v5    # "muxedCaptionFormat":Lcom/google/android/exoplayer2/Format;
    :cond_126
    add-int/lit8 v4, v4, 0x1

    goto :goto_ec

    .line 529
    .end local v4    # "i":I
    :cond_129
    :goto_129
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    return-object v4
.end method

.method private static toTrackTypeConstant(Ljava/lang/String;)I
    .registers 6
    .param p0, "string"    # Ljava/lang/String;

    .line 439
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 440
    return v0

    .line 442
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_50

    :cond_e
    goto :goto_41

    :sswitch_f
    const-string v1, "video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_42

    :sswitch_19
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_42

    :sswitch_23
    const-string v1, "text"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v1, "unknown"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x4

    goto :goto_42

    :sswitch_37
    const-string v1, "metadata"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x3

    goto :goto_42

    :goto_41
    const/4 v1, -0x1

    :goto_42
    packed-switch v1, :pswitch_data_66

    .line 455
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 452
    :pswitch_4a
    return v0

    .line 450
    :pswitch_4b
    const/4 v0, 0x5

    return v0

    .line 448
    :pswitch_4d
    return v2

    .line 446
    :pswitch_4e
    return v3

    .line 444
    :pswitch_4f
    return v4

    :sswitch_data_50
    .sparse-switch
        -0x1ad284d1 -> :sswitch_37
        -0x10fa53b6 -> :sswitch_2d
        0x36452d -> :sswitch_23
        0x58d9bd6 -> :sswitch_19
        0x6b0147b -> :sswitch_f
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4b
        :pswitch_4a
    .end packed-switch
.end method


# virtual methods
.method public disableSeeking()V
    .registers 2

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->seekingDisabled:Z

    .line 194
    return-void
.end method

.method public getChunkIndex()Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->lastChunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    return-object v0
.end method

.method public getDummySeekMap()Landroid/media/MediaParser$SeekMap;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->dummySeekMap:Landroid/media/MediaParser$SeekMap;

    return-object v0
.end method

.method public getSampleFormats()[Lcom/google/android/exoplayer2/Format;
    .registers 4

    .line 240
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->tracksFoundCalled:Z

    if-nez v0, :cond_6

    .line 241
    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    .line 244
    .local v0, "sampleFormats":[Lcom/google/android/exoplayer2/Format;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 245
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Format;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Format;

    aput-object v2, v0, v1

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 247
    .end local v1    # "i":I
    :cond_2a
    return-object v0
.end method

.method public getSeekPoints(J)Landroid/util/Pair;
    .registers 4
    .param p1, "seekTimeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Landroid/media/MediaParser$SeekPoint;",
            "Landroid/media/MediaParser$SeekPoint;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->lastSeekMap:Landroid/media/MediaParser$SeekMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaParser$SeekMap;->getSeekPoints(J)Landroid/util/Pair;

    move-result-object v0

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->SEEK_POINT_PAIR_START:Landroid/util/Pair;

    :goto_b
    return-object v0
.end method

.method public onSampleCompleted(IJIIILandroid/media/MediaCodec$CryptoInfo;)V
    .registers 15
    .param p1, "trackIndex"    # I
    .param p2, "timeUs"    # J
    .param p4, "flags"    # I
    .param p5, "size"    # I
    .param p6, "offset"    # I
    .param p7, "cryptoInfo"    # Landroid/media/MediaCodec$CryptoInfo;

    .line 333
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->sampleTimestampUpperLimitFilterUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    cmp-long v2, p2, v0

    if-ltz v2, :cond_10

    .line 336
    return-void

    .line 337
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    if-eqz v0, :cond_18

    .line 338
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide p2

    .line 340
    :cond_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 341
    invoke-direct {p0, p1, p7}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->toExoPlayerCryptoData(ILandroid/media/MediaCodec$CryptoInfo;)Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    move-result-object v6

    move-wide v1, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 342
    return-void
.end method

.method public onSampleDataFound(ILandroid/media/MediaParser$InputReader;)V
    .registers 7
    .param p1, "trackIndex"    # I
    .param p2, "sampleData"    # Landroid/media/MediaParser$InputReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->ensureSpaceForTrackIndex(I)V

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->scratchDataReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

    iput-object p2, v0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;->input:Landroid/media/MediaParser$InputReader;

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 317
    .local v0, "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    if-nez v0, :cond_1d

    .line 318
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v2, -0x1

    invoke-interface {v1, p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_1d
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->scratchDataReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

    .line 322
    invoke-interface {p2}, Landroid/media/MediaParser$InputReader;->getLength()J

    move-result-wide v2

    long-to-int v3, v2

    .line 321
    const/4 v2, 0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    .line 323
    return-void
.end method

.method public onSeekMapFound(Landroid/media/MediaParser$SeekMap;)V
    .registers 9
    .param p1, "seekMap"    # Landroid/media/MediaParser$SeekMap;

    .line 260
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->expectDummySeekMap:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->dummySeekMap:Landroid/media/MediaParser$SeekMap;

    if-nez v0, :cond_b

    .line 262
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->dummySeekMap:Landroid/media/MediaParser$SeekMap;

    goto :goto_33

    .line 264
    :cond_b
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->lastSeekMap:Landroid/media/MediaParser$SeekMap;

    .line 265
    invoke-virtual {p1}, Landroid/media/MediaParser$SeekMap;->getDurationMicros()J

    move-result-wide v0

    .line 266
    .local v0, "durationUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 267
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->seekingDisabled:Z

    if-eqz v3, :cond_2b

    .line 268
    new-instance v3, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    .line 269
    const-wide/32 v4, -0x80000000

    cmp-long v6, v0, v4

    if-eqz v6, :cond_22

    move-wide v4, v0

    goto :goto_27

    :cond_22
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :goto_27
    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    goto :goto_30

    .line 270
    :cond_2b
    new-instance v3, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;-><init>(Landroid/media/MediaParser$SeekMap;)V

    .line 266
    :goto_30
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 272
    .end local v0    # "durationUs":J
    :goto_33
    return-void
.end method

.method public onTrackCountFound(I)V
    .registers 3
    .param p1, "numberOfTracks"    # I

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->tracksFoundCalled:Z

    .line 255
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->maybeEndTracks()V

    .line 256
    return-void
.end method

.method public onTrackDataFound(ILandroid/media/MediaParser$TrackData;)V
    .registers 7
    .param p1, "trackIndex"    # I
    .param p2, "trackData"    # Landroid/media/MediaParser$TrackData;

    .line 276
    iget-object v0, p2, Landroid/media/MediaParser$TrackData;->mediaFormat:Landroid/media/MediaFormat;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->maybeObtainChunkIndex(Landroid/media/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 278
    return-void

    .line 281
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->ensureSpaceForTrackIndex(I)V

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 283
    .local v0, "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    if-nez v0, :cond_42

    .line 285
    iget-object v1, p2, Landroid/media/MediaParser$TrackData;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "track-type-string"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "trackTypeString":Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 289
    move-object v2, v1

    goto :goto_2a

    .line 290
    :cond_22
    iget-object v2, p2, Landroid/media/MediaParser$TrackData;->mediaFormat:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    :goto_2a
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->toTrackTypeConstant(Ljava/lang/String;)I

    move-result v2

    .line 291
    .local v2, "trackType":I
    iget v3, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackType:I

    if-ne v2, v3, :cond_34

    .line 292
    iput p1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackIndex:I

    .line 294
    :cond_34
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v3, p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 295
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 296
    if-eqz v1, :cond_42

    .line 299
    return-void

    .line 302
    .end local v1    # "trackTypeString":Ljava/lang/String;
    .end local v2    # "trackType":I
    :cond_42
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->toExoPlayerFormat(Landroid/media/MediaParser$TrackData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 303
    .local v1, "format":Lcom/google/android/exoplayer2/Format;
    nop

    .line 304
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackManifestFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_54

    iget v3, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackIndex:I

    if-ne p1, v3, :cond_54

    .line 305
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    goto :goto_55

    .line 306
    :cond_54
    move-object v2, v1

    .line 303
    :goto_55
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 307
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->maybeEndTracks()V

    .line 309
    return-void
.end method

.method public setExtractorOutput(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 2
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 183
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 184
    return-void
.end method

.method public setMuxedCaptionFormats(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 188
    .local p1, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->muxedCaptionFormats:Ljava/util/List;

    .line 189
    return-void
.end method

.method public setSampleTimestampUpperLimitFilterUs(J)V
    .registers 3
    .param p1, "sampleTimestampUpperLimitFilterUs"    # J

    .line 171
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->sampleTimestampUpperLimitFilterUs:J

    .line 172
    return-void
.end method

.method public setSelectedParserName(Ljava/lang/String;)V
    .registers 3
    .param p1, "parserName"    # Ljava/lang/String;

    .line 231
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->containerMimeType:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setTimestampAdjuster(Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .registers 2
    .param p1, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 176
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 177
    return-void
.end method
