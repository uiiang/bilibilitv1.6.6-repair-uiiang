.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final allowChunklessPreparation:Z

.field private audioVideoSampleStreamWrapperCount:I

.field private final cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

.field private compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private manifestUrlIndicesPerWrapper:[[I

.field private mediaPeriodCallback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private final metadataType:I

.field private pendingPrepareCount:I

.field private final playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

.field private final playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final sampleStreamWrapperCallback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

.field private sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final streamWrapperIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjusterInitializationTimeoutMs:J

.field private final timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final useSessionKeys:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ZIZLcom/google/android/exoplayer2/analytics/PlayerId;J)V
    .registers 34
    .param p1, "extractorFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
    .param p2, "playlistTracker"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p3, "dataSourceFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;
    .param p4, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;
    .param p5, "cmcdConfiguration"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
    .param p6, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p7, "drmEventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p8, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p9, "eventDispatcher"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .param p10, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p11, "compositeSequenceableLoaderFactory"    # Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;
    .param p12, "allowChunklessPreparation"    # Z
    .param p13, "metadataType"    # I
    .param p14, "useSessionKeys"    # Z
    .param p15, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;
    .param p16, "timestampAdjusterInitializationTimeoutMs"    # J

    .line 148
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 150
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 151
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 152
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 153
    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 154
    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 155
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 156
    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 157
    move-object/from16 v10, p9

    iput-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 158
    move-object/from16 v11, p10

    iput-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 159
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 160
    move/from16 v12, p12

    iput-boolean v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    .line 161
    move/from16 v13, p13

    iput v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->metadataType:I

    .line 162
    move/from16 v14, p14

    iput-boolean v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->useSessionKeys:Z

    .line 163
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 164
    move-wide/from16 v2, p16

    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterInitializationTimeoutMs:J

    .line 165
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$1;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrapperCallback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    .line 166
    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 167
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 168
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 169
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;-><init>()V

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 170
    new-array v3, v2, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 171
    new-array v3, v2, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 172
    new-array v2, v2, [[I

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    .line 173
    return-void
.end method

.method static synthetic access$106(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    .line 73
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 73
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->mediaPeriodCallback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    return-object v0
.end method

.method private buildAndPrepareAudioSampleStreamWrappers(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 29
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 723
    .local p3, "audioRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local p4, "sampleStreamWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;>;"
    .local p5, "manifestUrlsIndicesPerWrapper":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p6, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    move-object/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    .line 724
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 725
    .local v1, "scratchPlaylistUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v2, Ljava/util/ArrayList;

    .line 726
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 727
    .local v2, "scratchPlaylistFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Format;>;"
    new-instance v3, Ljava/util/ArrayList;

    .line 728
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 729
    .local v3, "scratchIndicesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 730
    .local v4, "alreadyGroupedNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 731
    .local v5, "renditionByNameIndex":I
    :goto_23
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_f7

    .line 733
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->name:Ljava/lang/String;

    .line 734
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3f

    .line 736
    move-object/from16 v14, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    goto/16 :goto_f1

    .line 739
    :cond_3f
    const/4 v7, 0x1

    .line 740
    .local v7, "codecStringsAllowChunklessPreparation":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 741
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 742
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 744
    const/4 v8, 0x0

    .local v8, "renditionIndex":I
    :goto_4a
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ge v8, v9, :cond_87

    .line 745
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;

    iget-object v9, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->name:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 746
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 747
    .local v9, "rendition":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v12, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->url:Landroid/net/Uri;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v12, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v12, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v12, v12, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 751
    invoke-static {v12, v10}, Lcom/google/android/exoplayer2/util/Util;->getCodecCountOfType(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_82

    goto :goto_83

    :cond_82
    const/4 v10, 0x0

    :goto_83
    and-int/2addr v7, v10

    .line 744
    .end local v9    # "rendition":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;
    :cond_84
    add-int/lit8 v8, v8, 0x1

    goto :goto_4a

    .line 755
    .end local v8    # "renditionIndex":I
    :cond_87
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audio:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 756
    .local v8, "sampleStreamWrapperUid":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v9, v11, [Landroid/net/Uri;

    .line 760
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, [Landroid/net/Uri;

    new-array v9, v11, [Lcom/google/android/exoplayer2/Format;

    .line 761
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, [Lcom/google/android/exoplayer2/Format;

    const/16 v17, 0x0

    .line 763
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    .line 757
    move-object/from16 v12, p0

    move-object v13, v8

    move-object/from16 v19, p6

    move-wide/from16 v20, p1

    invoke-direct/range {v12 .. v21}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(Ljava/lang/String;I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v9

    .line 766
    .local v9, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v12

    move-object/from16 v13, p5

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    move-object/from16 v12, p4

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    move-object/from16 v14, p0

    iget-boolean v15, v14, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    if-eqz v15, :cond_f1

    if-eqz v7, :cond_f1

    .line 770
    new-array v15, v11, [Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/google/android/exoplayer2/Format;

    .line 771
    .local v15, "renditionFormats":[Lcom/google/android/exoplayer2/Format;
    new-array v10, v10, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v8, v15}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object v0, v10, v11

    new-array v0, v11, [I

    invoke-virtual {v9, v10, v11, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepareWithMultivariantPlaylistInfo([Lcom/google/android/exoplayer2/source/TrackGroup;I[I)V

    .line 732
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "codecStringsAllowChunklessPreparation":Z
    .end local v8    # "sampleStreamWrapperUid":Ljava/lang/String;
    .end local v9    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v15    # "renditionFormats":[Lcom/google/android/exoplayer2/Format;
    :cond_f1
    :goto_f1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p3

    goto/16 :goto_23

    .line 731
    :cond_f7
    move-object/from16 v14, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 776
    .end local v5    # "renditionByNameIndex":I
    return-void
.end method

.method private buildAndPrepareMainSampleStreamWrapper(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 37
    .param p1, "multivariantPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    .param p2, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p4, "sampleStreamWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;>;"
    .local p5, "manifestUrlIndicesPerWrapper":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p6, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 592
    .local v1, "variantTypes":[I
    const/4 v2, 0x0

    .line 593
    .local v2, "videoVariantCount":I
    const/4 v3, 0x0

    .line 594
    .local v3, "audioVariantCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v4, v5, :cond_46

    .line 595
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 596
    .local v5, "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    iget-object v8, v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lcom/google/android/exoplayer2/Format;

    .line 597
    .local v8, "format":Lcom/google/android/exoplayer2/Format;
    iget v9, v8, Lcom/google/android/exoplayer2/Format;->height:I

    if-gtz v9, :cond_3f

    iget-object v9, v8, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2e

    goto :goto_3f

    .line 600
    :cond_2e
    iget-object v6, v8, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3b

    .line 601
    aput v7, v1, v4

    .line 602
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 604
    :cond_3b
    const/4 v6, -0x1

    aput v6, v1, v4

    goto :goto_43

    .line 598
    :cond_3f
    :goto_3f
    aput v6, v1, v4

    .line 599
    add-int/lit8 v2, v2, 0x1

    .line 594
    .end local v5    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    .end local v8    # "format":Lcom/google/android/exoplayer2/Format;
    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 607
    .end local v4    # "i":I
    :cond_46
    const/4 v4, 0x0

    .line 608
    .local v4, "useVideoVariantsOnly":Z
    const/4 v5, 0x0

    .line 609
    .local v5, "useNonAudioVariantsOnly":Z
    array-length v8, v1

    .line 610
    .local v8, "selectedVariantsCount":I
    if-lez v2, :cond_4e

    .line 614
    const/4 v4, 0x1

    .line 615
    move v8, v2

    goto :goto_55

    .line 616
    :cond_4e
    array-length v9, v1

    if-ge v3, v9, :cond_55

    .line 619
    const/4 v5, 0x1

    .line 620
    array-length v9, v1

    sub-int v8, v9, v3

    .line 622
    :cond_55
    :goto_55
    new-array v15, v8, [Landroid/net/Uri;

    .line 623
    .local v15, "selectedPlaylistUrls":[Landroid/net/Uri;
    new-array v14, v8, [Lcom/google/android/exoplayer2/Format;

    .line 624
    .local v14, "selectedPlaylistFormats":[Lcom/google/android/exoplayer2/Format;
    new-array v13, v8, [I

    .line 625
    .local v13, "selectedVariantIndices":[I
    const/4 v9, 0x0

    .line 626
    .local v9, "outIndex":I
    const/4 v10, 0x0

    move/from16 v19, v9

    .end local v9    # "outIndex":I
    .local v10, "i":I
    .local v19, "outIndex":I
    :goto_5f
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v10, v9, :cond_8c

    .line 627
    if-eqz v4, :cond_6d

    aget v9, v1, v10

    if-ne v9, v6, :cond_89

    :cond_6d
    if-eqz v5, :cond_73

    aget v9, v1, v10

    if-eq v9, v7, :cond_89

    .line 629
    :cond_73
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 630
    .local v9, "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    iget-object v11, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    aput-object v11, v15, v19

    .line 631
    iget-object v11, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lcom/google/android/exoplayer2/Format;

    aput-object v11, v14, v19

    .line 632
    add-int/lit8 v11, v19, 0x1

    .end local v19    # "outIndex":I
    .local v11, "outIndex":I
    aput v10, v13, v19

    move/from16 v19, v11

    .line 626
    .end local v9    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    .end local v11    # "outIndex":I
    .restart local v19    # "outIndex":I
    :cond_89
    add-int/lit8 v10, v10, 0x1

    goto :goto_5f

    .line 635
    .end local v10    # "i":I
    :cond_8c
    const/4 v12, 0x0

    aget-object v9, v14, v12

    iget-object v10, v9, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 636
    .local v10, "codecs":Ljava/lang/String;
    invoke-static {v10, v6}, Lcom/google/android/exoplayer2/util/Util;->getCodecCountOfType(Ljava/lang/String;I)I

    move-result v6

    .line 637
    .local v6, "numberOfVideoCodecs":I
    invoke-static {v10, v7}, Lcom/google/android/exoplayer2/util/Util;->getCodecCountOfType(Ljava/lang/String;I)I

    move-result v9

    .line 638
    .local v9, "numberOfAudioCodecs":I
    if-eq v9, v7, :cond_a5

    if-nez v9, :cond_ad

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 640
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_ad

    :cond_a5
    if-gt v6, v7, :cond_ad

    add-int v11, v9, v6

    if-lez v11, :cond_ad

    const/4 v11, 0x1

    goto :goto_ae

    :cond_ad
    const/4 v11, 0x0

    :goto_ae
    move/from16 v20, v11

    .line 645
    .local v20, "codecsStringAllowsChunklessPreparation":Z
    if-nez v4, :cond_b6

    if-lez v9, :cond_b6

    .line 646
    const/4 v11, 0x1

    goto :goto_b7

    .line 647
    :cond_b6
    const/4 v11, 0x0

    :goto_b7
    nop

    .line 648
    .local v11, "trackType":I
    const-string v7, "main"

    .line 649
    .local v7, "sampleStreamWrapperUid":Ljava/lang/String;
    move-object/from16 v21, v1

    .end local v1    # "variantTypes":[I
    .local v21, "variantTypes":[I
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    move/from16 v22, v2

    .end local v2    # "videoVariantCount":I
    .local v22, "videoVariantCount":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    .line 650
    move/from16 v23, v9

    .end local v9    # "numberOfAudioCodecs":I
    .local v23, "numberOfAudioCodecs":I
    move-object/from16 v9, p0

    move-object/from16 v24, v10

    .end local v10    # "codecs":Ljava/lang/String;
    .local v24, "codecs":Ljava/lang/String;
    move-object v10, v7

    move/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "audioVariantCount":I
    .local v25, "audioVariantCount":I
    move-object v12, v15

    move-object v3, v13

    .end local v13    # "selectedVariantIndices":[I
    .local v3, "selectedVariantIndices":[I
    move-object v13, v14

    move-object/from16 v27, v14

    .end local v14    # "selectedPlaylistFormats":[Lcom/google/android/exoplayer2/Format;
    .local v27, "selectedPlaylistFormats":[Lcom/google/android/exoplayer2/Format;
    move-object v14, v1

    move-object v1, v15

    .end local v15    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .local v1, "selectedPlaylistUrls":[Landroid/net/Uri;
    move-object v15, v2

    move-object/from16 v16, p6

    move-wide/from16 v17, p2

    invoke-direct/range {v9 .. v18}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(Ljava/lang/String;I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v2

    .line 659
    .local v2, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move-object/from16 v9, p4

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    move-object/from16 v10, p5

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    move-object/from16 v12, p0

    iget-boolean v13, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    if-eqz v13, :cond_20f

    if-eqz v20, :cond_20f

    .line 662
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v13, "muxedTrackGroups":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/TrackGroup;>;"
    if-lez v6, :cond_19f

    .line 664
    new-array v14, v8, [Lcom/google/android/exoplayer2/Format;

    .line 665
    .local v14, "videoFormats":[Lcom/google/android/exoplayer2/Format;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_f8
    move-object/from16 v16, v1

    .end local v1    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .local v16, "selectedPlaylistUrls":[Landroid/net/Uri;
    array-length v1, v14

    if-ge v15, v1, :cond_10a

    .line 666
    aget-object v1, v27, v15

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->deriveVideoFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    aput-object v1, v14, v15

    .line 665
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v16

    goto :goto_f8

    .line 668
    .end local v15    # "i":I
    :cond_10a
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v1, v7, v14}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    if-lez v23, :cond_15c

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v1, :cond_12a

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 672
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_121

    goto :goto_12a

    :cond_121
    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v28, v5

    move/from16 v29, v6

    goto :goto_164

    .line 673
    :cond_12a
    :goto_12a
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v17, v3

    .end local v3    # "selectedVariantIndices":[I
    .local v17, "selectedVariantIndices":[I
    const-string v3, ":audio"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v18, v4

    const/4 v15, 0x1

    .end local v4    # "useVideoVariantsOnly":Z
    .local v18, "useVideoVariantsOnly":Z
    new-array v4, v15, [Lcom/google/android/exoplayer2/Format;

    move/from16 v28, v5

    const/4 v15, 0x0

    .end local v5    # "useNonAudioVariantsOnly":Z
    .local v28, "useNonAudioVariantsOnly":Z
    aget-object v5, v27, v15

    move/from16 v29, v6

    .end local v6    # "numberOfVideoCodecs":I
    .local v29, "numberOfVideoCodecs":I
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 676
    invoke-static {v5, v6, v15}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->deriveAudioFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    aput-object v5, v4, v15

    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    .line 673
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_164

    .line 670
    .end local v17    # "selectedVariantIndices":[I
    .end local v18    # "useVideoVariantsOnly":Z
    .end local v28    # "useNonAudioVariantsOnly":Z
    .end local v29    # "numberOfVideoCodecs":I
    .restart local v3    # "selectedVariantIndices":[I
    .restart local v4    # "useVideoVariantsOnly":Z
    .restart local v5    # "useNonAudioVariantsOnly":Z
    .restart local v6    # "numberOfVideoCodecs":I
    :cond_15c
    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v28, v5

    move/from16 v29, v6

    .line 681
    .end local v3    # "selectedVariantIndices":[I
    .end local v4    # "useVideoVariantsOnly":Z
    .end local v5    # "useNonAudioVariantsOnly":Z
    .end local v6    # "numberOfVideoCodecs":I
    .restart local v17    # "selectedVariantIndices":[I
    .restart local v18    # "useVideoVariantsOnly":Z
    .restart local v28    # "useNonAudioVariantsOnly":Z
    .restart local v29    # "numberOfVideoCodecs":I
    :goto_164
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    .line 682
    .local v1, "ccFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    if-eqz v1, :cond_19e

    .line 683
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_169
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_19e

    .line 684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":cc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 685
    .local v4, "ccId":Ljava/lang/String;
    new-instance v5, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v6, 0x1

    new-array v15, v6, [Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/Format;

    const/16 v26, 0x0

    aput-object v6, v15, v26

    invoke-direct {v5, v4, v15}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    .end local v4    # "ccId":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_169

    .line 688
    .end local v1    # "ccFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .end local v3    # "i":I
    .end local v14    # "videoFormats":[Lcom/google/android/exoplayer2/Format;
    :cond_19e
    goto :goto_1c5

    .line 690
    .end local v16    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .end local v17    # "selectedVariantIndices":[I
    .end local v18    # "useVideoVariantsOnly":Z
    .end local v28    # "useNonAudioVariantsOnly":Z
    .end local v29    # "numberOfVideoCodecs":I
    .local v1, "selectedPlaylistUrls":[Landroid/net/Uri;
    .local v3, "selectedVariantIndices":[I
    .local v4, "useVideoVariantsOnly":Z
    .restart local v5    # "useNonAudioVariantsOnly":Z
    .restart local v6    # "numberOfVideoCodecs":I
    :cond_19f
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v28, v5

    move/from16 v29, v6

    .end local v1    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .end local v3    # "selectedVariantIndices":[I
    .end local v4    # "useVideoVariantsOnly":Z
    .end local v5    # "useNonAudioVariantsOnly":Z
    .end local v6    # "numberOfVideoCodecs":I
    .restart local v16    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .restart local v17    # "selectedVariantIndices":[I
    .restart local v18    # "useVideoVariantsOnly":Z
    .restart local v28    # "useNonAudioVariantsOnly":Z
    .restart local v29    # "numberOfVideoCodecs":I
    new-array v1, v8, [Lcom/google/android/exoplayer2/Format;

    .line 691
    .local v1, "audioFormats":[Lcom/google/android/exoplayer2/Format;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1ac
    array-length v4, v1

    if-ge v3, v4, :cond_1bd

    .line 692
    aget-object v4, v27, v3

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 693
    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->deriveAudioFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    aput-object v4, v1, v3

    .line 691
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ac

    .line 698
    .end local v3    # "i":I
    :cond_1bd
    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v3, v7, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    .end local v1    # "audioFormats":[Lcom/google/android/exoplayer2/Format;
    :goto_1c5
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":id3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/exoplayer2/Format;

    new-instance v5, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 705
    const-string v6, "ID3"

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 706
    const-string v6, "application/id3"

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 707
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    .line 708
    .local v1, "id3TrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    new-array v3, v6, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 711
    invoke-interface {v13, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 713
    invoke-interface {v13, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    filled-new-array {v4}, [I

    move-result-object v4

    .line 710
    invoke-virtual {v2, v3, v6, v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepareWithMultivariantPlaylistInfo([Lcom/google/android/exoplayer2/source/TrackGroup;I[I)V

    goto :goto_219

    .line 661
    .end local v13    # "muxedTrackGroups":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/TrackGroup;>;"
    .end local v16    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .end local v17    # "selectedVariantIndices":[I
    .end local v18    # "useVideoVariantsOnly":Z
    .end local v28    # "useNonAudioVariantsOnly":Z
    .end local v29    # "numberOfVideoCodecs":I
    .local v1, "selectedPlaylistUrls":[Landroid/net/Uri;
    .local v3, "selectedVariantIndices":[I
    .restart local v4    # "useVideoVariantsOnly":Z
    .restart local v5    # "useNonAudioVariantsOnly":Z
    .restart local v6    # "numberOfVideoCodecs":I
    :cond_20f
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v28, v5

    move/from16 v29, v6

    .line 715
    .end local v1    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .end local v3    # "selectedVariantIndices":[I
    .end local v4    # "useVideoVariantsOnly":Z
    .end local v5    # "useNonAudioVariantsOnly":Z
    .end local v6    # "numberOfVideoCodecs":I
    .restart local v16    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .restart local v17    # "selectedVariantIndices":[I
    .restart local v18    # "useVideoVariantsOnly":Z
    .restart local v28    # "useNonAudioVariantsOnly":Z
    .restart local v29    # "numberOfVideoCodecs":I
    :goto_219
    return-void
.end method

.method private buildAndPrepareSampleStreamWrappers(J)V
    .registers 25
    .param p1, "positionUs"    # J

    .line 486
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 487
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getMultivariantPlaylist()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    .line 489
    .local v14, "multivariantPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->useSessionKeys:Z

    if-eqz v0, :cond_1b

    .line 490
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->deriveOverridingDrmInitData(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    move-object v6, v0

    goto :goto_20

    .line 491
    :cond_1b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v6, v0

    :goto_20
    nop

    .line 493
    .local v6, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v13, 0x1

    xor-int/2addr v0, v13

    move/from16 v17, v0

    .line 494
    .local v17, "hasVariants":Z
    iget-object v12, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 495
    .local v12, "audioRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    iget-object v11, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->subtitles:Ljava/util/List;

    .line 497
    .local v11, "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    const/4 v10, 0x0

    iput v10, v15, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 499
    .local v8, "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 501
    .local v9, "manifestUrlIndicesPerWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    if-eqz v17, :cond_4a

    .line 502
    move-object/from16 v0, p0

    move-object v1, v14

    move-wide/from16 v2, p1

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildAndPrepareMainSampleStreamWrapper(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 512
    :cond_4a
    move-object/from16 v7, p0

    move-object v0, v8

    move-object v1, v9

    .end local v8    # "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;>;"
    .end local v9    # "manifestUrlIndicesPerWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    .local v0, "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;>;"
    .local v1, "manifestUrlIndicesPerWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    move-wide/from16 v8, p1

    const/4 v2, 0x0

    move-object v10, v12

    move-object v3, v11

    .end local v11    # "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v3, "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    move-object v11, v0

    move-object v4, v12

    .end local v12    # "audioRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v4, "audioRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    move-object v12, v1

    const/4 v5, 0x1

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildAndPrepareAudioSampleStreamWrappers(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 519
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, v15, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->audioVideoSampleStreamWrapperCount:I

    .line 523
    const/4 v7, 0x0

    move v13, v7

    .local v13, "i":I
    :goto_63
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v13, v7, :cond_e5

    .line 524
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 525
    .local v12, "subtitleRendition":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "subtitle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 526
    .local v11, "sampleStreamWrapperUid":Ljava/lang/String;
    const/4 v9, 0x3

    new-array v10, v5, [Landroid/net/Uri;

    iget-object v7, v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->url:Landroid/net/Uri;

    aput-object v7, v10, v2

    new-array v8, v5, [Lcom/google/android/exoplayer2/Format;

    iget-object v7, v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Lcom/google/android/exoplayer2/Format;

    aput-object v7, v8, v2

    const/16 v16, 0x0

    .line 533
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    .line 527
    move-object/from16 v7, p0

    move-object/from16 v19, v8

    move-object v8, v11

    move-object/from16 v20, v11

    .end local v11    # "sampleStreamWrapperUid":Ljava/lang/String;
    .local v20, "sampleStreamWrapperUid":Ljava/lang/String;
    move-object/from16 v11, v19

    move-object v2, v12

    .end local v12    # "subtitleRendition":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;
    .local v2, "subtitleRendition":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;
    move-object/from16 v12, v16

    move/from16 v21, v13

    .end local v13    # "i":I
    .local v21, "i":I
    move-object/from16 v13, v18

    move-object/from16 v18, v14

    .end local v14    # "multivariantPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    .local v18, "multivariantPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    move-object v14, v6

    move-wide/from16 v15, p1

    invoke-direct/range {v7 .. v16}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(Ljava/lang/String;I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v7

    .line 536
    .local v7, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    filled-new-array/range {v21 .. v21}, [I

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    new-array v8, v5, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance v9, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v10, v5, [Lcom/google/android/exoplayer2/Format;

    iget-object v11, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    move-object/from16 v11, v20

    .end local v20    # "sampleStreamWrapperUid":Ljava/lang/String;
    .restart local v11    # "sampleStreamWrapperUid":Ljava/lang/String;
    invoke-direct {v9, v11, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object v9, v8, v12

    new-array v9, v12, [I

    invoke-virtual {v7, v8, v12, v9}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepareWithMultivariantPlaylistInfo([Lcom/google/android/exoplayer2/source/TrackGroup;I[I)V

    .line 523
    .end local v2    # "subtitleRendition":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;
    .end local v7    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v11    # "sampleStreamWrapperUid":Ljava/lang/String;
    add-int/lit8 v13, v21, 0x1

    const/4 v2, 0x0

    move-object/from16 v15, p0

    move-object/from16 v14, v18

    .end local v21    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_63

    .end local v18    # "multivariantPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    .restart local v14    # "multivariantPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    :cond_e5
    move/from16 v21, v13

    move-object/from16 v18, v14

    const/4 v12, 0x0

    .line 543
    .end local v13    # "i":I
    .end local v14    # "multivariantPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    .restart local v18    # "multivariantPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    new-array v2, v12, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v7, p0

    iput-object v2, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 544
    new-array v2, v12, [[I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    .line 545
    iget-object v2, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v2

    iput v2, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 547
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_106
    iget v8, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->audioVideoSampleStreamWrapperCount:I

    if-ge v2, v8, :cond_114

    .line 548
    iget-object v8, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v8, v8, v2

    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsPrimaryTimestampSource(Z)V

    .line 547
    add-int/lit8 v2, v2, 0x1

    goto :goto_106

    .line 550
    .end local v2    # "i":I
    :cond_114
    iget-object v2, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v5, v2

    const/4 v10, 0x0

    :goto_118
    if-ge v10, v5, :cond_122

    aget-object v8, v2, v10

    .line 551
    .local v8, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 550
    .end local v8    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v10, v10, 0x1

    goto :goto_118

    .line 554
    :cond_122
    iget-object v2, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v2, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 555
    return-void
.end method

.method private buildSampleStreamWrapper(Ljava/lang/String;I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .registers 27
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "trackType"    # I
    .param p3, "playlistUrls"    # [Landroid/net/Uri;
    .param p4, "playlistFormats"    # [Lcom/google/android/exoplayer2/Format;
    .param p5, "muxedAudioFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p8, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Landroid/net/Uri;",
            "[",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;J)",
            "Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;"
        }
    .end annotation

    .line 787
    .local p6, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local p7, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    move-object/from16 v0, p0

    new-instance v14, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterInitializationTimeoutMs:J

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    move-object v1, v14

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;JLjava/util/List;Lcom/google/android/exoplayer2/analytics/PlayerId;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;)V

    move-object v5, v14

    .line 800
    .local v5, "defaultChunkSource":Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
    new-instance v16, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrapperCallback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->metadataType:I

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;-><init>(Ljava/lang/String;ILcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;I)V

    return-object v16
.end method

.method private static deriveAudioFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;
    .registers 15
    .param p0, "variantFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "mediaTagFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "isPrimaryTrackInVariant"    # Z

    .line 866
    const/4 v0, -0x1

    .line 867
    .local v0, "channelCount":I
    const/4 v1, 0x0

    .line 868
    .local v1, "selectionFlags":I
    const/4 v2, 0x0

    .line 869
    .local v2, "roleFlags":I
    const/4 v3, 0x0

    .line 870
    .local v3, "language":Ljava/lang/String;
    const/4 v4, 0x0

    .line 871
    .local v4, "label":Ljava/lang/String;
    if-eqz p1, :cond_16

    .line 872
    iget-object v5, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 873
    .local v5, "codecs":Ljava/lang/String;
    iget-object v6, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 874
    .local v6, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 875
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 876
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 877
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 878
    iget-object v4, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    goto :goto_2b

    .line 880
    .end local v5    # "codecs":Ljava/lang/String;
    .end local v6    # "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    :cond_16
    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 881
    .restart local v5    # "codecs":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 882
    .restart local v6    # "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    if-eqz p2, :cond_2b

    .line 883
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 884
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 885
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 886
    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 887
    iget-object v4, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 890
    :cond_2b
    :goto_2b
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 891
    .local v7, "sampleMimeType":Ljava/lang/String;
    const/4 v8, -0x1

    if-eqz p2, :cond_35

    iget v9, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    goto :goto_36

    :cond_35
    const/4 v9, -0x1

    .line 892
    .local v9, "averageBitrate":I
    :goto_36
    if-eqz p2, :cond_3a

    iget v8, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    .line 893
    .local v8, "peakBitrate":I
    :cond_3a
    new-instance v10, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v11, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 894
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 895
    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 896
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 897
    invoke-virtual {v10, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 898
    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 899
    invoke-virtual {v10, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 900
    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 901
    invoke-virtual {v10, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 902
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 903
    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 904
    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 905
    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 906
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    .line 893
    return-object v10
.end method

.method private static deriveOverridingDrmInitData(Ljava/util/List;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;"
        }
    .end annotation

    .line 818
    .local p0, "sessionKeyDrmInitData":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 819
    .local v0, "mutableSessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 820
    .local v1, "drmInitDataBySchemeType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 821
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 822
    .local v3, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    iget-object v4, v3, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 827
    .local v4, "scheme":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    .line 828
    .local v5, "j":I
    :goto_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3a

    .line 829
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 830
    .local v6, "nextDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    iget-object v7, v6, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 831
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData;->merge(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    .line 832
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_39

    .line 834
    :cond_37
    add-int/lit8 v5, v5, 0x1

    .line 836
    .end local v6    # "nextDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :goto_39
    goto :goto_1b

    .line 837
    :cond_3a
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    .end local v3    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 839
    .end local v2    # "i":I
    :cond_40
    return-object v1
.end method

.method private static deriveVideoFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .registers 5
    .param p0, "variantFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 843
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "codecs":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "sampleMimeType":Ljava/lang/String;
    new-instance v2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 846
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 847
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 848
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 849
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 850
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 851
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    .line 852
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    .line 853
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->width:I

    .line 854
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->height:I

    .line 855
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 856
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 857
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 858
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 859
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 845
    return-object v2
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 8
    .param p1, "positionUs"    # J

    .line 401
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_14

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 404
    .local v4, "wrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 403
    .end local v4    # "wrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 406
    :cond_13
    return v2

    .line 408
    :cond_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(JZ)V
    .registers 8
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 390
    .local v3, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->discardBuffer(JZ)V

    .line 389
    .end local v3    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 392
    :cond_e
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 11
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 450
    move-wide v0, p1

    .line 451
    .local v0, "seekTargetUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_17

    aget-object v5, v2, v4

    .line 452
    .local v5, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isVideoSampleStream()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 453
    invoke-virtual {v5, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide v0

    .line 454
    goto :goto_17

    .line 451
    .end local v5    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 457
    :cond_17
    :goto_17
    return-wide v0
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 419
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation

    .line 209
    .local p1, "trackSelections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 210
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getMultivariantPlaylist()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    .line 211
    .local v1, "multivariantPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 212
    .local v2, "hasVariants":Z
    const/4 v4, 0x0

    if-eqz v2, :cond_1b

    const/4 v5, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x0

    .line 214
    .local v5, "audioWrapperOffset":I
    :goto_1c
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v6, v6

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->subtitles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    .line 219
    .local v6, "subtitleWrapperOffset":I
    if-eqz v2, :cond_39

    .line 220
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v7, v7, v4

    .line 221
    .local v7, "mainWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    aget-object v8, v8, v4

    .line 222
    .local v8, "mainWrapperVariantIndices":[I
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v9

    .line 223
    .local v9, "mainWrapperTrackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getPrimaryTrackGroupIndex()I

    move-result v7

    .line 224
    .local v7, "mainWrapperPrimaryGroupIndex":I
    goto :goto_3e

    .line 225
    .end local v7    # "mainWrapperPrimaryGroupIndex":I
    .end local v8    # "mainWrapperVariantIndices":[I
    .end local v9    # "mainWrapperTrackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_39
    new-array v8, v4, [I

    .line 226
    .restart local v8    # "mainWrapperVariantIndices":[I
    sget-object v9, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 227
    .restart local v9    # "mainWrapperTrackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    const/4 v7, 0x0

    .line 230
    .restart local v7    # "mainWrapperPrimaryGroupIndex":I
    :goto_3e
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v10, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    const/4 v11, 0x0

    .line 232
    .local v11, "needsPrimaryTrackGroupSelection":Z
    const/4 v12, 0x0

    .line 233
    .local v12, "hasPrimaryTrackGroupSelection":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_49
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_fd

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 234
    .local v14, "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    invoke-interface {v14}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v15

    .line 235
    .local v15, "trackSelectionGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    invoke-virtual {v9, v15}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v3

    .line 236
    .local v3, "mainWrapperTrackGroupIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_9b

    .line 237
    if-ne v3, v7, :cond_92

    .line 239
    const/4 v4, 0x1

    .line 240
    .end local v12    # "hasPrimaryTrackGroupSelection":Z
    .local v4, "hasPrimaryTrackGroupSelection":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_64
    move/from16 v16, v2

    .end local v2    # "hasVariants":Z
    .local v16, "hasVariants":Z
    invoke-interface {v14}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v2

    if-ge v12, v2, :cond_88

    .line 241
    invoke-interface {v14, v12}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v2

    aget v2, v8, v2

    .line 242
    .local v2, "variantIndex":I
    move/from16 v17, v3

    .end local v3    # "mainWrapperTrackGroupIndex":I
    .local v17, "mainWrapperTrackGroupIndex":I
    new-instance v3, Lcom/google/android/exoplayer2/offline/StreamKey;

    move/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "hasPrimaryTrackGroupSelection":Z
    .local v18, "hasPrimaryTrackGroupSelection":Z
    invoke-direct {v3, v4, v2}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(II)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v2    # "variantIndex":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_64

    .end local v17    # "mainWrapperTrackGroupIndex":I
    .end local v18    # "hasPrimaryTrackGroupSelection":Z
    .restart local v3    # "mainWrapperTrackGroupIndex":I
    .restart local v4    # "hasPrimaryTrackGroupSelection":Z
    :cond_88
    move/from16 v17, v3

    move/from16 v18, v4

    .end local v3    # "mainWrapperTrackGroupIndex":I
    .end local v4    # "hasPrimaryTrackGroupSelection":Z
    .restart local v17    # "mainWrapperTrackGroupIndex":I
    .restart local v18    # "hasPrimaryTrackGroupSelection":Z
    move/from16 v20, v5

    move/from16 v12, v18

    .end local v12    # "i":I
    goto/16 :goto_f3

    .line 247
    .end local v16    # "hasVariants":Z
    .end local v17    # "mainWrapperTrackGroupIndex":I
    .end local v18    # "hasPrimaryTrackGroupSelection":Z
    .local v2, "hasVariants":Z
    .restart local v3    # "mainWrapperTrackGroupIndex":I
    .local v12, "hasPrimaryTrackGroupSelection":Z
    :cond_92
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "hasVariants":Z
    .end local v3    # "mainWrapperTrackGroupIndex":I
    .restart local v16    # "hasVariants":Z
    .restart local v17    # "mainWrapperTrackGroupIndex":I
    const/4 v2, 0x1

    move v11, v2

    move/from16 v20, v5

    .end local v11    # "needsPrimaryTrackGroupSelection":Z
    .local v2, "needsPrimaryTrackGroupSelection":Z
    goto :goto_f3

    .line 251
    .end local v16    # "hasVariants":Z
    .end local v17    # "mainWrapperTrackGroupIndex":I
    .local v2, "hasVariants":Z
    .restart local v3    # "mainWrapperTrackGroupIndex":I
    .restart local v11    # "needsPrimaryTrackGroupSelection":Z
    :cond_9b
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "hasVariants":Z
    .end local v3    # "mainWrapperTrackGroupIndex":I
    .restart local v16    # "hasVariants":Z
    .restart local v17    # "mainWrapperTrackGroupIndex":I
    move v2, v5

    .local v2, "i":I
    :goto_a0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v4, v3

    if-ge v2, v4, :cond_f1

    .line 252
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    .line 253
    .local v3, "wrapperTrackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    invoke-virtual {v3, v15}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v4

    .line 254
    .local v4, "selectedTrackGroupIndex":I
    move-object/from16 v19, v3

    const/4 v3, -0x1

    .end local v3    # "wrapperTrackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .local v19, "wrapperTrackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    if-eq v4, v3, :cond_e7

    .line 256
    if-ge v2, v6, :cond_b8

    .line 257
    const/4 v3, 0x1

    goto :goto_b9

    .line 258
    :cond_b8
    const/4 v3, 0x2

    :goto_b9
    nop

    .line 259
    .local v3, "groupIndexType":I
    move/from16 v18, v4

    .end local v4    # "selectedTrackGroupIndex":I
    .local v18, "selectedTrackGroupIndex":I
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    aget-object v4, v4, v2

    .line 260
    .local v4, "selectedWrapperUrlIndices":[I
    const/16 v20, 0x0

    move/from16 v0, v20

    .local v0, "trackIndex":I
    :goto_c4
    move/from16 v20, v5

    .end local v5    # "audioWrapperOffset":I
    .local v20, "audioWrapperOffset":I
    invoke-interface {v14}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v5

    if-ge v0, v5, :cond_e4

    .line 261
    nop

    .line 262
    invoke-interface {v14, v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v5

    aget v5, v4, v5

    .line 263
    .local v5, "renditionIndex":I
    move-object/from16 v21, v4

    .end local v4    # "selectedWrapperUrlIndices":[I
    .local v21, "selectedWrapperUrlIndices":[I
    new-instance v4, Lcom/google/android/exoplayer2/offline/StreamKey;

    invoke-direct {v4, v3, v5}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(II)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v5    # "renditionIndex":I
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v20

    move-object/from16 v4, v21

    goto :goto_c4

    .end local v21    # "selectedWrapperUrlIndices":[I
    .restart local v4    # "selectedWrapperUrlIndices":[I
    :cond_e4
    move-object/from16 v21, v4

    .line 265
    .end local v0    # "trackIndex":I
    .end local v4    # "selectedWrapperUrlIndices":[I
    .restart local v21    # "selectedWrapperUrlIndices":[I
    goto :goto_f3

    .line 254
    .end local v3    # "groupIndexType":I
    .end local v18    # "selectedTrackGroupIndex":I
    .end local v20    # "audioWrapperOffset":I
    .end local v21    # "selectedWrapperUrlIndices":[I
    .local v4, "selectedTrackGroupIndex":I
    .local v5, "audioWrapperOffset":I
    :cond_e7
    move/from16 v18, v4

    move/from16 v20, v5

    .line 251
    .end local v4    # "selectedTrackGroupIndex":I
    .end local v5    # "audioWrapperOffset":I
    .end local v19    # "wrapperTrackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .restart local v20    # "audioWrapperOffset":I
    add-int/lit8 v2, v2, 0x1

    const/4 v4, -0x1

    move-object/from16 v0, p0

    goto :goto_a0

    .end local v20    # "audioWrapperOffset":I
    .restart local v5    # "audioWrapperOffset":I
    :cond_f1
    move/from16 v20, v5

    .line 269
    .end local v2    # "i":I
    .end local v5    # "audioWrapperOffset":I
    .end local v14    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v15    # "trackSelectionGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v17    # "mainWrapperTrackGroupIndex":I
    .restart local v20    # "audioWrapperOffset":I
    :goto_f3
    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v5, v20

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_49

    .line 270
    .end local v16    # "hasVariants":Z
    .end local v20    # "audioWrapperOffset":I
    .local v2, "hasVariants":Z
    .restart local v5    # "audioWrapperOffset":I
    :cond_fd
    move/from16 v16, v2

    move/from16 v20, v5

    .end local v2    # "hasVariants":Z
    .end local v5    # "audioWrapperOffset":I
    .restart local v16    # "hasVariants":Z
    .restart local v20    # "audioWrapperOffset":I
    if-eqz v11, :cond_139

    if-nez v12, :cond_139

    .line 273
    const/4 v0, 0x0

    aget v2, v8, v0

    .line 274
    .local v2, "lowestBitrateIndex":I
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    aget v4, v8, v0

    .line 275
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 276
    .local v0, "lowestBitrate":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_117
    array-length v4, v8

    if-ge v3, v4, :cond_130

    .line 277
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    aget v5, v8, v3

    .line 278
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 279
    .local v4, "variantBitrate":I
    if-ge v4, v0, :cond_12d

    .line 280
    move v0, v4

    .line 281
    aget v2, v8, v3

    .line 276
    .end local v4    # "variantBitrate":I
    :cond_12d
    add-int/lit8 v3, v3, 0x1

    goto :goto_117

    .line 284
    .end local v3    # "i":I
    :cond_130
    new-instance v3, Lcom/google/android/exoplayer2/offline/StreamKey;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(II)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v0    # "lowestBitrate":I
    .end local v2    # "lowestBitrateIndex":I
    :cond_139
    return-object v10
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 193
    .local v3, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowPrepareError()V

    .line 192
    .end local v3    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 195
    :cond_e
    return-void
.end method

.method public onPlaylistChanged()V
    .registers 5

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 467
    .local v3, "streamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onPlaylistUpdated()V

    .line 466
    .end local v3    # "streamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 469
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->mediaPeriodCallback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 470
    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z
    .registers 10
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "loadErrorInfo"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    .param p3, "forceRetry"    # Z

    .line 475
    const/4 v0, 0x1

    .line 476
    .local v0, "exclusionSucceeded":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_11

    aget-object v4, v1, v3

    .line 477
    .local v4, "streamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v4, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onPlaylistError(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z

    move-result v5

    and-int/2addr v0, v5

    .line 476
    .end local v4    # "streamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 479
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->mediaPeriodCallback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 480
    return v0
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .registers 5
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 185
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->mediaPeriodCallback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->addListener(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 187
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildAndPrepareSampleStreamWrappers(J)V

    .line 188
    return-void
.end method

.method public readDiscontinuity()J
    .registers 3

    .line 424
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 4
    .param p1, "positionUs"    # J

    .line 396
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->reevaluateBuffer(J)V

    .line 397
    return-void
.end method

.method public release()V
    .registers 5

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->removeListener(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 178
    .local v3, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->release()V

    .line 177
    .end local v3    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 180
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->mediaPeriodCallback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 181
    return-void
.end method

.method public seekToUs(J)J
    .registers 7
    .param p1, "positionUs"    # J

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    if-lez v1, :cond_21

    .line 437
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    move-result v0

    .line 438
    .local v0, "forceReset":Z
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 439
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 441
    .end local v1    # "i":I
    :cond_1a
    if-eqz v0, :cond_21

    .line 442
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->reset()V

    .line 445
    .end local v0    # "forceReset":Z
    :cond_21
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .registers 27
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 298
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v3, v3, [I

    .line 299
    .local v3, "streamChildIndices":[I
    array-length v4, v1

    new-array v4, v4, [I

    .line 300
    .local v4, "selectionChildIndices":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    array-length v6, v1

    if-ge v5, v6, :cond_4f

    .line 301
    nop

    .line 302
    aget-object v6, v2, v5

    const/4 v7, -0x1

    if-nez v6, :cond_18

    const/4 v6, -0x1

    goto :goto_26

    :cond_18
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v8, v2, v5

    invoke-virtual {v6, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_26
    aput v6, v3, v5

    .line 303
    aput v7, v4, v5

    .line 304
    aget-object v6, v1, v5

    if-eqz v6, :cond_4c

    .line 305
    aget-object v6, v1, v5

    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    .line 306
    .local v6, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_35
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v10, v9

    if-ge v8, v10, :cond_4c

    .line 307
    aget-object v9, v9, v8

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v9

    if-eq v9, v7, :cond_49

    .line 308
    aput v8, v4, v5

    .line 309
    goto :goto_4c

    .line 306
    :cond_49
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 300
    .end local v6    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v8    # "j":I
    :cond_4c
    :goto_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 315
    .end local v5    # "i":I
    :cond_4f
    const/4 v5, 0x0

    .line 316
    .local v5, "forceReset":Z
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 318
    array-length v6, v1

    new-array v6, v6, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 319
    .local v6, "newStreams":[Lcom/google/android/exoplayer2/source/SampleStream;
    array-length v7, v1

    new-array v7, v7, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 320
    .local v7, "childStreams":[Lcom/google/android/exoplayer2/source/SampleStream;
    array-length v8, v1

    new-array v15, v8, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 321
    .local v15, "childSelections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    const/4 v8, 0x0

    .line 322
    .local v8, "newEnabledSampleStreamWrapperCount":I
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v9, v9

    new-array v13, v9, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 324
    .local v13, "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    const/4 v9, 0x0

    move v14, v8

    move v12, v9

    .end local v8    # "newEnabledSampleStreamWrapperCount":I
    .local v12, "i":I
    .local v14, "newEnabledSampleStreamWrapperCount":I
    :goto_67
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v8, v8

    const/4 v11, 0x0

    if-ge v12, v8, :cond_110

    .line 325
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_6e
    array-length v9, v1

    if-ge v8, v9, :cond_87

    .line 326
    aget v9, v3, v8

    const/4 v10, 0x0

    if-ne v9, v12, :cond_79

    aget-object v9, v2, v8

    goto :goto_7a

    :cond_79
    move-object v9, v10

    :goto_7a
    aput-object v9, v7, v8

    .line 327
    aget v9, v4, v8

    if-ne v9, v12, :cond_82

    aget-object v10, v1, v8

    :cond_82
    aput-object v10, v15, v8

    .line 325
    add-int/lit8 v8, v8, 0x1

    goto :goto_6e

    .line 329
    .end local v8    # "j":I
    :cond_87
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v10, v8, v12

    .line 330
    .local v10, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    nop

    .line 331
    move-object v8, v10

    move-object v9, v15

    move-object v2, v10

    .end local v10    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .local v2, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move-object/from16 v10, p2

    move-object v11, v7

    move-object/from16 v16, v2

    move v2, v12

    .end local v12    # "i":I
    .local v2, "i":I
    .local v16, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move-object/from16 v12, p4

    move-object/from16 v17, v13

    move/from16 v18, v14

    .end local v13    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v14    # "newEnabledSampleStreamWrapperCount":I
    .local v17, "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .local v18, "newEnabledSampleStreamWrapperCount":I
    move-wide/from16 v13, p5

    move-object/from16 v19, v15

    .end local v15    # "childSelections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .local v19, "childSelections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    move v15, v5

    invoke-virtual/range {v8 .. v15}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJZ)Z

    move-result v8

    .line 338
    .local v8, "wasReset":Z
    const/4 v9, 0x0

    .line 339
    .local v9, "wrapperEnabled":Z
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_a6
    array-length v11, v1

    const/4 v12, 0x1

    if-ge v10, v11, :cond_ce

    .line 340
    aget-object v11, v7, v10

    .line 341
    .local v11, "childStream":Lcom/google/android/exoplayer2/source/SampleStream;
    aget v13, v4, v10

    if-ne v13, v2, :cond_c0

    .line 343
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    aput-object v11, v6, v10

    .line 345
    const/4 v9, 0x1

    .line 346
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cb

    .line 347
    :cond_c0
    aget v13, v3, v10

    if-ne v13, v2, :cond_cb

    .line 349
    if-nez v11, :cond_c7

    goto :goto_c8

    :cond_c7
    const/4 v12, 0x0

    :goto_c8
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 339
    .end local v11    # "childStream":Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_cb
    :goto_cb
    add-int/lit8 v10, v10, 0x1

    goto :goto_a6

    .line 352
    .end local v10    # "j":I
    :cond_ce
    if-eqz v9, :cond_100

    .line 353
    move-object/from16 v10, v17

    move/from16 v11, v18

    .end local v17    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v18    # "newEnabledSampleStreamWrapperCount":I
    .local v10, "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .local v11, "newEnabledSampleStreamWrapperCount":I
    aput-object v16, v10, v11

    .line 354
    add-int/lit8 v14, v11, 0x1

    .end local v11    # "newEnabledSampleStreamWrapperCount":I
    .restart local v14    # "newEnabledSampleStreamWrapperCount":I
    if-nez v11, :cond_f2

    .line 358
    move-object/from16 v13, v16

    .end local v16    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .local v13, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v13, v12}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsPrimaryTimestampSource(Z)V

    .line 359
    if-nez v8, :cond_eb

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v12, v11

    if-eqz v12, :cond_eb

    const/4 v15, 0x0

    aget-object v11, v11, v15

    if-eq v13, v11, :cond_107

    .line 364
    :cond_eb
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->reset()V

    .line 365
    const/4 v5, 0x1

    goto :goto_107

    .line 372
    .end local v13    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v16    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_f2
    move-object/from16 v13, v16

    const/4 v15, 0x0

    .end local v16    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v13    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    iget v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->audioVideoSampleStreamWrapperCount:I

    if-ge v2, v11, :cond_fb

    const/4 v11, 0x1

    goto :goto_fc

    :cond_fb
    const/4 v11, 0x0

    :goto_fc
    invoke-virtual {v13, v11}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsPrimaryTimestampSource(Z)V

    goto :goto_107

    .line 352
    .end local v10    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v13    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v14    # "newEnabledSampleStreamWrapperCount":I
    .restart local v16    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v17    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v18    # "newEnabledSampleStreamWrapperCount":I
    :cond_100
    move-object/from16 v13, v16

    move-object/from16 v10, v17

    move/from16 v11, v18

    .end local v16    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v17    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v18    # "newEnabledSampleStreamWrapperCount":I
    .restart local v10    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v11    # "newEnabledSampleStreamWrapperCount":I
    .restart local v13    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move v14, v11

    .line 324
    .end local v8    # "wasReset":Z
    .end local v9    # "wrapperEnabled":Z
    .end local v11    # "newEnabledSampleStreamWrapperCount":I
    .end local v13    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v14    # "newEnabledSampleStreamWrapperCount":I
    :cond_107
    :goto_107
    add-int/lit8 v12, v2, 0x1

    move-object/from16 v2, p3

    move-object v13, v10

    move-object/from16 v15, v19

    .end local v2    # "i":I
    .restart local v12    # "i":I
    goto/16 :goto_67

    .end local v10    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v19    # "childSelections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .local v13, "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v15    # "childSelections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    :cond_110
    move-object v10, v13

    move v11, v14

    move-object/from16 v19, v15

    const/4 v15, 0x0

    .line 377
    .end local v12    # "i":I
    .end local v13    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v14    # "newEnabledSampleStreamWrapperCount":I
    .end local v15    # "childSelections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v10    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v11    # "newEnabledSampleStreamWrapperCount":I
    .restart local v19    # "childSelections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    array-length v2, v6

    move-object/from16 v8, p3

    invoke-static {v6, v15, v8, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    nop

    .line 380
    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 381
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 382
    invoke-interface {v9, v2}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 384
    return-wide p5
.end method
