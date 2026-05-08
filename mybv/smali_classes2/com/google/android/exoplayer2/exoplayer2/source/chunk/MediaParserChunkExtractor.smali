.class public final Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;
.super Ljava/lang/Object;
.source "MediaParserChunkExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;

.field private static final TAG:Ljava/lang/String; = "MediaPrsrChunkExtractor"


# instance fields
.field private final dummyTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

.field private final inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

.field private final mediaParser:Landroid/media/MediaParser;

.field private final outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

.field private pendingSeekUs:J

.field private sampleFormats:[Lcom/google/android/exoplayer2/Format;

.field private trackOutputProvider:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

.field private final trackOutputProviderAdapter:Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->FACTORY:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 11
    .param p1, "primaryTrackType"    # I
    .param p2, "manifestFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/analytics/PlayerId;",
            ")V"
        }
    .end annotation

    .line 106
    .local p3, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    const/4 v1, 0x1

    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 107
    invoke-direct {v0, p2, p1, v1}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;-><init>(Lcom/google/android/exoplayer2/Format;IZ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    .line 110
    new-instance v1, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    .line 111
    iget-object v1, p2, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->isMatroska(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 114
    const-string v3, "android.media.mediaparser.MatroskaParser"

    goto :goto_29

    .line 115
    :cond_27
    const-string v3, "android.media.mediaparser.FragmentedMp4Parser"

    :goto_29
    nop

    .line 116
    .local v3, "parserName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setSelectedParserName(Ljava/lang/String;)V

    .line 117
    invoke-static {v3, v0}, Landroid/media/MediaParser;->createByName(Ljava/lang/String;Landroid/media/MediaParser$OutputConsumer;)Landroid/media/MediaParser;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    .line 118
    const-string v4, "android.media.mediaparser.matroska.disableCuesSeeking"

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 119
    const-string v4, "android.media.mediaparser.inBandCryptoInfo"

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 120
    const-string v4, "android.media.mediaparser.includeSupplementalData"

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 121
    const-string v4, "android.media.mediaparser.eagerlyExposeTrackType"

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 122
    const-string v4, "android.media.mediaparser.exposeDummySeekMap"

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 123
    const-string v4, "android.media.mediaParser.exposeChunkIndexAsMediaFormat"

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 124
    const-string v4, "android.media.mediaParser.overrideInBandCaptionDeclarations"

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "closedCaptionMediaFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaFormat;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5c
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_73

    .line 127
    nop

    .line 128
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/Format;

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/mediaparser/MediaParserUtil;->toCaptionsMediaFormat(Lcom/google/android/exoplayer2/Format;)Landroid/media/MediaFormat;

    move-result-object v4

    .line 127
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 130
    .end local v2    # "i":I
    :cond_73
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    const-string v4, "android.media.mediaParser.exposeCaptionFormats"

    invoke-virtual {v2, v4, v0}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 131
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_85

    .line 132
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    invoke-static {v2, p4}, Lcom/google/android/exoplayer2/source/mediaparser/MediaParserUtil;->setLogSessionIdOnMediaParser(Landroid/media/MediaParser;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 134
    :cond_85
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v2, p3}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setMuxedCaptionFormats(Ljava/util/List;)V

    .line 135
    new-instance v2, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;-><init>(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$1;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->trackOutputProviderAdapter:Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;

    .line 136
    new-instance v2, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->dummyTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    .line 137
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->pendingSeekUs:J

    .line 138
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->trackOutputProvider:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->dummyTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;[Lcom/google/android/exoplayer2/Format;)[Lcom/google/android/exoplayer2/Format;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;
    .param p1, "x1"    # [Lcom/google/android/exoplayer2/Format;

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->sampleFormats:[Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    return-object v0
.end method

.method static synthetic lambda$static$0(ILcom/google/android/exoplayer2/Format;ZLjava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    .registers 7
    .param p0, "primaryTrackType"    # I
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "enableEventMessageTrack"    # Z
    .param p3, "closedCaptionFormats"    # Ljava/util/List;
    .param p4, "playerEmsgTrackOutput"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .param p5, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 72
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    invoke-direct {v0, p0, p1, p3, p5}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;-><init>(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    return-object v0

    .line 78
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeExecutePendingSeek()V
    .registers 7

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getDummySeekMap()Landroid/media/MediaParser$SeekMap;

    move-result-object v0

    .line 179
    .local v0, "dummySeekMap":Landroid/media/MediaParser$SeekMap;
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->pendingSeekUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_22

    if-eqz v0, :cond_22

    .line 180
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaParser$SeekMap;->getSeekPoints(J)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaParser$SeekPoint;

    invoke-virtual {v5, v1}, Landroid/media/MediaParser;->seek(Landroid/media/MediaParser$SeekPoint;)V

    .line 181
    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->pendingSeekUs:J

    .line 183
    :cond_22
    return-void
.end method


# virtual methods
.method public getChunkIndex()Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getChunkIndex()Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    move-result-object v0

    return-object v0
.end method

.method public getSampleFormats()[Lcom/google/android/exoplayer2/Format;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->sampleFormats:[Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public init(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V
    .registers 8
    .param p1, "trackOutputProvider"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;
    .param p2, "startTimeUs"    # J
    .param p4, "endTimeUs"    # J

    .line 145
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->trackOutputProvider:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0, p4, p5}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setSampleTimestampUpperLimitFilterUs(J)V

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->trackOutputProviderAdapter:Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setExtractorOutput(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 148
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->pendingSeekUs:J

    .line 149
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 5
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->maybeExecutePendingSeek()V

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->setDataReader(Lcom/google/android/exoplayer2/upstream/DataReader;J)V

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0, v1}, Landroid/media/MediaParser;->advance(Landroid/media/MediaParser$SeekableInputReader;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {v0}, Landroid/media/MediaParser;->release()V

    .line 154
    return-void
.end method
