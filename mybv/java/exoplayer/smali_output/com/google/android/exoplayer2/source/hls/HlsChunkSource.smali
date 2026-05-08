.class Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CHUNK_PUBLICATION_STATE_PRELOAD:I = 0x0

.field public static final CHUNK_PUBLICATION_STATE_PUBLISHED:I = 0x1

.field public static final CHUNK_PUBLICATION_STATE_REMOVED:I = 0x2

.field private static final KEY_CACHE_SIZE:I = 0x4


# instance fields
.field private final cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

.field private final encryptionDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private expectedPlaylistUrl:Landroid/net/Uri;

.field private final extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private fatalError:Ljava/io/IOException;

.field private independentSegments:Z

.field private isPrimaryTimestampSource:Z

.field private final keyCache:Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;

.field private liveEdgeInPeriodTimeUs:J

.field private final mediaDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

.field private final playlistFormats:[Lcom/google/android/exoplayer2/Format;

.field private final playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final playlistUrls:[Landroid/net/Uri;

.field private scratchSpace:[B

.field private seenExpectedPlaylistError:Z

.field private final timestampAdjusterInitializationTimeoutMs:J

.field private final timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private final trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

.field private trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;JLjava/util/List;Lcom/google/android/exoplayer2/analytics/PlayerId;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;)V
    .registers 29
    .param p1, "extractorFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
    .param p2, "playlistTracker"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p3, "playlistUrls"    # [Landroid/net/Uri;
    .param p4, "playlistFormats"    # [Lcom/google/android/exoplayer2/Format;
    .param p5, "dataSourceFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;
    .param p6, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;
    .param p7, "timestampAdjusterProvider"    # Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;
    .param p8, "timestampAdjusterInitializationTimeoutMs"    # J
    .param p11, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;
    .param p12, "cmcdConfiguration"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;",
            "[",
            "Landroid/net/Uri;",
            "[",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener;",
            "Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/analytics/PlayerId;",
            "Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;",
            ")V"
        }
    .end annotation

    .line 192
    .local p10, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 193
    move-object/from16 v5, p1

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 194
    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 195
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    .line 196
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistFormats:[Lcom/google/android/exoplayer2/Format;

    .line 197
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 198
    move-wide/from16 v8, p8

    iput-wide v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterInitializationTimeoutMs:J

    .line 199
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    .line 200
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 201
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 202
    new-instance v13, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;

    const/4 v14, 0x4

    invoke-direct {v13, v14}, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;-><init>(I)V

    iput-object v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->keyCache:Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;

    .line 203
    sget-object v13, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    .line 204
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    .line 205
    const/4 v13, 0x1

    invoke-interface {v3, v13}, Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;->createDataSource(I)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v13

    iput-object v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->mediaDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 206
    if-eqz v4, :cond_4c

    .line 207
    invoke-interface {v13, v4}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 209
    :cond_4c
    const/4 v13, 0x3

    invoke-interface {v3, v13}, Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;->createDataSource(I)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v13

    iput-object v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 210
    new-instance v13, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v13, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    iput-object v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 212
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v13, "initialTrackSelection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_60
    array-length v15, v1

    if-ge v14, v15, :cond_75

    .line 214
    aget-object v15, v2, v14

    iget v15, v15, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v15, v15, 0x4000

    if-nez v15, :cond_72

    .line 215
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_72
    add-int/lit8 v14, v14, 0x1

    goto :goto_60

    .line 218
    .end local v14    # "i":I
    :cond_75
    new-instance v14, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 219
    invoke-static {v13}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-direct {v14, v15, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    iput-object v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 220
    return-void
.end method

.method private static getFullEncryptionKeyUri(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;)Landroid/net/Uri;
    .registers 4
    .param p0, "playlist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p1, "segmentBase"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 914
    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_10

    .line 917
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 915
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIsMuxedAudioAndVideo()Z
    .registers 5

    .line 560
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 561
    .local v0, "format":Lcom/google/android/exoplayer2/Format;
    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, "audioMimeType":Ljava/lang/String;
    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "videoMimeType":Ljava/lang/String;
    if-eqz v1, :cond_1e

    if-eqz v2, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    return v3
.end method

.method private getNextMediaSequenceAndPartIndex(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;ZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;
    .registers 27
    .param p1, "previous"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .param p2, "switchingTrack"    # Z
    .param p3, "mediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p4, "startOfPlaylistInPeriodUs"    # J
    .param p6, "loadPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            "Z",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;",
            "JJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 805
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_46

    if-eqz p2, :cond_d

    goto :goto_46

    .line 846
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 847
    new-instance v5, Landroid/util/Pair;

    .line 848
    iget v6, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->partIndex:I

    if-ne v6, v4, :cond_1e

    .line 849
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getNextChunkIndex()J

    move-result-wide v6

    goto :goto_20

    .line 850
    :cond_1e
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->chunkIndex:J

    .line 848
    :goto_20
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 851
    iget v7, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->partIndex:I

    if-ne v7, v4, :cond_29

    goto :goto_2c

    :cond_29
    iget v4, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->partIndex:I

    add-int/2addr v4, v3

    :goto_2c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_45

    .line 852
    :cond_34
    new-instance v5, Landroid/util/Pair;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->chunkIndex:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->partIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 846
    :goto_45
    return-object v5

    .line 806
    :cond_46
    :goto_46
    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v5, p4, v5

    .line 808
    .local v5, "endOfPlaylistInPeriodUs":J
    if-eqz v1, :cond_54

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->independentSegments:Z

    if-eqz v7, :cond_51

    goto :goto_54

    :cond_51
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    goto :goto_56

    :cond_54
    :goto_54
    move-wide/from16 v7, p6

    .line 809
    .local v7, "targetPositionInPeriodUs":J
    :goto_56
    iget-boolean v9, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v9, :cond_76

    cmp-long v9, v7, v5

    if-ltz v9, :cond_76

    .line 811
    new-instance v3, Landroid/util/Pair;

    iget-wide v9, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object v11, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 812
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 813
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 811
    return-object v3

    .line 815
    :cond_76
    sub-long v9, v7, p4

    .line 816
    .local v9, "targetPositionInPlaylistUs":J
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 819
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 821
    invoke-interface {v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v12

    if-eqz v12, :cond_8b

    if-nez v1, :cond_89

    goto :goto_8b

    :cond_89
    const/4 v12, 0x0

    goto :goto_8c

    :cond_8b
    :goto_8b
    const/4 v12, 0x1

    .line 817
    :goto_8c
    invoke-static {v4, v11, v3, v12}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v3

    .line 822
    .local v3, "segmentIndexInPlaylist":I
    int-to-long v11, v3

    iget-wide v13, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    add-long/2addr v11, v13

    .line 823
    .local v11, "mediaSequence":J
    const/4 v4, -0x1

    .line 824
    .local v4, "partIndex":I
    if-ltz v3, :cond_e7

    .line 826
    iget-object v13, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 828
    .local v13, "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    iget-wide v14, v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    iget-wide v0, v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v14, v0

    cmp-long v0, v9, v14

    if-gez v0, :cond_ab

    .line 829
    iget-object v0, v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    goto :goto_ad

    .line 830
    :cond_ab
    iget-object v0, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    :goto_ad
    nop

    .line 831
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_af
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v1, v14, :cond_e1

    .line 832
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    .line 833
    .local v14, "part":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    move v15, v3

    move/from16 v16, v4

    .end local v3    # "segmentIndexInPlaylist":I
    .end local v4    # "partIndex":I
    .local v15, "segmentIndexInPlaylist":I
    .local v16, "partIndex":I
    iget-wide v3, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->relativeStartTimeUs:J

    move-wide/from16 v17, v5

    .end local v5    # "endOfPlaylistInPeriodUs":J
    .local v17, "endOfPlaylistInPeriodUs":J
    iget-wide v5, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->durationUs:J

    add-long/2addr v3, v5

    cmp-long v5, v9, v3

    if-gez v5, :cond_d9

    .line 834
    iget-boolean v3, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    if-eqz v3, :cond_ec

    .line 835
    move v4, v1

    .line 837
    .end local v16    # "partIndex":I
    .restart local v4    # "partIndex":I
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    if-ne v0, v3, :cond_d5

    const-wide/16 v5, 0x1

    goto :goto_d7

    :cond_d5
    const-wide/16 v5, 0x0

    :goto_d7
    add-long/2addr v11, v5

    goto :goto_ee

    .line 831
    .end local v4    # "partIndex":I
    .end local v14    # "part":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .restart local v16    # "partIndex":I
    :cond_d9
    add-int/lit8 v1, v1, 0x1

    move v3, v15

    move/from16 v4, v16

    move-wide/from16 v5, v17

    goto :goto_af

    .end local v15    # "segmentIndexInPlaylist":I
    .end local v16    # "partIndex":I
    .end local v17    # "endOfPlaylistInPeriodUs":J
    .restart local v3    # "segmentIndexInPlaylist":I
    .restart local v4    # "partIndex":I
    .restart local v5    # "endOfPlaylistInPeriodUs":J
    :cond_e1
    move v15, v3

    move/from16 v16, v4

    move-wide/from16 v17, v5

    .end local v3    # "segmentIndexInPlaylist":I
    .end local v4    # "partIndex":I
    .end local v5    # "endOfPlaylistInPeriodUs":J
    .restart local v15    # "segmentIndexInPlaylist":I
    .restart local v16    # "partIndex":I
    .restart local v17    # "endOfPlaylistInPeriodUs":J
    goto :goto_ec

    .line 824
    .end local v0    # "parts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .end local v1    # "i":I
    .end local v13    # "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v15    # "segmentIndexInPlaylist":I
    .end local v16    # "partIndex":I
    .end local v17    # "endOfPlaylistInPeriodUs":J
    .restart local v3    # "segmentIndexInPlaylist":I
    .restart local v4    # "partIndex":I
    .restart local v5    # "endOfPlaylistInPeriodUs":J
    :cond_e7
    move v15, v3

    move/from16 v16, v4

    move-wide/from16 v17, v5

    .line 843
    .end local v3    # "segmentIndexInPlaylist":I
    .end local v4    # "partIndex":I
    .end local v5    # "endOfPlaylistInPeriodUs":J
    .restart local v15    # "segmentIndexInPlaylist":I
    .restart local v16    # "partIndex":I
    .restart local v17    # "endOfPlaylistInPeriodUs":J
    :cond_ec
    :goto_ec
    move/from16 v4, v16

    .end local v16    # "partIndex":I
    .restart local v4    # "partIndex":I
    :goto_ee
    new-instance v0, Landroid/util/Pair;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getNextSegmentHolder(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JI)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;
    .registers 13
    .param p0, "mediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p1, "nextMediaSequence"    # J
    .param p3, "nextPartIndex"    # I

    .line 569
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v0, p1, v0

    long-to-int v1, v0

    .line 570
    .local v1, "segmentIndexInPlaylist":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v0, :cond_2c

    .line 571
    if-eq p3, v4, :cond_13

    move v3, p3

    :cond_13
    move v0, v3

    .line 572
    .local v0, "index":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2a

    .line 573
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    invoke-direct {v2, v3, p1, p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    goto :goto_2b

    .line 574
    :cond_2a
    nop

    .line 572
    :goto_2b
    return-object v2

    .line 577
    .end local v0    # "index":I
    :cond_2c
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 578
    .local v0, "mediaSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    if-ne p3, v4, :cond_3c

    .line 579
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;

    invoke-direct {v2, v0, p1, p2, v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    return-object v2

    .line 582
    :cond_3c
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p3, v5, :cond_52

    .line 584
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    .line 585
    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    .line 584
    return-object v2

    .line 586
    :cond_52
    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-wide/16 v7, 0x1

    if-ge v5, v6, :cond_6f

    .line 588
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    .line 589
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    add-long/2addr v7, p1

    invoke-direct {v2, v3, v7, v8, v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    .line 588
    return-object v2

    .line 592
    :cond_6f
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_86

    .line 594
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 595
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    add-long/2addr v7, p1

    invoke-direct {v2, v4, v7, v8, v3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    .line 594
    return-object v2

    .line 598
    :cond_86
    return-object v2
.end method

.method static getSegmentBaseList(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JI)Ljava/util/List;
    .registers 12
    .param p0, "playlist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p1, "mediaSequence"    # J
    .param p3, "partIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;",
            "JI)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;",
            ">;"
        }
    .end annotation

    .line 744
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v0, p1, v0

    long-to-int v1, v0

    .line 745
    .local v1, "firstSegmentIndexInPlaylist":I
    if-ltz v1, :cond_85

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_11

    goto/16 :goto_85

    .line 749
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v0, "segmentBases":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_58

    .line 751
    if-eq p3, v3, :cond_48

    .line 753
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 754
    .local v2, "firstSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    if-nez p3, :cond_2f

    .line 756
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 757
    :cond_2f
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p3, v4, :cond_46

    .line 759
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    iget-object v5, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, p3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 761
    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    .line 763
    .end local v2    # "firstSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    :cond_48
    const/4 p3, 0x0

    .line 765
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 766
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 765
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 769
    :cond_58
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-eqz v2, :cond_80

    .line 771
    if-ne p3, v3, :cond_67

    const/4 v2, 0x0

    goto :goto_68

    :cond_67
    move v2, p3

    :goto_68
    move p3, v2

    .line 772
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_80

    .line 773
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 774
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, p3, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 773
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 777
    :cond_80
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 747
    .end local v0    # "segmentBases":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;>;"
    :cond_85
    :goto_85
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private maybeCreateEncryptionChunkFor(Landroid/net/Uri;IZLcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .registers 16
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "selectedTrackIndex"    # I
    .param p3, "isInitSegment"    # Z
    .param p4, "cmcdHeadersFactory"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;

    .line 875
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 876
    return-object v0

    .line 879
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->keyCache:Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->remove(Landroid/net/Uri;)[B

    move-result-object v1

    .line 880
    .local v1, "encryptionKey":[B
    if-eqz v1, :cond_12

    .line 884
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->keyCache:Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->put(Landroid/net/Uri;[B)[B

    .line 885
    return-object v0

    .line 889
    :cond_12
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 890
    .local v0, "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p4, :cond_23

    .line 891
    if-eqz p3, :cond_1f

    .line 892
    const-string v2, "i"

    invoke-virtual {p4, v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->setObjectType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;

    .line 894
    :cond_1f
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->createHttpRequestHeaders()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 896
    :cond_23
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    .line 898
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v2

    .line 899
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v2

    .line 900
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v2

    .line 901
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v2

    .line 902
    .local v2, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v10, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistFormats:[Lcom/google/android/exoplayer2/Format;

    aget-object v6, v3, p2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 906
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v7

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 907
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    move-object v3, v10

    move-object v5, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;[B)V

    .line 902
    return-object v10
.end method

.method private resolveTimeToLiveEdgeUs(J)J
    .registers 8
    .param p1, "playbackPositionUs"    # J

    .line 856
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    .line 857
    .local v4, "resolveTimeToLiveEdgePossible":Z
    :goto_e
    if-eqz v4, :cond_13

    .line 858
    sub-long v2, v0, p1

    goto :goto_14

    .line 859
    :cond_13
    nop

    .line 857
    :goto_14
    return-wide v2
.end method

.method private updateLiveEdgeTimeUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .registers 6
    .param p1, "mediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 863
    nop

    .line 864
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v0, :cond_b

    .line 865
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_16

    .line 866
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_16
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    .line 867
    return-void
.end method


# virtual methods
.method public createMediaChunkIterators(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;J)[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .registers 20
    .param p1, "previous"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .param p2, "loadPositionUs"    # J

    .line 667
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-nez v9, :cond_8

    const/4 v0, -0x1

    goto :goto_10

    :cond_8
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, v9, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    :goto_10
    move v10, v0

    .line 668
    .local v10, "oldTrackIndex":I
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v0

    new-array v11, v0, [Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    .line 669
    .local v11, "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_1b
    array-length v0, v11

    if-ge v12, v0, :cond_81

    .line 670
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v0, v12}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v13

    .line 671
    .local v13, "trackIndex":I
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v14, v0, v13

    .line 672
    .local v14, "playlistUrl":Landroid/net/Uri;
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, v14}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 673
    sget-object v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->EMPTY:Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    aput-object v0, v11, v12

    .line 674
    goto :goto_7a

    .line 677
    :cond_35
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 678
    const/4 v1, 0x0

    invoke-interface {v0, v14, v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v15

    .line 680
    .local v15, "playlist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    iget-wide v2, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 682
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v4

    sub-long v6, v2, v4

    .line 683
    .local v6, "startOfPlaylistInPeriodUs":J
    if-eq v13, v10, :cond_4e

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    .line 684
    .local v2, "switchingTrack":Z
    :goto_4f
    nop

    .line 685
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v15

    move-wide v4, v6

    move-wide v8, v6

    .end local v6    # "startOfPlaylistInPeriodUs":J
    .local v8, "startOfPlaylistInPeriodUs":J
    move-wide/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getNextMediaSequenceAndPartIndex(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;ZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    move-result-object v0

    .line 687
    .local v0, "chunkMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 688
    .local v3, "chunkMediaSequence":J
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 689
    .local v1, "partIndex":I
    new-instance v5, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;

    iget-object v6, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    .line 693
    invoke-static {v15, v3, v4, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getSegmentBaseList(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JI)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v8, v9, v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;-><init>(Ljava/lang/String;JLjava/util/List;)V

    aput-object v5, v11, v12

    .line 669
    .end local v0    # "chunkMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v1    # "partIndex":I
    .end local v2    # "switchingTrack":Z
    .end local v3    # "chunkMediaSequence":J
    .end local v8    # "startOfPlaylistInPeriodUs":J
    .end local v13    # "trackIndex":I
    .end local v14    # "playlistUrl":Landroid/net/Uri;
    .end local v15    # "playlist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    :goto_7a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    goto :goto_1b

    .line 695
    .end local v12    # "i":I
    :cond_81
    return-object v11
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 24
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedIndex()I

    move-result v1

    .line 282
    .local v1, "selectedIndex":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_20

    const/4 v3, -0x1

    if-eq v1, v3, :cond_20

    .line 283
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 284
    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v5

    aget-object v2, v2, v5

    .line 283
    invoke-interface {v3, v2, v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v2

    goto :goto_21

    .line 286
    :cond_20
    const/4 v2, 0x0

    :goto_21
    nop

    .line 288
    .local v2, "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    if-eqz v2, :cond_79

    iget-object v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 289
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_79

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    if-nez v3, :cond_31

    goto :goto_79

    .line 301
    :cond_31
    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 302
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 303
    .local v5, "startOfPlaylistInPeriodUs":J
    sub-long v14, p1, v5

    .line 304
    .local v14, "relativePositionUs":J
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 307
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 305
    invoke-static {v3, v7, v4, v4}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v3

    .line 310
    .local v3, "segmentIndex":I
    iget-object v7, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v12, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    .line 311
    .local v12, "firstSyncUs":J
    move-wide v7, v12

    .line 312
    .local v7, "secondSyncUs":J
    iget-object v9, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v4

    if-eq v3, v9, :cond_69

    .line 313
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    add-int/lit8 v9, v3, 0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v7, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    move-wide/from16 v16, v7

    goto :goto_6b

    .line 312
    :cond_69
    move-wide/from16 v16, v7

    .line 315
    .end local v7    # "secondSyncUs":J
    .local v16, "secondSyncUs":J
    :goto_6b
    move-object/from16 v7, p3

    move-wide v8, v14

    move-wide v10, v12

    move-wide/from16 v18, v12

    .end local v12    # "firstSyncUs":J
    .local v18, "firstSyncUs":J
    move-wide/from16 v12, v16

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/exoplayer2/SeekParameters;->resolveSeekPositionUs(JJJ)J

    move-result-wide v7

    add-long/2addr v7, v5

    return-wide v7

    .line 291
    .end local v3    # "segmentIndex":I
    .end local v5    # "startOfPlaylistInPeriodUs":J
    .end local v14    # "relativePositionUs":J
    .end local v16    # "secondSyncUs":J
    .end local v18    # "firstSyncUs":J
    :cond_79
    :goto_79
    return-wide p1
.end method

.method public getChunkPublicationState(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)I
    .registers 11
    .param p1, "mediaChunk"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 328
    iget v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->partIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    .line 330
    return v2

    .line 332
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    aget-object v0, v0, v1

    .line 333
    .local v0, "playlistUrl":Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 334
    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 335
    .local v1, "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->chunkIndex:J

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    .line 336
    .local v5, "segmentIndexInPlaylist":I
    if-gez v5, :cond_29

    .line 338
    return v2

    .line 341
    :cond_29
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_3c

    .line 342
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    goto :goto_3e

    .line 343
    :cond_3c
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    :goto_3e
    nop

    .line 344
    .local v4, "partsInCurrentPlaylist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    iget v6, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->partIndex:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v6, v7, :cond_49

    .line 352
    return v8

    .line 354
    :cond_49
    iget v6, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->partIndex:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    .line 355
    .local v6, "newPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    iget-boolean v7, v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->isPreload:Z

    if-eqz v7, :cond_56

    .line 357
    return v3

    .line 359
    :cond_56
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v7, v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->url:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 360
    .local v3, "newUri":Landroid/net/Uri;
    iget-object v7, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v7, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 361
    goto :goto_6e

    .line 362
    :cond_6d
    const/4 v2, 0x2

    .line 360
    :goto_6e
    return v2
.end method

.method public getNextChunk(JJLjava/util/List;ZLcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V
    .registers 54
    .param p1, "playbackPositionUs"    # J
    .param p3, "loadPositionUs"    # J
    .param p6, "allowEndOfStream"    # Z
    .param p7, "out"    # Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            ">;Z",
            "Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;",
            ")V"
        }
    .end annotation

    .line 390
    .local p5, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;>;"
    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    move-object/from16 v11, p7

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_14

    :cond_e
    invoke-static/range {p5 .. p5}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    :goto_14
    move-object v15, v0

    .line 391
    .local v15, "previous":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    if-nez v15, :cond_19

    const/4 v0, -0x1

    goto :goto_21

    :cond_19
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, v15, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    :goto_21
    move v14, v0

    .line 392
    .local v14, "oldTrackIndex":I
    sub-long v0, v9, p1

    .line 393
    .local v0, "bufferedDurationUs":J
    invoke-direct/range {p0 .. p2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->resolveTimeToLiveEdgeUs(J)J

    move-result-wide v2

    .line 394
    .local v2, "timeToLiveEdgeUs":J
    if-eqz v15, :cond_53

    iget-boolean v4, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->independentSegments:Z

    if-nez v4, :cond_53

    .line 401
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getDurationUs()J

    move-result-wide v4

    .line 402
    .local v4, "subtractedDurationUs":J
    sub-long v6, v0, v4

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 403
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v16, v2, v6

    if-eqz v16, :cond_4e

    .line 404
    sub-long v6, v2, v4

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide/from16 v34, v0

    move-wide/from16 v36, v2

    goto :goto_57

    .line 403
    :cond_4e
    move-wide/from16 v34, v0

    move-wide/from16 v36, v2

    goto :goto_57

    .line 409
    .end local v4    # "subtractedDurationUs":J
    :cond_53
    move-wide/from16 v34, v0

    move-wide/from16 v36, v2

    .end local v0    # "bufferedDurationUs":J
    .end local v2    # "timeToLiveEdgeUs":J
    .local v34, "bufferedDurationUs":J
    .local v36, "timeToLiveEdgeUs":J
    :goto_57
    invoke-virtual {v8, v15, v9, v10}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->createMediaChunkIterators(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;J)[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    move-result-object v12

    .line 410
    .local v12, "mediaChunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-object/from16 v16, v0

    move-wide/from16 v17, p1

    move-wide/from16 v19, v34

    move-wide/from16 v21, v36

    move-object/from16 v23, p5

    move-object/from16 v24, v12

    invoke-interface/range {v16 .. v24}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V

    .line 412
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v13

    .line 413
    .local v13, "selectedTrackIndex":I
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v14, v13, :cond_78

    const/4 v0, 0x1

    goto :goto_79

    :cond_78
    const/4 v0, 0x0

    :goto_79
    move/from16 v38, v0

    .line 414
    .local v38, "switchingTrack":Z
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v4, v0, v13

    .line 415
    .local v4, "selectedPlaylistUrl":Landroid/net/Uri;
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 416
    iput-object v4, v11, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 417
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {v4, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 418
    iput-object v4, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 420
    return-void

    .line 423
    :cond_97
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 424
    invoke-interface {v0, v4, v7}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v5

    .line 426
    .local v5, "playlist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-boolean v0, v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    iput-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->independentSegments:Z

    .line 429
    invoke-direct {v8, v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->updateLiveEdgeTimeUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 432
    iget-wide v0, v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long v16, v0, v2

    .line 433
    .local v16, "startOfPlaylistInPeriodUs":J
    nop

    .line 434
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v38

    move-object v3, v5

    move-object/from16 v18, v4

    move-object v9, v5

    .end local v4    # "selectedPlaylistUrl":Landroid/net/Uri;
    .end local v5    # "playlist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .local v9, "playlist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .local v18, "selectedPlaylistUrl":Landroid/net/Uri;
    move-wide/from16 v4, v16

    const/4 v10, 0x1

    move-wide/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getNextMediaSequenceAndPartIndex(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;ZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    move-result-object v6

    .line 436
    .local v6, "nextMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 437
    .local v19, "chunkMediaSequence":J
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 438
    .local v21, "partIndex":I
    iget-wide v0, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v2, v19, v0

    if-gez v2, :cond_121

    if-eqz v15, :cond_121

    if-eqz v38, :cond_121

    .line 441
    move v13, v14

    .line 442
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v7, v0, v13

    .line 443
    .end local v18    # "selectedPlaylistUrl":Landroid/net/Uri;
    .local v7, "selectedPlaylistUrl":Landroid/net/Uri;
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 444
    invoke-interface {v0, v7, v10}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v9

    .line 446
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-wide v0, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long v16, v0, v2

    .line 449
    const/4 v2, 0x0

    .line 450
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v3, v9

    move-wide/from16 v4, v16

    move-object/from16 v39, v6

    move-object/from16 v18, v7

    .end local v6    # "nextMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v7    # "selectedPlaylistUrl":Landroid/net/Uri;
    .restart local v18    # "selectedPlaylistUrl":Landroid/net/Uri;
    .local v39, "nextMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-wide/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getNextMediaSequenceAndPartIndex(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;ZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    move-result-object v0

    .line 456
    .local v0, "nextMediaSequenceAndPartIndexWithoutAdapting":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 457
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move v7, v13

    move-wide/from16 v40, v16

    move-object/from16 v0, v18

    move-wide/from16 v5, v19

    move/from16 v13, v21

    goto :goto_12c

    .line 438
    .end local v0    # "nextMediaSequenceAndPartIndexWithoutAdapting":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v39    # "nextMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v6    # "nextMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_121
    move-object/from16 v39, v6

    .line 460
    .end local v6    # "nextMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v39    # "nextMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move v7, v13

    move-wide/from16 v40, v16

    move-object/from16 v0, v18

    move-wide/from16 v5, v19

    move/from16 v13, v21

    .end local v16    # "startOfPlaylistInPeriodUs":J
    .end local v18    # "selectedPlaylistUrl":Landroid/net/Uri;
    .end local v19    # "chunkMediaSequence":J
    .end local v21    # "partIndex":I
    .local v0, "selectedPlaylistUrl":Landroid/net/Uri;
    .local v5, "chunkMediaSequence":J
    .local v7, "selectedTrackIndex":I
    .local v13, "partIndex":I
    .local v40, "startOfPlaylistInPeriodUs":J
    :goto_12c
    iget-wide v1, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v3, v5, v1

    if-gez v3, :cond_13a

    .line 461
    new-instance v1, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v1, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 462
    return-void

    .line 466
    :cond_13a
    nop

    .line 467
    invoke-static {v9, v5, v6, v13}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getNextSegmentHolder(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JI)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;

    move-result-object v1

    .line 468
    .local v1, "segmentBaseHolder":Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;
    if-nez v1, :cond_18c

    .line 469
    iget-boolean v2, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v2, :cond_155

    .line 471
    iput-object v0, v11, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 472
    iget-boolean v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v3, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 473
    iput-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 474
    return-void

    .line 475
    :cond_155
    if-nez p6, :cond_184

    iget-object v2, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_162

    move-wide/from16 v27, v5

    goto :goto_186

    .line 480
    :cond_162
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object v3, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 482
    invoke-static {v3}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-wide v10, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object v4, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 483
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move-wide/from16 v27, v5

    .end local v5    # "chunkMediaSequence":J
    .local v27, "chunkMediaSequence":J
    int-to-long v4, v4

    add-long/2addr v10, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v10, v4

    const/4 v4, -0x1

    invoke-direct {v2, v3, v10, v11, v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    move-object v1, v2

    move-object/from16 v10, p7

    move-object v11, v1

    goto :goto_190

    .line 475
    .end local v27    # "chunkMediaSequence":J
    .restart local v5    # "chunkMediaSequence":J
    :cond_184
    move-wide/from16 v27, v5

    .line 476
    .end local v5    # "chunkMediaSequence":J
    .restart local v27    # "chunkMediaSequence":J
    :goto_186
    move-object/from16 v10, p7

    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    .line 477
    return-void

    .line 468
    .end local v27    # "chunkMediaSequence":J
    .restart local v5    # "chunkMediaSequence":J
    :cond_18c
    move-wide/from16 v27, v5

    move-object v10, v11

    .end local v5    # "chunkMediaSequence":J
    .restart local v27    # "chunkMediaSequence":J
    move-object v11, v1

    .line 488
    .end local v1    # "segmentBaseHolder":Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;
    .local v11, "segmentBaseHolder":Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;
    :goto_190
    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 489
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 493
    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    if-nez v2, :cond_19b

    .line 494
    goto :goto_1c4

    .line 501
    :cond_19b
    new-instance v1, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;

    iget-object v3, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    const-string v21, "h"

    iget-boolean v5, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    const/4 v4, 0x1

    xor-int/lit8 v22, v5, 0x1

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v19, v34

    invoke-direct/range {v16 .. v22}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;-><init>(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;JLjava/lang/String;Z)V

    .line 502
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getIsMuxedAudioAndVideo()Z

    move-result v2

    if-eqz v2, :cond_1ba

    .line 503
    const-string v2, "av"

    goto :goto_1c0

    .line 504
    :cond_1ba
    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-static {v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->getObjectType(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Ljava/lang/String;

    move-result-object v2

    .line 501
    :goto_1c0
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->setObjectType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;

    move-result-object v1

    :goto_1c4
    move-object v5, v1

    .line 508
    .local v5, "cmcdHeadersFactory":Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
    iget-object v1, v11, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 509
    invoke-static {v9, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getFullEncryptionKeyUri(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;)Landroid/net/Uri;

    move-result-object v6

    .line 510
    .local v6, "initSegmentKeyUri":Landroid/net/Uri;
    nop

    .line 511
    const/4 v1, 0x1

    invoke-direct {v8, v6, v7, v1, v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->maybeCreateEncryptionChunkFor(Landroid/net/Uri;IZLcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 513
    iget-object v1, v10, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    if-eqz v1, :cond_1da

    .line 514
    return-void

    .line 517
    :cond_1da
    iget-object v1, v11, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    invoke-static {v9, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getFullEncryptionKeyUri(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;)Landroid/net/Uri;

    move-result-object v4

    .line 518
    .local v4, "mediaSegmentKeyUri":Landroid/net/Uri;
    nop

    .line 519
    const/4 v1, 0x0

    invoke-direct {v8, v4, v7, v1, v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->maybeCreateEncryptionChunkFor(Landroid/net/Uri;IZLcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 521
    iget-object v1, v10, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    if-eqz v1, :cond_1ed

    .line 522
    return-void

    .line 525
    :cond_1ed
    nop

    .line 526
    move-object v1, v15

    move-object v2, v0

    move-object v3, v9

    move-object/from16 v42, v12

    move-object v12, v4

    .end local v4    # "mediaSegmentKeyUri":Landroid/net/Uri;
    .local v12, "mediaSegmentKeyUri":Landroid/net/Uri;
    .local v42, "mediaChunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    move-object v4, v11

    move-object/from16 v45, v5

    move-object v10, v6

    move-wide/from16 v43, v27

    .end local v5    # "cmcdHeadersFactory":Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
    .end local v6    # "initSegmentKeyUri":Landroid/net/Uri;
    .end local v27    # "chunkMediaSequence":J
    .local v10, "initSegmentKeyUri":Landroid/net/Uri;
    .local v43, "chunkMediaSequence":J
    .local v45, "cmcdHeadersFactory":Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
    move-wide/from16 v5, v40

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;J)Z

    move-result v1

    .line 528
    .local v1, "shouldSpliceIn":Z
    if-eqz v1, :cond_207

    iget-boolean v2, v11, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->isPreload:Z

    if-eqz v2, :cond_207

    .line 533
    return-void

    .line 536
    :cond_207
    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    move v3, v13

    .end local v13    # "partIndex":I
    .local v3, "partIndex":I
    move-object v13, v2

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->mediaDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move v4, v14

    .end local v14    # "oldTrackIndex":I
    .local v4, "oldTrackIndex":I
    move-object v14, v2

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistFormats:[Lcom/google/android/exoplayer2/Format;

    aget-object v2, v2, v7

    move-object v5, v15

    .end local v15    # "previous":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .local v5, "previous":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    move-object v15, v2

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    move-object/from16 v21, v2

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 546
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v22

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 547
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v23

    iget-boolean v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->isPrimaryTimestampSource:Z

    move/from16 v24, v2

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    move-object/from16 v25, v2

    move v6, v3

    .end local v3    # "partIndex":I
    .local v6, "partIndex":I
    iget-wide v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterInitializationTimeoutMs:J

    move-wide/from16 v26, v2

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->keyCache:Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;

    .line 552
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->get(Landroid/net/Uri;)[B

    move-result-object v29

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->keyCache:Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;

    .line 553
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->get(Landroid/net/Uri;)[B

    move-result-object v30

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-object/from16 v32, v2

    .line 537
    move-wide/from16 v16, v40

    move-object/from16 v18, v9

    move-object/from16 v19, v11

    move-object/from16 v20, v0

    move-object/from16 v28, v5

    move/from16 v31, v1

    move-object/from16 v33, v45

    invoke-static/range {v13 .. v33}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->createInstance(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;Landroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;JLcom/google/android/exoplayer2/source/hls/HlsMediaChunk;[B[BZLcom/google/android/exoplayer2/analytics/PlayerId;Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v2

    move-object/from16 v3, p7

    iput-object v2, v3, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 557
    return-void
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .registers 6
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 712
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    goto :goto_15

    .line 715
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result v0

    return v0

    .line 713
    :cond_15
    :goto_15
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public getTrackSelection()Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    return-object v0
.end method

.method public maybeExcludeTrack(Lcom/google/android/exoplayer2/source/chunk/Chunk;J)Z
    .registers 7
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "exclusionDurationMs"    # J

    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 626
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->indexOf(I)I

    move-result v1

    .line 625
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->excludeTrack(IJ)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_12

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    if-eqz v1, :cond_11

    .line 233
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->maybeThrowPlaylistRefreshError(Landroid/net/Uri;)V

    .line 235
    :cond_11
    return-void

    .line 230
    :cond_12
    throw v0
.end method

.method public obtainsChunksForPlaylist(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "playlistUrl"    # Landroid/net/Uri;

    .line 782
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .registers 6
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 608
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_20

    .line 609
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 610
    .local v0, "encryptionKeyChunk":Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    .line 611
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->keyCache:Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->put(Landroid/net/Uri;[B)[B

    .line 613
    .end local v0    # "encryptionKeyChunk":Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    :cond_20
    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;J)Z
    .registers 10
    .param p1, "playlistUrl"    # Landroid/net/Uri;
    .param p2, "exclusionDurationMs"    # J

    .line 638
    const/4 v0, -0x1

    .line 639
    .local v0, "trackGroupIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 640
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 641
    move v0, v1

    .line 642
    goto :goto_14

    .line 639
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 645
    .end local v1    # "i":I
    :cond_14
    :goto_14
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_19

    .line 646
    return v2

    .line 648
    :cond_19
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->indexOf(I)I

    move-result v3

    .line 649
    .local v3, "trackSelectionIndex":I
    if-ne v3, v1, :cond_22

    .line 650
    return v2

    .line 652
    :cond_22
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 653
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v4

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 654
    invoke-interface {v1, v3, p2, p3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->excludeTrack(IJ)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 655
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->excludeMediaPlaylist(Landroid/net/Uri;J)Z

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_49

    :cond_47
    const/4 v2, 0x0

    goto :goto_4a

    :cond_49
    :goto_49
    nop

    .line 653
    :goto_4a
    return v2
.end method

.method public reset()V
    .registers 2

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 259
    return-void
.end method

.method public setIsPrimaryTimestampSource(Z)V
    .registers 2
    .param p1, "isPrimaryTimestampSource"    # Z

    .line 268
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->isPrimaryTimestampSource:Z

    .line 269
    return-void
.end method

.method public setTrackSelection(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .registers 2
    .param p1, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 248
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 249
    return-void
.end method

.method public shouldCancelLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z
    .registers 6
    .param p1, "playbackPositionUs"    # J
    .param p3, "loadingChunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    .line 728
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_6

    .line 729
    const/4 v0, 0x0

    return v0

    .line 731
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->shouldCancelChunkLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z

    move-result v0

    return v0
.end method
