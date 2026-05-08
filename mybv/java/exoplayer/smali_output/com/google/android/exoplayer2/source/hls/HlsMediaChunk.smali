.class final Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
.super Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
.source "HlsMediaChunk.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PRIV_TIMESTAMP_FRAME_OWNER:Ljava/lang/String; = "com.apple.streaming.transportStreamTimestamp"

.field private static final uidSource:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final discontinuitySequenceNumber:I

.field private final drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field private extractor:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

.field private final extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private extractorInvalidated:Z

.field private final hasGapTag:Z

.field private final id3Decoder:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

.field private initDataLoadRequired:Z

.field private final initDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final initSegmentEncrypted:Z

.field private final isPrimaryTimestampSource:Z

.field private isPublished:Z

.field private volatile loadCanceled:Z

.field private loadCompleted:Z

.field private final mediaSegmentEncrypted:Z

.field private final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private nextLoadPosition:I

.field private output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field public final partIndex:I

.field private final playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

.field public final playlistUrl:Landroid/net/Uri;

.field private final previousExtractor:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

.field private sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final shouldSpliceIn:Z

.field private final timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

.field private final timestampAdjusterInitializationTimeoutMs:J

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 268
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uidSource:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ZLcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLcom/google/android/exoplayer2/util/TimestampAdjuster;JLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZLcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 49
    .param p1, "extractorFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
    .param p2, "mediaDataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p4, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "mediaSegmentEncrypted"    # Z
    .param p6, "initDataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p7, "initDataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p8, "initSegmentEncrypted"    # Z
    .param p9, "playlistUrl"    # Landroid/net/Uri;
    .param p11, "trackSelectionReason"    # I
    .param p12, "trackSelectionData"    # Ljava/lang/Object;
    .param p13, "startTimeUs"    # J
    .param p15, "endTimeUs"    # J
    .param p17, "chunkMediaSequence"    # J
    .param p19, "partIndex"    # I
    .param p20, "isPublished"    # Z
    .param p21, "discontinuitySequenceNumber"    # I
    .param p22, "hasGapTag"    # Z
    .param p23, "isPrimaryTimestampSource"    # Z
    .param p24, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p25, "timestampAdjusterInitializationTimeoutMs"    # J
    .param p27, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p28, "previousExtractor"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;
    .param p29, "id3Decoder"    # Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;
    .param p30, "scratchId3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p31, "shouldSpliceIn"    # Z
    .param p32, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZIZZ",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;",
            "Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "Z",
            "Lcom/google/android/exoplayer2/analytics/PlayerId;",
            ")V"
        }
    .end annotation

    .line 343
    .local p10, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    move-object/from16 v12, p0

    move-object/from16 v13, p7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 352
    move/from16 v0, p5

    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->mediaSegmentEncrypted:Z

    .line 353
    move/from16 v1, p19

    iput v1, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->partIndex:I

    .line 354
    move/from16 v2, p20

    iput-boolean v2, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPublished:Z

    .line 355
    move/from16 v3, p21

    iput v3, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    .line 356
    iput-object v13, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 357
    move-object/from16 v4, p6

    iput-object v4, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 358
    if-eqz v13, :cond_33

    const/4 v5, 0x1

    goto :goto_34

    :cond_33
    const/4 v5, 0x0

    :goto_34
    iput-boolean v5, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataLoadRequired:Z

    .line 359
    move/from16 v5, p8

    iput-boolean v5, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initSegmentEncrypted:Z

    .line 360
    move-object/from16 v6, p9

    iput-object v6, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->playlistUrl:Landroid/net/Uri;

    .line 361
    move/from16 v7, p23

    iput-boolean v7, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPrimaryTimestampSource:Z

    .line 362
    move-object/from16 v8, p24

    iput-object v8, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 363
    move-wide/from16 v9, p25

    iput-wide v9, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjusterInitializationTimeoutMs:J

    .line 364
    move/from16 v11, p22

    iput-boolean v11, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->hasGapTag:Z

    .line 365
    move-object/from16 v14, p1

    iput-object v14, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 366
    move-object/from16 v15, p10

    iput-object v15, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->muxedCaptionFormats:Ljava/util/List;

    .line 367
    move-object/from16 v0, p27

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 368
    move-object/from16 v0, p28

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->previousExtractor:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    .line 369
    move-object/from16 v0, p29

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Decoder:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    .line 370
    move-object/from16 v0, p30

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 371
    move/from16 v0, p31

    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    .line 372
    move-object/from16 v0, p32

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 373
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;

    .line 374
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uidSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    .line 375
    return-void
.end method

.method private static buildDataSource(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 4
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "fullSegmentEncryptionKey"    # [B
    .param p2, "encryptionIv"    # [B

    .line 667
    if-eqz p1, :cond_b

    .line 668
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)V

    return-object v0

    .line 671
    :cond_b
    return-object p0
.end method

.method public static createInstance(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;Landroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;JLcom/google/android/exoplayer2/source/hls/HlsMediaChunk;[B[BZLcom/google/android/exoplayer2/analytics/PlayerId;Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .registers 77
    .param p0, "extractorFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "startOfPlaylistInPeriodUs"    # J
    .param p5, "mediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p6, "segmentBaseHolder"    # Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;
    .param p7, "playlistUrl"    # Landroid/net/Uri;
    .param p9, "trackSelectionReason"    # I
    .param p10, "trackSelectionData"    # Ljava/lang/Object;
    .param p11, "isPrimaryTimestampSource"    # Z
    .param p12, "timestampAdjusterProvider"    # Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;
    .param p13, "timestampAdjusterInitializationTimeoutMs"    # J
    .param p15, "previousChunk"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .param p16, "mediaSegmentKey"    # [B
    .param p17, "initSegmentKey"    # [B
    .param p18, "shouldSpliceIn"    # Z
    .param p19, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;
    .param p20, "cmcdHeadersFactory"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/Format;",
            "J",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;",
            "Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;",
            "J",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            "[B[BZ",
            "Lcom/google/android/exoplayer2/analytics/PlayerId;",
            "Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;",
            ")",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;"
        }
    .end annotation

    .line 116
    .local p8, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p15

    move-object/from16 v4, p16

    move-object/from16 v5, p17

    move-object/from16 v6, p20

    iget-object v7, v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 118
    .local v7, "mediaSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;
    if-nez v6, :cond_17

    .line 119
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v8

    goto :goto_21

    .line 122
    :cond_17
    iget-wide v8, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    .line 121
    invoke-virtual {v6, v8, v9}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->setChunkDurationUs(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;

    move-result-object v8

    .line 122
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->createHttpRequestHeaders()Lcom/google/common/collect/ImmutableMap;

    move-result-object v8

    :goto_21
    nop

    .line 123
    .local v8, "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v9}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    iget-object v10, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v11, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->url:Ljava/lang/String;

    .line 125
    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v9

    iget-wide v10, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeOffset:J

    .line 126
    invoke-virtual {v9, v10, v11}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v9

    iget-wide v10, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeLength:J

    .line 127
    invoke-virtual {v9, v10, v11}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v9

    .line 128
    iget-boolean v10, v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->isPreload:Z

    if-eqz v10, :cond_46

    const/16 v10, 0x8

    goto :goto_47

    :cond_46
    const/4 v10, 0x0

    :goto_47
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v9

    .line 129
    invoke-virtual {v9, v8}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v9

    .line 130
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v9

    .line 131
    .local v9, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    if-eqz v4, :cond_57

    const/4 v12, 0x1

    goto :goto_58

    :cond_57
    const/4 v12, 0x0

    :goto_58
    move/from16 v45, v12

    .line 134
    .local v45, "mediaSegmentEncrypted":Z
    if-eqz v45, :cond_69

    .line 135
    iget-object v13, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->encryptionIV:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getEncryptionIvArray(Ljava/lang/String;)[B

    move-result-object v13

    goto :goto_6a

    .line 136
    :cond_69
    const/4 v13, 0x0

    :goto_6a
    move-object v15, v13

    .line 137
    .local v15, "mediaSegmentIv":[B
    invoke-static {v0, v4, v15}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->buildDataSource(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v46

    .line 140
    .local v46, "mediaDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    iget-object v14, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 141
    .local v14, "initSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    const/4 v13, 0x0

    .line 142
    .local v13, "initDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    const/16 v16, 0x0

    .line 143
    .local v16, "initSegmentEncrypted":Z
    const/16 v17, 0x0

    .line 144
    .local v17, "initDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    if-eqz v14, :cond_d8

    .line 145
    if-eqz v5, :cond_7d

    const/16 v18, 0x1

    goto :goto_7f

    :cond_7d
    const/16 v18, 0x0

    :goto_7f
    move/from16 v16, v18

    .line 148
    if-eqz v16, :cond_90

    .line 149
    iget-object v11, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getEncryptionIvArray(Ljava/lang/String;)[B

    move-result-object v11

    goto :goto_91

    .line 150
    :cond_90
    const/4 v11, 0x0

    :goto_91
    nop

    .line 151
    .local v11, "initSegmentIv":[B
    iget-object v12, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v10, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v12, v10}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 153
    .local v10, "initSegmentUri":Landroid/net/Uri;
    if-nez v6, :cond_a1

    .line 154
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v12

    goto :goto_ac

    .line 157
    :cond_a1
    nop

    .line 156
    const-string v12, "i"

    invoke-virtual {v6, v12}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->setObjectType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;

    move-result-object v12

    .line 157
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->createHttpRequestHeaders()Lcom/google/common/collect/ImmutableMap;

    move-result-object v12

    :goto_ac
    nop

    .line 158
    .local v12, "initHttpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    .line 160
    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v4

    move-object/from16 v47, v8

    move-object/from16 v48, v9

    .end local v8    # "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .local v47, "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v48, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    iget-wide v8, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeOffset:J

    .line 161
    invoke-virtual {v4, v8, v9}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v4

    iget-wide v8, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeLength:J

    .line 162
    invoke-virtual {v4, v8, v9}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v4

    .line 163
    invoke-virtual {v4, v12}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v4

    .line 164
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v13

    .line 165
    invoke-static {v0, v5, v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->buildDataSource(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v17

    move-object v4, v13

    move/from16 v8, v16

    move-object/from16 v9, v17

    goto :goto_e1

    .line 144
    .end local v10    # "initSegmentUri":Landroid/net/Uri;
    .end local v11    # "initSegmentIv":[B
    .end local v12    # "initHttpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v47    # "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v48    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local v8    # "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_d8
    move-object/from16 v47, v8

    move-object/from16 v48, v9

    .end local v8    # "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local v47    # "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v48    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    move-object v4, v13

    move/from16 v8, v16

    move-object/from16 v9, v17

    .line 168
    .end local v13    # "initDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v16    # "initSegmentEncrypted":Z
    .end local v17    # "initDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .local v4, "initDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .local v8, "initSegmentEncrypted":Z
    .local v9, "initDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    :goto_e1
    iget-wide v10, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    add-long v10, p3, v10

    .line 169
    .local v10, "segmentStartTimeInPeriodUs":J
    iget-wide v12, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    add-long v49, v10, v12

    .line 170
    .local v49, "segmentEndTimeInPeriodUs":J
    iget v12, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    iget v13, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeDiscontinuitySequence:I

    add-int/2addr v13, v12

    .line 173
    .local v13, "discontinuitySequenceNumber":I
    const/4 v12, 0x0

    .line 177
    .local v12, "previousExtractor":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;
    if-eqz v3, :cond_142

    .line 178
    iget-object v0, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-eq v4, v0, :cond_112

    if-eqz v4, :cond_110

    if-eqz v0, :cond_110

    iget-object v0, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v1, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 182
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    iget-wide v0, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-object v5, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v16, v0, v5

    if-nez v16, :cond_110

    goto :goto_112

    :cond_110
    const/4 v0, 0x0

    goto :goto_113

    :cond_112
    :goto_112
    const/4 v0, 0x1

    .line 184
    .local v0, "isSameInitData":Z
    :goto_113
    iget-object v1, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->playlistUrl:Landroid/net/Uri;

    .line 185
    move-object/from16 v5, p7

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    iget-boolean v1, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    if-eqz v1, :cond_124

    const/16 v18, 0x1

    goto :goto_126

    :cond_124
    const/16 v18, 0x0

    :goto_126
    move/from16 v1, v18

    .line 186
    .local v1, "isFollowingChunk":Z
    iget-object v6, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Decoder:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    .line 187
    .local v6, "id3Decoder":Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 192
    .local v5, "scratchId3Data":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    if-eqz v0, :cond_13d

    if-eqz v1, :cond_13d

    move/from16 v16, v0

    .end local v0    # "isSameInitData":Z
    .local v16, "isSameInitData":Z
    iget-boolean v0, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractorInvalidated:Z

    if-nez v0, :cond_13f

    iget v0, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    if-ne v0, v13, :cond_13f

    .line 193
    iget-object v0, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    goto :goto_140

    .line 192
    .end local v16    # "isSameInitData":Z
    .restart local v0    # "isSameInitData":Z
    :cond_13d
    move/from16 v16, v0

    .line 194
    .end local v0    # "isSameInitData":Z
    .restart local v16    # "isSameInitData":Z
    :cond_13f
    const/4 v0, 0x0

    :goto_140
    move-object v12, v0

    .line 195
    .end local v1    # "isFollowingChunk":Z
    .end local v16    # "isSameInitData":Z
    goto :goto_151

    .line 196
    .end local v5    # "scratchId3Data":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v6    # "id3Decoder":Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;
    :cond_142
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;-><init>()V

    move-object v6, v0

    .line 197
    .restart local v6    # "id3Decoder":Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    move-object v5, v0

    move-object v0, v12

    .line 199
    .end local v12    # "previousExtractor":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;
    .local v0, "previousExtractor":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;
    .restart local v5    # "scratchId3Data":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :goto_151
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-object/from16 v51, v5

    move-object/from16 v52, v6

    .end local v5    # "scratchId3Data":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v6    # "id3Decoder":Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;
    .local v51, "scratchId3Data":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v52, "id3Decoder":Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;
    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->mediaSequence:J

    iget v12, v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->partIndex:I

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->isPreload:Z

    const/16 v16, 0x1

    xor-int/lit8 v32, v3, 0x1

    iget-boolean v3, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->hasGapTag:Z

    move/from16 v34, v3

    .line 220
    move-object/from16 v3, p12

    invoke-virtual {v3, v13}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->getAdjuster(I)Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    move-result-object v36

    iget-object v2, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v39, v2

    move v2, v12

    move-object v12, v1

    move/from16 v53, v13

    .end local v13    # "discontinuitySequenceNumber":I
    .local v53, "discontinuitySequenceNumber":I
    move-object/from16 v13, p0

    move-object/from16 v54, v14

    .end local v14    # "initSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .local v54, "initSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    move-object/from16 v14, v46

    move-object/from16 v55, v15

    .end local v15    # "mediaSegmentIv":[B
    .local v55, "mediaSegmentIv":[B
    move-object/from16 v15, v48

    move-object/from16 v16, p2

    move/from16 v17, v45

    move-object/from16 v18, v9

    move-object/from16 v19, v4

    move/from16 v20, v8

    move-object/from16 v21, p7

    move-object/from16 v22, p8

    move/from16 v23, p9

    move-object/from16 v24, p10

    move-wide/from16 v25, v10

    move-wide/from16 v27, v49

    move-wide/from16 v29, v5

    move/from16 v31, v2

    move/from16 v33, v53

    move/from16 v35, p11

    move-wide/from16 v37, p13

    move-object/from16 v40, v0

    move-object/from16 v41, v52

    move-object/from16 v42, v51

    move/from16 v43, p18

    move-object/from16 v44, p19

    invoke-direct/range {v12 .. v44}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ZLcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLcom/google/android/exoplayer2/util/TimestampAdjuster;JLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZLcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 199
    return-object v1
.end method

.method private feedDataToExtractor(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ZZ)V
    .registers 13
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "dataIsEncrypted"    # Z
    .param p4, "initializeTimestampAdjuster"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 499
    if-eqz p3, :cond_b

    .line 500
    move-object v0, p2

    .line 501
    .local v0, "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->nextLoadPosition:I

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .local v1, "skipLoadedBytes":Z
    :goto_a
    goto :goto_13

    .line 503
    .end local v0    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v1    # "skipLoadedBytes":Z
    :cond_b
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->nextLoadPosition:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 504
    .restart local v0    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    const/4 v1, 0x0

    .line 507
    .restart local v1    # "skipLoadedBytes":Z
    :goto_13
    nop

    .line 508
    :try_start_14
    invoke-direct {p0, p1, v0, p4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->prepareExtraction(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    move-result-object v2

    .line 509
    .local v2, "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    if-eqz v1, :cond_1f

    .line 510
    iget v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->nextLoadPosition:I

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_61

    .line 513
    :cond_1f
    :goto_1f
    :try_start_1f
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v3, :cond_2c

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v3
    :try_end_29
    .catch Ljava/io/EOFException; {:try_start_1f .. :try_end_29} :catch_39
    .catchall {:try_start_1f .. :try_end_29} :catchall_37

    if-eqz v3, :cond_2c

    goto :goto_1f

    .line 523
    :cond_2c
    :try_start_2c
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v5, p2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    :goto_32
    sub-long/2addr v3, v5

    long-to-int v4, v3

    iput v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->nextLoadPosition:I
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_61

    .line 524
    goto :goto_4e

    .line 523
    :catchall_37
    move-exception v3

    goto :goto_55

    .line 514
    :catch_39
    move-exception v3

    .line 515
    .local v3, "e":Ljava/io/EOFException;
    :try_start_3a
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_53

    .line 518
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;->onTruncatedSegmentParsed()V
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_37

    .line 523
    .end local v3    # "e":Ljava/io/EOFException;
    :try_start_47
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v5, p2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_61

    goto :goto_32

    .line 526
    .end local v2    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    :goto_4e
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 527
    nop

    .line 528
    return-void

    .line 520
    .restart local v2    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .restart local v3    # "e":Ljava/io/EOFException;
    :cond_53
    nop

    .end local v0    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v1    # "skipLoadedBytes":Z
    .end local v2    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .end local p1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local p2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local p3    # "dataIsEncrypted":Z
    .end local p4    # "initializeTimestampAdjuster":Z
    :try_start_54
    throw v3
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_37

    .line 523
    .end local v3    # "e":Ljava/io/EOFException;
    .restart local v0    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local v1    # "skipLoadedBytes":Z
    .restart local v2    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .restart local p1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .restart local p2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local p3    # "dataIsEncrypted":Z
    .restart local p4    # "initializeTimestampAdjuster":Z
    :goto_55
    :try_start_55
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-wide v6, p2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    iput v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->nextLoadPosition:I

    .line 524
    nop

    .end local v0    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v1    # "skipLoadedBytes":Z
    .end local p1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local p2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local p3    # "dataIsEncrypted":Z
    .end local p4    # "initializeTimestampAdjuster":Z
    throw v3
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_61

    .line 526
    .end local v2    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .restart local v0    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local v1    # "skipLoadedBytes":Z
    .restart local p1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .restart local p2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local p3    # "dataIsEncrypted":Z
    .restart local p4    # "initializeTimestampAdjuster":Z
    :catchall_61
    move-exception v2

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 527
    goto :goto_67

    :goto_66
    throw v2

    :goto_67
    goto :goto_66
.end method

.method private static getEncryptionIvArray(Ljava/lang/String;)[B
    .registers 7
    .param p0, "ivString"    # Ljava/lang/String;

    .line 639
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 640
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "trimmedIv":Ljava/lang/String;
    goto :goto_13

    .line 642
    .end local v0    # "trimmedIv":Ljava/lang/String;
    :cond_12
    move-object v0, p0

    .line 645
    .restart local v0    # "trimmedIv":Ljava/lang/String;
    :goto_13
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 646
    .local v1, "ivData":[B
    new-array v3, v2, [B

    .line 647
    .local v3, "ivDataWithPadding":[B
    array-length v4, v1

    if-le v4, v2, :cond_26

    array-length v4, v1

    sub-int/2addr v4, v2

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    move v2, v4

    .line 648
    .local v2, "offset":I
    array-length v4, v3

    array-length v5, v1

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    array-length v5, v1

    sub-int/2addr v5, v2

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    return-object v3
.end method

.method private static isIndependent(Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Z
    .registers 3
    .param p0, "segmentBaseHolder"    # Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;
    .param p1, "mediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 676
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    instance-of v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    if-eqz v0, :cond_1b

    .line 677
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    if-nez v0, :cond_19

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->partIndex:I

    if-nez v0, :cond_17

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0

    .line 680
    :cond_1b
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    return v0
.end method

.method private loadMedia()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->mediaSegmentEncrypted:Z

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->feedDataToExtractor(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ZZ)V

    .line 479
    return-void
.end method

.method private maybeLoadInitData()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 460
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataLoadRequired:Z

    if-nez v0, :cond_5

    .line 461
    return-void

    .line 464
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initSegmentEncrypted:Z

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->feedDataToExtractor(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ZZ)V

    .line 471
    iput v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->nextLoadPosition:I

    .line 472
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataLoadRequired:Z

    .line 473
    return-void
.end method

.method private peekId3PrivTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .registers 15
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 593
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_8
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 594
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V
    :try_end_19
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_19} :catch_ac

    .line 598
    nop

    .line 599
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    .line 600
    .local v2, "id":I
    const v5, 0x494433

    if-eq v2, v5, :cond_26

    .line 601
    return-wide v0

    .line 603
    :cond_26
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 604
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v5

    .line 605
    .local v5, "id3Size":I
    add-int/lit8 v6, v5, 0xa

    .line 606
    .local v6, "requiredCapacity":I
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v7

    if-le v6, v7, :cond_50

    .line 607
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    .line 608
    .local v7, "data":[B
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 609
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v8

    invoke-static {v7, v4, v8, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    .end local v7    # "data":[B
    :cond_50
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    invoke-interface {p1, v7, v3, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 612
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Decoder:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decode([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    .line 613
    .local v3, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    if-nez v3, :cond_68

    .line 614
    return-wide v0

    .line 616
    :cond_68
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v7

    .line 617
    .local v7, "metadataLength":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6d
    if-ge v8, v7, :cond_ab

    .line 618
    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v9

    .line 619
    .local v9, "frame":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    instance-of v10, v9, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    if-eqz v10, :cond_a8

    .line 620
    move-object v10, v9

    check-cast v10, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    .line 621
    .local v10, "privFrame":Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
    const-string v11, "com.apple.streaming.transportStreamTimestamp"

    iget-object v12, v10, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a8

    .line 622
    iget-object v0, v10, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->privateData:[B

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 623
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    .line 622
    const/16 v11, 0x8

    invoke-static {v0, v4, v1, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 628
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->scratchId3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    const-wide v11, 0x1ffffffffL

    and-long/2addr v0, v11

    return-wide v0

    .line 617
    .end local v9    # "frame":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    .end local v10    # "privFrame":Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
    :cond_a8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6d

    .line 632
    .end local v8    # "i":I
    :cond_ab
    return-wide v0

    .line 595
    .end local v2    # "id":I
    .end local v3    # "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .end local v5    # "id3Size":I
    .end local v6    # "requiredCapacity":I
    .end local v7    # "metadataLength":I
    :catch_ac
    move-exception v2

    .line 597
    .local v2, "e":Ljava/io/EOFException;
    return-wide v0
.end method

.method private prepareExtraction(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;
    .registers 23
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "initializeTimestampAdjuster"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractor"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 535
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p2}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v9

    .line 536
    .local v9, "bytesToRead":J
    if-eqz p3, :cond_24

    .line 538
    :try_start_a
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPrimaryTimestampSource:Z

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjusterInitializationTimeoutMs:J

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->sharedInitializeOrWait(ZJJ)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_15} :catch_1d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_15} :catch_16

    .line 544
    goto :goto_24

    .line 542
    :catch_16
    move-exception v0

    .line 543
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 540
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1d
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    .line 546
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_24
    :goto_24
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    move-object v3, v0

    move-object/from16 v4, p1

    move-wide v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataReader;JJ)V

    .line 549
    .local v0, "extractorInput":Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    if-nez v3, :cond_8f

    .line 550
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->peekId3PrivTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v3

    .line 551
    .local v3, "id3Timestamp":J
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->resetPeekPosition()V

    .line 553
    nop

    .line 554
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->previousExtractor:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    if-eqz v5, :cond_44

    .line 555
    invoke-interface {v5}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;->recreate()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    move-result-object v5

    goto :goto_5c

    .line 556
    :cond_44
    iget-object v11, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v12, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v13, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v14, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->muxedCaptionFormats:Ljava/util/List;

    iget-object v15, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 561
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v16

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 556
    move-object/from16 v17, v0

    move-object/from16 v18, v5

    invoke-interface/range {v11 .. v18}, Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;->createExtractor(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    move-result-object v5

    :goto_5c
    iput-object v5, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    .line 564
    invoke-interface {v5}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;->isPackedAudioExtractor()Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 565
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 566
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v3, v6

    if-eqz v8, :cond_76

    .line 567
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v6, v3, v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v6

    goto :goto_78

    .line 568
    :cond_76
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    .line 565
    :goto_78
    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setSampleOffsetUs(J)V

    goto :goto_83

    .line 572
    :cond_7c
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setSampleOffsetUs(J)V

    .line 574
    :goto_83
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onNewExtractor()V

    .line 575
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 577
    .end local v3    # "id3Timestamp":J
    :cond_8f
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 578
    return-object v0
.end method

.method public static shouldSpliceIn(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;J)Z
    .registers 12
    .param p0, "previousChunk"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .param p1, "playlistUrl"    # Landroid/net/Uri;
    .param p2, "mediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p3, "segmentBaseHolder"    # Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;
    .param p4, "startOfPlaylistInPeriodUs"    # J

    .line 248
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 250
    return v0

    .line 252
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->playlistUrl:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    if-eqz v1, :cond_11

    .line 255
    return v0

    .line 259
    :cond_11
    iget-object v1, p3, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    add-long/2addr v1, p4

    .line 261
    .local v1, "segmentStartTimeInPeriodUs":J
    invoke-static {p3, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isIndependent(Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_23

    :cond_22
    const/4 v0, 0x1

    :cond_23
    return v0
.end method


# virtual methods
.method public cancelLoad()V
    .registers 2

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    .line 421
    return-void
.end method

.method public getFirstSampleIndex(I)I
    .registers 3
    .param p1, "sampleQueueIndex"    # I

    .line 398
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 399
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lt p1, v0, :cond_11

    .line 401
    const/4 v0, 0x0

    return v0

    .line 403
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public init(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .param p1, "output"    # Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 385
    .local p2, "sampleQueueWriteIndices":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 386
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;

    .line 387
    return-void
.end method

.method public invalidateExtractor()V
    .registers 2

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractorInvalidated:Z

    .line 409
    return-void
.end method

.method public isLoadCompleted()Z
    .registers 2

    .line 413
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public isPublished()Z
    .registers 2

    .line 445
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPublished:Z

    return v0
.end method

.method public load()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->previousExtractor:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 428
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->previousExtractor:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataLoadRequired:Z

    .line 431
    :cond_1a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->maybeLoadInitData()V

    .line 432
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v0, :cond_2e

    .line 433
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->hasGapTag:Z

    if-nez v0, :cond_28

    .line 434
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadMedia()V

    .line 436
    :cond_28
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    .line 438
    :cond_2e
    return-void
.end method

.method public publish()V
    .registers 2

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPublished:Z

    .line 454
    return-void
.end method
