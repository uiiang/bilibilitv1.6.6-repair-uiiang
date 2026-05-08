.class public final Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;
.super Ljava/lang/Object;
.source "MediaParserHlsMediaChunkExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;


# instance fields
.field private final format:Lcom/google/android/exoplayer2/Format;

.field private final inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

.field private final mediaParser:Landroid/media/MediaParser;

.field private final muxedCaptionMediaFormats:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

.field private final overrideInBandCaptionDeclarations:Z

.field private pendingSkipBytes:I

.field private final playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->FACTORY:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaParser;Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;Lcom/google/android/exoplayer2/Format;ZLcom/google/common/collect/ImmutableList;ILcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 9
    .param p1, "mediaParser"    # Landroid/media/MediaParser;
    .param p2, "outputConsumerAdapter"    # Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;
    .param p3, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "overrideInBandCaptionDeclarations"    # Z
    .param p6, "leadingBytesToSkip"    # I
    .param p7, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaParser;",
            "Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/media/MediaFormat;",
            ">;I",
            "Lcom/google/android/exoplayer2/analytics/PlayerId;",
            ")V"
        }
    .end annotation

    .line 173
    .local p5, "muxedCaptionMediaFormats":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroid/media/MediaFormat;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    .line 175
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    .line 176
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->overrideInBandCaptionDeclarations:Z

    .line 177
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->muxedCaptionMediaFormats:Lcom/google/common/collect/ImmutableList;

    .line 178
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->format:Lcom/google/android/exoplayer2/Format;

    .line 179
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 180
    iput p6, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->pendingSkipBytes:I

    .line 181
    new-instance v0, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    .line 182
    return-void
.end method

.method private static varargs createMediaParserInstance(Landroid/media/MediaParser$OutputConsumer;Lcom/google/android/exoplayer2/Format;ZLcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/analytics/PlayerId;[Ljava/lang/String;)Landroid/media/MediaParser;
    .registers 11
    .param p0, "outputConsumer"    # Landroid/media/MediaParser$OutputConsumer;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "overrideInBandCaptionDeclarations"    # Z
    .param p4, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;
    .param p5, "parserNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaParser$OutputConsumer;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/media/MediaFormat;",
            ">;",
            "Lcom/google/android/exoplayer2/analytics/PlayerId;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/media/MediaParser;"
        }
    .end annotation

    .line 249
    .local p3, "muxedCaptionMediaFormats":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroid/media/MediaFormat;>;"
    array-length v0, p5

    const/4 v1, 0x1

    .line 255
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 249
    if-ne v0, v1, :cond_10

    .line 250
    const/4 v0, 0x0

    aget-object v0, p5, v0

    invoke-static {v0, p0}, Landroid/media/MediaParser;->createByName(Ljava/lang/String;Landroid/media/MediaParser$OutputConsumer;)Landroid/media/MediaParser;

    move-result-object v0

    goto :goto_14

    .line 251
    :cond_10
    invoke-static {p0, p5}, Landroid/media/MediaParser;->create(Landroid/media/MediaParser$OutputConsumer;[Ljava/lang/String;)Landroid/media/MediaParser;

    move-result-object v0

    :goto_14
    nop

    .line 252
    .local v0, "mediaParser":Landroid/media/MediaParser;
    const-string v1, "android.media.mediaParser.exposeCaptionFormats"

    invoke-virtual {v0, v1, p3}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 253
    nop

    .line 254
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 253
    const-string v3, "android.media.mediaParser.overrideInBandCaptionDeclarations"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 255
    const-string v1, "android.media.mediaparser.inBandCryptoInfo"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 256
    const-string v1, "android.media.mediaparser.eagerlyExposeTrackType"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 257
    const-string v1, "android.media.mediaparser.ignoreTimestampOffset"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 258
    const-string v1, "android.media.mediaparser.ts.ignoreSpliceInfoStream"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 259
    const-string v1, "android.media.mediaparser.ts.mode"

    const-string v3, "hls"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 260
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 261
    .local v1, "codecs":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 265
    const-string v3, "audio/mp4a-latm"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 266
    const-string v3, "android.media.mediaparser.ts.ignoreAacStream"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 268
    :cond_58
    const-string v3, "video/avc"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 269
    const-string v3, "android.media.mediaparser.ts.ignoreAvcStream"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 272
    :cond_69
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_72

    .line 273
    invoke-static {v0, p4}, Lcom/google/android/exoplayer2/source/mediaparser/MediaParserUtil;->setLogSessionIdOnMediaParser(Landroid/media/MediaParser;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 275
    :cond_72
    return-object v0
.end method

.method static synthetic lambda$static$0(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;
    .registers 25
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "muxedCaptionFormats"    # Ljava/util/List;
    .param p3, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p4, "responseHeaders"    # Ljava/util/Map;
    .param p5, "sniffingExtractorInput"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p6, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    iget-object v0, v11, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromMimeType(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1d

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;

    new-instance v1, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object v2, v11, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {v1, v2, v13}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    invoke-direct {v0, v1, v11, v13}, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-object v0

    .line 82
    :cond_1d
    if-eqz v12, :cond_22

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 84
    .local v2, "overrideInBandCaptionDeclarations":Z
    :goto_24
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v14

    .line 85
    .local v14, "muxedCaptionMediaFormatsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroid/media/MediaFormat;>;"
    if-eqz v12, :cond_43

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 89
    nop

    .line 90
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/mediaparser/MediaParserUtil;->toCaptionsMediaFormat(Lcom/google/android/exoplayer2/Format;)Landroid/media/MediaFormat;

    move-result-object v1

    .line 89
    invoke-virtual {v14, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .end local v0    # "i":I
    :cond_42
    goto :goto_59

    .line 95
    :cond_43
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 97
    const-string v1, "application/cea-608"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/mediaparser/MediaParserUtil;->toCaptionsMediaFormat(Lcom/google/android/exoplayer2/Format;)Landroid/media/MediaFormat;

    move-result-object v0

    .line 95
    invoke-virtual {v14, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 100
    :goto_59
    nop

    .line 101
    invoke-virtual {v14}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    .line 104
    .local v15, "muxedCaptionMediaFormats":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroid/media/MediaFormat;>;"
    new-instance v0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;-><init>()V

    move-object v10, v0

    .line 105
    .local v10, "outputConsumerAdapter":Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;
    nop

    .line 106
    if-eqz v12, :cond_69

    move-object v0, v12

    goto :goto_6d

    :cond_69
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 105
    :goto_6d
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setMuxedCaptionFormats(Ljava/util/List;)V

    .line 107
    invoke-virtual {v10, v13}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setTimestampAdjuster(Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .line 108
    const-string v3, "android.media.mediaparser.FragmentedMp4Parser"

    const-string v4, "android.media.mediaparser.Ac3Parser"

    const-string v5, "android.media.mediaparser.Ac4Parser"

    const-string v6, "android.media.mediaparser.AdtsParser"

    const-string v7, "android.media.mediaparser.Mp3Parser"

    const-string v8, "android.media.mediaparser.TsParser"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v5

    .line 109
    move-object v0, v10

    move-object/from16 v1, p1

    move-object v3, v15

    move-object/from16 v4, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->createMediaParserInstance(Landroid/media/MediaParser$OutputConsumer;Lcom/google/android/exoplayer2/Format;ZLcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/analytics/PlayerId;[Ljava/lang/String;)Landroid/media/MediaParser;

    move-result-object v0

    .line 122
    .local v0, "mediaParser":Landroid/media/MediaParser;
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;

    const/4 v3, 0x0

    move-object/from16 v9, p5

    invoke-direct {v1, v9, v3}, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$1;)V

    .line 125
    .local v1, "peekingInputReader":Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;
    invoke-virtual {v0, v1}, Landroid/media/MediaParser;->advance(Landroid/media/MediaParser$SeekableInputReader;)Z

    .line 126
    invoke-virtual {v0}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setSelectedParserName(Ljava/lang/String;)V

    .line 128
    new-instance v16, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;

    .line 134
    # getter for: Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;->totalPeekedBytes:I
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;->access$100(Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;)I

    move-result v17

    move-object/from16 v3, v16

    move-object v4, v0

    move-object v5, v10

    move-object/from16 v6, p1

    move v7, v2

    move-object v8, v15

    move/from16 v9, v17

    move-object/from16 v17, v10

    .end local v10    # "outputConsumerAdapter":Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;
    .local v17, "outputConsumerAdapter":Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;
    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;-><init>(Landroid/media/MediaParser;Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;Lcom/google/android/exoplayer2/Format;ZLcom/google/common/collect/ImmutableList;ILcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 128
    return-object v16
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 3
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setExtractorOutput(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 189
    return-void
.end method

.method public isPackedAudioExtractor()Z
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {v0}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "parserName":Ljava/lang/String;
    const-string v1, "android.media.mediaparser.Ac3Parser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 203
    const-string v1, "android.media.mediaparser.Ac4Parser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 204
    const-string v1, "android.media.mediaparser.AdtsParser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 205
    const-string v1, "android.media.mediaparser.Mp3Parser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_29

    :cond_27
    const/4 v1, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v1, 0x1

    .line 202
    :goto_2a
    return v1
.end method

.method public isReusable()Z
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {v0}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "parserName":Ljava/lang/String;
    const-string v1, "android.media.mediaparser.FragmentedMp4Parser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 212
    const-string v1, "android.media.mediaparser.TsParser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    .line 211
    :goto_1a
    return v1
.end method

.method public onTruncatedSegmentParsed()V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    sget-object v1, Landroid/media/MediaParser$SeekPoint;->START:Landroid/media/MediaParser$SeekPoint;

    invoke-virtual {v0, v1}, Landroid/media/MediaParser;->seek(Landroid/media/MediaParser$SeekPoint;)V

    .line 237
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 5
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->pendingSkipBytes:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->pendingSkipBytes:I

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->setDataReader(Lcom/google/android/exoplayer2/upstream/DataReader;J)V

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0, v1}, Landroid/media/MediaParser;->advance(Landroid/media/MediaParser$SeekableInputReader;)Z

    move-result v0

    return v0
.end method

.method public recreate()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;
    .registers 10

    .line 217
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->isReusable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 218
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->overrideInBandCaptionDeclarations:Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->muxedCaptionMediaFormats:Lcom/google/common/collect/ImmutableList;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    .line 225
    invoke-virtual {v6}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 219
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->createMediaParserInstance(Landroid/media/MediaParser$OutputConsumer;Lcom/google/android/exoplayer2/Format;ZLcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/analytics/PlayerId;[Ljava/lang/String;)Landroid/media/MediaParser;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->overrideInBandCaptionDeclarations:Z

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->muxedCaptionMediaFormats:Lcom/google/common/collect/ImmutableList;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;-><init>(Landroid/media/MediaParser;Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;Lcom/google/android/exoplayer2/Format;ZLcom/google/common/collect/ImmutableList;ILcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 218
    return-object v0
.end method
