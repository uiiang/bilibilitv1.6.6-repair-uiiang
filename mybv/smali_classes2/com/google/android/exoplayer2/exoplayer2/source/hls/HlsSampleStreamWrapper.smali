.class final Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;,
        Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;,
        Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader;",
        "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
        "Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAPPABLE_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAMPLE_QUEUE_INDEX_NO_MAPPING_FATAL:I = -0x2

.field public static final SAMPLE_QUEUE_INDEX_NO_MAPPING_NON_FATAL:I = -0x3

.field public static final SAMPLE_QUEUE_INDEX_PENDING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HlsSampleStreamWrapper"


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

.field private final chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

.field private downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

.field private final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private emsgUnwrappingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private enabledTrackGroupCount:I

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoSampleQueues:Z

.field private final hlsSampleStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeekPositionUs:J

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final mediaChunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final metadataType:I

.field private final muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

.field private final nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

.field private final onTracksEndedRunnable:Ljava/lang/Runnable;

.field private optionalTrackGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final overridingDrmInitData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field

.field private pendingResetPositionUs:J

.field private pendingResetUpstreamFormats:Z

.field private prepared:Z

.field private primarySampleQueueIndex:I

.field private primarySampleQueueType:I

.field private primaryTrackGroupIndex:I

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z

.field private sampleOffsetUs:J

.field private sampleQueueIndicesByType:Landroid/util/SparseIntArray;

.field private sampleQueueIsAudioVideoFlags:[Z

.field private sampleQueueMappingDoneByType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sampleQueueTrackIds:[I

.field private sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

.field private sampleQueuesBuilt:Z

.field private sampleQueuesEnabledStates:[Z

.field private seenFirstTrackSelection:Z

.field private sourceChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

.field private trackGroupToSampleQueueIndex:[I

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final trackType:I

.field private tracksEnded:Z

.field private final uid:Ljava/lang/String;

.field private upstreamTrackFormat:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public static synthetic $r8$lambda$6vTR3mtGTvT72nPYfSpGJ3S1EYI(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onTracksEnded()V

    return-void
.end method

.method public static synthetic $r8$lambda$FTpP0pC43I2Fmbrry86yPSv4RFI(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 130
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    .line 133
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 131
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;I)V
    .registers 32
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "trackType"    # I
    .param p3, "callback"    # Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
    .param p4, "chunkSource"    # Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
    .param p6, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p7, "positionUs"    # J
    .param p9, "muxedAudioFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p10, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p11, "drmEventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p12, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p13, "mediaSourceEventDispatcher"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .param p14, "metadataType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;",
            "Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/Allocator;",
            "J",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;",
            "Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;",
            "Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;",
            "I)V"
        }
    .end annotation

    .line 229
    .local p5, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 230
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->uid:Ljava/lang/String;

    .line 231
    move/from16 v4, p2

    iput v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    .line 232
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    .line 233
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 234
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->overridingDrmInitData:Ljava/util/Map;

    .line 235
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 236
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 237
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 238
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 239
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 240
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 241
    move/from16 v14, p14

    iput v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->metadataType:I

    .line 242
    new-instance v15, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v3, "Loader:HlsSampleStreamWrapper"

    invoke-direct {v15, v3}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 243
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;-><init>()V

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    .line 244
    const/4 v3, 0x0

    new-array v15, v3, [I

    iput-object v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 245
    new-instance v15, Ljava/util/HashSet;

    sget-object v16, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    .line 246
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v15

    invoke-direct {v3, v15}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIndicesByType:Landroid/util/SparseIntArray;

    .line 247
    const/4 v3, 0x0

    new-array v15, v3, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iput-object v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 248
    new-array v15, v3, [Z

    iput-object v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    .line 249
    new-array v3, v3, [Z

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    .line 250
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 251
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 252
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    .line 255
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    .line 256
    .local v3, "maybeFinishPrepareRunnable":Ljava/lang/Runnable;
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 258
    new-instance v15, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v15, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    .line 259
    .local v15, "onTracksEndedRunnable":Ljava/lang/Runnable;
    iput-object v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onTracksEndedRunnable:Ljava/lang/Runnable;

    .line 260
    move-object/from16 v16, v3

    .end local v3    # "maybeFinishPrepareRunnable":Ljava/lang/Runnable;
    .local v16, "maybeFinishPrepareRunnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    .line 261
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 262
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 263
    return-void
.end method

.method private assertIsPrepared()V
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroups",
            "optionalTrackGroups"
        }
    .end annotation

    .line 1503
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1504
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    return-void
.end method

.method private buildTracksFromSampleStreams()V
    .registers 15
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroups",
            "optionalTrackGroups",
            "trackGroupToSampleQueueIndex"
        }
    .end annotation

    .line 1375
    const/4 v0, -0x2

    .line 1376
    .local v0, "primaryExtractorTrackType":I
    const/4 v1, -0x1

    .line 1377
    .local v1, "primaryExtractorTrackIndex":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v2, v2

    .line 1378
    .local v2, "extractorTrackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/4 v4, -0x1

    if-ge v3, v2, :cond_47

    .line 1380
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v5, v5, v3

    .line 1381
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1383
    .local v5, "sampleMimeType":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1384
    const/4 v6, 0x2

    .local v6, "trackType":I
    goto :goto_32

    .line 1385
    .end local v6    # "trackType":I
    :cond_21
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1386
    const/4 v6, 0x1

    .restart local v6    # "trackType":I
    goto :goto_32

    .line 1387
    .end local v6    # "trackType":I
    :cond_29
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 1388
    const/4 v6, 0x3

    .restart local v6    # "trackType":I
    goto :goto_32

    .line 1390
    .end local v6    # "trackType":I
    :cond_31
    const/4 v6, -0x2

    .line 1392
    .restart local v6    # "trackType":I
    :goto_32
    invoke-static {v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v7

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v8

    if-le v7, v8, :cond_3f

    .line 1393
    move v0, v6

    .line 1394
    move v1, v3

    goto :goto_44

    .line 1395
    :cond_3f
    if-ne v6, v0, :cond_44

    if-eq v1, v4, :cond_44

    .line 1399
    const/4 v1, -0x1

    .line 1378
    .end local v5    # "sampleMimeType":Ljava/lang/String;
    .end local v6    # "trackType":I
    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1403
    .end local v3    # "i":I
    :cond_47
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    .line 1404
    .local v3, "chunkSourceTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    iget v5, v3, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 1407
    .local v5, "chunkSourceTrackCount":I
    iput v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 1408
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    .line 1409
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_56
    if-ge v4, v2, :cond_5f

    .line 1410
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aput v4, v6, v4

    .line 1409
    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    .line 1414
    .end local v4    # "i":I
    :cond_5f
    new-array v4, v2, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 1415
    .local v4, "trackGroups":[Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_62
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v6, v2, :cond_e8

    .line 1416
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/Format;

    .line 1417
    .local v9, "sampleFormat":Lcom/google/android/exoplayer2/Format;
    if-ne v6, v1, :cond_a6

    .line 1418
    new-array v7, v5, [Lcom/google/android/exoplayer2/Format;

    .line 1419
    .local v7, "formats":[Lcom/google/android/exoplayer2/Format;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_79
    if-ge v10, v5, :cond_9a

    .line 1420
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v11

    .line 1421
    .local v11, "playlistFormat":Lcom/google/android/exoplayer2/Format;
    if-ne v0, v8, :cond_89

    iget-object v12, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v12, :cond_89

    .line 1422
    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v11

    .line 1427
    :cond_89
    nop

    .line 1428
    if-ne v5, v8, :cond_91

    .line 1429
    invoke-virtual {v9, v11}, Lcom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    goto :goto_95

    .line 1430
    :cond_91
    invoke-static {v11, v9, v8}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    :goto_95
    aput-object v12, v7, v10

    .line 1419
    .end local v11    # "playlistFormat":Lcom/google/android/exoplayer2/Format;
    add-int/lit8 v10, v10, 0x1

    goto :goto_79

    .line 1432
    .end local v10    # "j":I
    :cond_9a
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->uid:Ljava/lang/String;

    invoke-direct {v8, v10, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object v8, v4, v6

    .line 1433
    iput v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 1434
    .end local v7    # "formats":[Lcom/google/android/exoplayer2/Format;
    goto :goto_e4

    .line 1438
    :cond_a6
    const/4 v10, 0x2

    if-ne v0, v10, :cond_b4

    iget-object v10, v9, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b4

    .line 1439
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    goto :goto_b5

    .line 1440
    :cond_b4
    const/4 v10, 0x0

    :goto_b5
    nop

    .line 1441
    .local v10, "playlistFormat":Lcom/google/android/exoplayer2/Format;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->uid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":muxed:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ge v6, v1, :cond_cb

    move v12, v6

    goto :goto_cd

    :cond_cb
    add-int/lit8 v12, v6, -0x1

    :goto_cd
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1442
    .local v11, "muxedTrackGroupId":Ljava/lang/String;
    new-instance v12, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v8, v8, [Lcom/google/android/exoplayer2/Format;

    .line 1445
    invoke-static {v10, v9, v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    aput-object v13, v8, v7

    invoke-direct {v12, v11, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object v12, v4, v6

    .line 1415
    .end local v9    # "sampleFormat":Lcom/google/android/exoplayer2/Format;
    .end local v10    # "playlistFormat":Lcom/google/android/exoplayer2/Format;
    .end local v11    # "muxedTrackGroupId":Ljava/lang/String;
    :goto_e4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_62

    .line 1448
    .end local v6    # "i":I
    :cond_e8
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createTrackGroupArrayWithDrmInfo([Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 1449
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    if-nez v6, :cond_f3

    const/4 v7, 0x1

    :cond_f3
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1450
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    .line 1451
    return-void
.end method

.method private canDiscardUpstreamMediaChunksFromIndex(I)Z
    .registers 7
    .param p1, "mediaChunkIndex"    # I

    .line 1256
    move v0, p1

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1a

    .line 1257
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    if-eqz v1, :cond_17

    .line 1261
    return v2

    .line 1256
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1264
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 1265
    .local v0, "mediaChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v3, v3

    if-ge v1, v3, :cond_3a

    .line 1266
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getFirstSampleIndex(I)I

    move-result v3

    .line 1267
    .local v3, "discardFromIndex":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->getReadIndex()I

    move-result v4

    if-le v4, v3, :cond_37

    .line 1271
    return v2

    .line 1265
    .end local v3    # "discardFromIndex":I
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1274
    .end local v1    # "i":I
    :cond_3a
    const/4 v1, 0x1

    return v1
.end method

.method private static createFakeTrackOutput(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;
    .registers 4
    .param p0, "id"    # I
    .param p1, "type"    # I

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmapped track with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HlsSampleStreamWrapper"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    return-object v0
.end method

.method private createSampleQueue(II)Lcom/google/android/exoplayer2/source/SampleQueue;
    .registers 12
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 1128
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, v0

    .line 1130
    .local v0, "trackCount":I
    const/4 v1, 0x1

    if-eq p2, v1, :cond_b

    const/4 v2, 0x2

    if-ne p2, v2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 1131
    .local v1, "isAudioVideo":Z
    :cond_b
    :goto_b
    new-instance v8, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->overridingDrmInitData:Ljava/util/Map;

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$1;)V

    .line 1133
    .local v2, "sampleQueue":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setStartTimeUs(J)V

    .line 1134
    if-eqz v1, :cond_26

    .line 1135
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 1137
    :cond_26
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setSampleOffsetUs(J)V

    .line 1138
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sourceChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    if-eqz v3, :cond_32

    .line 1139
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setSourceChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)V

    .line 1141
    :cond_32
    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 1142
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 1143
    aput p1, v3, v0

    .line 1144
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayAppend([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1145
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    .line 1146
    aput-boolean v1, v3, v0

    .line 1147
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    or-int/2addr v3, v1

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    .line 1148
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1149
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIndicesByType:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1150
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v4

    if-le v3, v4, :cond_7a

    .line 1151
    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueIndex:I

    .line 1152
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    .line 1154
    :cond_7a
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    .line 1155
    return-object v2
.end method

.method private createTrackGroupArrayWithDrmInfo([Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 8
    .param p1, "trackGroups"    # [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 1454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2e

    .line 1455
    aget-object v1, p1, v0

    .line 1456
    .local v1, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    iget v2, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v2, v2, [Lcom/google/android/exoplayer2/Format;

    .line 1457
    .local v2, "exposedFormats":[Lcom/google/android/exoplayer2/Format;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_b
    iget v4, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v3, v4, :cond_22

    .line 1458
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 1459
    .local v4, "format":Lcom/google/android/exoplayer2/Format;
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v5, v4}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->getCryptoType(Lcom/google/android/exoplayer2/Format;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format;->copyWithCryptoType(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    aput-object v5, v2, v3

    .line 1457
    .end local v4    # "format":Lcom/google/android/exoplayer2/Format;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1461
    .end local v3    # "j":I
    :cond_22
    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->id:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object v3, p1, v0

    .line 1454
    .end local v1    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v2    # "exposedFormats":[Lcom/google/android/exoplayer2/Format;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1463
    .end local v0    # "i":I
    :cond_2e
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    return-object v0
.end method

.method private static deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;
    .registers 11
    .param p0, "playlistFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "sampleFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "propagateBitrates"    # Z

    .line 1545
    if-nez p0, :cond_3

    .line 1546
    return-object p1

    .line 1549
    :cond_3
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 1552
    .local v0, "sampleTrackType":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->getCodecCountOfType(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 1555
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1556
    .local v1, "codecs":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "sampleMimeType":Ljava/lang/String;
    goto :goto_27

    .line 1561
    .end local v1    # "codecs":Ljava/lang/String;
    .end local v3    # "sampleMimeType":Ljava/lang/String;
    :cond_1d
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1562
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->getCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1564
    .restart local v1    # "codecs":Ljava/lang/String;
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1567
    .restart local v3    # "sampleMimeType":Ljava/lang/String;
    :goto_27
    nop

    .line 1569
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 1570
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 1571
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 1572
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 1573
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 1574
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 1575
    const/4 v5, -0x1

    if-eqz p2, :cond_50

    iget v6, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    goto :goto_51

    :cond_50
    const/4 v6, -0x1

    :goto_51
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 1576
    if-eqz p2, :cond_5a

    iget v6, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    goto :goto_5b

    :cond_5a
    const/4 v6, -0x1

    :goto_5b
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 1577
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 1579
    .local v4, "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    const/4 v6, 0x2

    if-ne v0, v6, :cond_77

    .line 1580
    iget v6, p0, Lcom/google/android/exoplayer2/Format;->width:I

    .line 1581
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/exoplayer2/Format;->height:I

    .line 1582
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1583
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1586
    :cond_77
    if-eqz v3, :cond_7c

    .line 1587
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1590
    :cond_7c
    iget v6, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v6, v5, :cond_87

    if-ne v0, v2, :cond_87

    .line 1591
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1594
    :cond_87
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v2, :cond_9a

    .line 1595
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1596
    .local v2, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    iget-object v5, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v5, :cond_97

    .line 1597
    iget-object v5, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    .line 1599
    :cond_97
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1602
    .end local v2    # "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    :cond_9a
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    return-object v2
.end method

.method private discardUpstream(I)V
    .registers 12
    .param p1, "preferredQueueSize"    # I

    .line 1035
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1037
    const/4 v0, -0x1

    .line 1038
    .local v0, "newQueueSize":I
    move v1, p1

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 1039
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->canDiscardUpstreamMediaChunksFromIndex(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1040
    move v0, v1

    .line 1041
    goto :goto_20

    .line 1038
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1044
    .end local v1    # "i":I
    :cond_20
    :goto_20
    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    .line 1045
    return-void

    .line 1048
    :cond_24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v1

    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    .line 1049
    .local v8, "endTimeUs":J
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v1

    .line 1050
    .local v1, "firstRemovedChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1051
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    goto :goto_46

    .line 1053
    :cond_3b
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->invalidateExtractor()V

    .line 1055
    :goto_46
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 1057
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    move-wide v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    .line 1059
    return-void
.end method

.method private discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .registers 6
    .param p1, "chunkIndex"    # I

    .line 1278
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 1279
    .local v0, "firstRemovedChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    .line 1280
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v2, v2

    if-ge v1, v2, :cond_25

    .line 1281
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    .line 1282
    .local v2, "discardFromIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->discardUpstreamSamples(I)V

    .line 1280
    .end local v2    # "discardFromIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1284
    .end local v1    # "i":I
    :cond_25
    return-object v0
.end method

.method private finishedReadingChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)Z
    .registers 10
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 1245
    iget v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    .line 1246
    .local v0, "chunkUid":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v1

    .line 1247
    .local v1, "sampleQueueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_20

    .line 1248
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->peekSourceId()J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1d

    .line 1249
    const/4 v3, 0x0

    return v3

    .line 1247
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1252
    .end local v2    # "i":I
    :cond_20
    const/4 v2, 0x1

    return v2
.end method

.method private static formatsMatch(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .registers 9
    .param p0, "manifestFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "sampleFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 1610
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1611
    .local v0, "manifestFormatMimeType":Ljava/lang/String;
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1612
    .local v1, "sampleFormatMimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    .line 1613
    .local v2, "manifestFormatTrackType":I
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_16

    .line 1614
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    return v4

    .line 1615
    :cond_16
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1616
    return v5

    .line 1618
    :cond_1d
    const-string v3, "application/cea-608"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1619
    const-string v3, "application/cea-708"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    .line 1622
    :cond_2e
    return v4

    .line 1620
    :cond_2f
    :goto_2f
    iget v3, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iget v6, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    if-ne v3, v6, :cond_36

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    :goto_37
    return v4
.end method

.method private getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .registers 3

    .line 1467
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    return-object v0
.end method

.method private getMappedTrackOutput(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .registers 6
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 1113
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 1114
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIndicesByType:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1115
    .local v0, "sampleQueueIndex":I
    if-ne v0, v1, :cond_18

    .line 1116
    const/4 v1, 0x0

    return-object v1

    .line 1119
    :cond_18
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1120
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aput p1, v1, v0

    .line 1122
    :cond_28
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_33

    .line 1123
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v1, v1, v0

    goto :goto_37

    .line 1124
    :cond_33
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createFakeTrackOutput(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object v1

    .line 1122
    :goto_37
    return-object v1
.end method

.method private static getTrackTypeScore(I)I
    .registers 2
    .param p0, "trackType"    # I

    .line 1516
    packed-switch p0, :pswitch_data_c

    .line 1524
    const/4 v0, 0x0

    return v0

    .line 1522
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 1518
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 1520
    :pswitch_9
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private initMediaChunkLoad(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)V
    .registers 9
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 1017
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sourceChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 1018
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->upstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    .line 1019
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 1020
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 1022
    .local v0, "sampleQueueWriteIndicesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v2, :cond_2d

    aget-object v5, v1, v4

    .line 1023
    .local v5, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1022
    .end local v5    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1025
    :cond_2d
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->init(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;Lcom/google/common/collect/ImmutableList;)V

    .line 1026
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v2, v1

    :goto_37
    if-ge v3, v2, :cond_48

    aget-object v4, v1, v3

    .line 1027
    .local v4, "sampleQueue":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;
    invoke-virtual {v4, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setSourceChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)V

    .line 1028
    iget-boolean v5, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    if-eqz v5, :cond_45

    .line 1029
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->splice()V

    .line 1026
    .end local v4    # "sampleQueue":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 1032
    :cond_48
    return-void
.end method

.method private static isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z
    .registers 2
    .param p0, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 1606
    instance-of v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    return v0
.end method

.method private isPendingReset()Z
    .registers 6

    .line 1471
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private mapSampleQueuesToMatchTrackGroups()V
    .registers 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroupToSampleQueueIndex"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroups"
        }
    .end annotation

    .line 1323
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    .line 1324
    .local v0, "trackGroupCount":I
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    .line 1325
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_3d

    .line 1327
    const/4 v2, 0x0

    .local v2, "queueIndex":I
    :goto_10
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v4, v3

    if-ge v2, v4, :cond_3a

    .line 1328
    aget-object v3, v3, v2

    .line 1329
    .local v3, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/Format;

    .line 1330
    .local v4, "upstreamFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->formatsMatch(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1331
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aput v2, v5, v1

    .line 1332
    goto :goto_3a

    .line 1327
    .end local v3    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local v4    # "upstreamFormat":Lcom/google/android/exoplayer2/Format;
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1326
    .end local v2    # "queueIndex":I
    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1336
    .end local v1    # "i":I
    :cond_3d
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    .line 1337
    .local v2, "sampleStream":Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->bindSampleQueue()V

    .line 1338
    .end local v2    # "sampleStream":Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;
    goto :goto_43

    .line 1339
    :cond_53
    return-void
.end method

.method private maybeFinishPrepare()V
    .registers 6

    .line 1300
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->released:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-nez v0, :cond_d

    goto :goto_33

    .line 1303
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    .line 1304
    .local v3, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    if-nez v4, :cond_1c

    .line 1305
    return-void

    .line 1303
    .end local v3    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1308
    :cond_1f
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-eqz v0, :cond_27

    .line 1311
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mapSampleQueuesToMatchTrackGroups()V

    goto :goto_32

    .line 1314
    :cond_27
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->buildTracksFromSampleStreams()V

    .line 1315
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsPrepared()V

    .line 1316
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    .line 1318
    :goto_32
    return-void

    .line 1301
    :cond_33
    :goto_33
    return-void
.end method

.method private onTracksEnded()V
    .registers 2

    .line 1295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    .line 1296
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    .line 1297
    return-void
.end method

.method private resetSampleQueues()V
    .registers 7

    .line 1288
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_11

    aget-object v4, v0, v3

    .line 1289
    .local v4, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    .line 1288
    .end local v4    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1291
    :cond_11
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    .line 1292
    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .registers 9
    .param p1, "positionUs"    # J

    .line 1481
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, v0

    .line 1482
    .local v0, "sampleQueueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_1f

    .line 1483
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v2, v2, v1

    .line 1484
    .local v2, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    move-result v4

    .line 1489
    .local v4, "seekInsideQueue":Z
    if-nez v4, :cond_1c

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    aget-boolean v5, v5, v1

    if-nez v5, :cond_1b

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    if-nez v5, :cond_1c

    .line 1490
    :cond_1b
    return v3

    .line 1482
    .end local v2    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local v4    # "seekInsideQueue":Z
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1493
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, 0x1

    return v1
.end method

.method private setIsPrepared()V
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroups",
            "optionalTrackGroups"
        }
    .end annotation

    .line 1498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    .line 1499
    return-void
.end method

.method private updateSampleStreams([Lcom/google/android/exoplayer2/source/SampleStream;)V
    .registers 7
    .param p1, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 1236
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1237
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_18

    aget-object v2, p1, v1

    .line 1238
    .local v2, "stream":Lcom/google/android/exoplayer2/source/SampleStream;
    if-eqz v2, :cond_15

    .line 1239
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    .end local v2    # "stream":Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1242
    :cond_18
    return-void
.end method


# virtual methods
.method public bindSampleQueueToSampleStream(I)I
    .registers 6
    .param p1, "trackGroupIndex"    # I

    .line 310
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget v0, v0, p1

    .line 314
    .local v0, "sampleQueueIndex":I
    const/4 v1, -0x1

    const/4 v2, -0x2

    if-ne v0, v1, :cond_22

    .line 315
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 316
    const/4 v2, -0x3

    goto :goto_21

    .line 317
    :cond_20
    nop

    .line 315
    :goto_21
    return v2

    .line 319
    :cond_22
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v1, v0

    if-eqz v3, :cond_29

    .line 321
    return v2

    .line 323
    :cond_29
    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 324
    return v0
.end method

.method public continueLoading(J)Z
    .registers 32
    .param p1, "positionUs"    # J

    .line 748
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    const/4 v2, 0x0

    if-nez v1, :cond_e4

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_e4

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_e4

    .line 754
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 755
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 756
    .local v1, "chunkQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;>;"
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 757
    .local v3, "loadPositionUs":J
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_29
    if-ge v7, v6, :cond_4d

    aget-object v8, v5, v7

    .line 758
    .local v8, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer2/source/SampleQueue;->setStartTimeUs(J)V

    .line 757
    .end local v8    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 761
    .end local v1    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;>;"
    .end local v3    # "loadPositionUs":J
    :cond_35
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 762
    .restart local v1    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v3

    .line 764
    .local v3, "lastMediaChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 765
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    goto :goto_4c

    .line 766
    :cond_44
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :goto_4c
    move-wide v3, v4

    .line 768
    .local v3, "loadPositionUs":J
    :cond_4d
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->clear()V

    .line 769
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    const/4 v14, 0x1

    if-nez v5, :cond_62

    .line 773
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_60

    goto :goto_62

    :cond_60
    const/4 v12, 0x0

    goto :goto_63

    :cond_62
    :goto_62
    const/4 v12, 0x1

    :goto_63
    iget-object v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    .line 769
    move-wide/from16 v7, p1

    move-wide v9, v3

    move-object v11, v1

    invoke-virtual/range {v6 .. v13}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getNextChunk(JJLjava/util/List;ZLcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V

    .line 775
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    .line 776
    .local v5, "endOfStream":Z
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 777
    .local v6, "loadable":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v7, v7, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 779
    .local v7, "playlistUrlToLoad":Landroid/net/Uri;
    if-eqz v5, :cond_84

    .line 780
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 781
    iput-boolean v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 782
    return v14

    .line 785
    :cond_84
    if-nez v6, :cond_8e

    .line 786
    if-eqz v7, :cond_8d

    .line 787
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v8, v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onPlaylistRefreshRequired(Landroid/net/Uri;)V

    .line 789
    :cond_8d
    return v2

    .line 792
    :cond_8e
    invoke-static {v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 793
    move-object v2, v6

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->initMediaChunkLoad(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)V

    .line 795
    :cond_9a
    iput-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 796
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v9, v6, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    .line 798
    invoke-interface {v8, v9}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v8

    .line 797
    invoke-virtual {v2, v6, v0, v8}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v8

    .line 799
    .local v8, "elapsedRealtimeMs":J
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    new-instance v10, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v11, v6, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v13, v6, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object v15, v10

    move-wide/from16 v16, v11

    move-object/from16 v18, v13

    move-wide/from16 v19, v8

    invoke-direct/range {v15 .. v20}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    iget v11, v6, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v13, v6, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v15, v6, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v14, v6, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v26, v1

    .end local v1    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;>;"
    .local v26, "chunkQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;>;"
    iget-wide v0, v6, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-wide/from16 v27, v3

    .end local v3    # "loadPositionUs":J
    .local v27, "loadPositionUs":J
    iget-wide v3, v6, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move/from16 v20, v15

    move-object v15, v2

    move-object/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v21, v14

    move-wide/from16 v22, v0

    move-wide/from16 v24, v3

    invoke-virtual/range {v15 .. v25}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 808
    const/4 v0, 0x1

    return v0

    .line 749
    .end local v5    # "endOfStream":Z
    .end local v6    # "loadable":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .end local v7    # "playlistUrlToLoad":Landroid/net/Uri;
    .end local v8    # "elapsedRealtimeMs":J
    .end local v26    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;>;"
    .end local v27    # "loadPositionUs":J
    :cond_e4
    :goto_e4
    return v2
.end method

.method public continuePreparing()V
    .registers 3

    .line 266
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v0, :cond_9

    .line 267
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    .line 269
    :cond_9
    return-void
.end method

.method public discardBuffer(JZ)V
    .registers 8
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 480
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_20

    .line 483
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, v0

    .line 484
    .local v0, "sampleQueueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1f

    .line 485
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->discardTo(JZZ)V

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 487
    .end local v1    # "i":I
    :cond_1f
    return-void

    .line 481
    .end local v0    # "sampleQueueCount":I
    :cond_20
    :goto_20
    return-void
.end method

.method public endTracks()V
    .registers 3

    .line 1160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    .line 1161
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onTracksEndedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1162
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 6
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 614
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferedPositionUs()J
    .registers 11

    .line 714
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_7

    .line 715
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 716
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 717
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-wide v0

    .line 719
    :cond_10
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 720
    .local v0, "bufferedPositionUs":J
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v2

    .line 722
    .local v2, "lastMediaChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 723
    move-object v3, v2

    goto :goto_37

    .line 724
    :cond_1e
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_36

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    nop

    .line 725
    .local v3, "lastCompletedMediaChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    if-eqz v3, :cond_40

    .line 726
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 728
    :cond_40
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v4, :cond_57

    .line 729
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_48
    if-ge v6, v5, :cond_57

    aget-object v7, v4, v6

    .line 730
    .local v7, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 729
    .end local v7    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    .line 733
    :cond_57
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 739
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 740
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-wide v0

    .line 742
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_10

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_16

    :cond_10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    :goto_16
    return-wide v0
.end method

.method public getPrimaryTrackGroupIndex()I
    .registers 2

    .line 306
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    return v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 301
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 813
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isReady(I)Z
    .registers 4
    .param p1, "sampleQueueIndex"    # I

    .line 620
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v0, v0, p1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isVideoSampleStream()Z
    .registers 3

    .line 603
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->maybeThrowError()V

    .line 631
    return-void
.end method

.method public maybeThrowError(I)V
    .registers 3
    .param p1, "sampleQueueIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->maybeThrowError()V

    .line 626
    return-void
.end method

.method public maybeThrowPrepareError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    .line 294
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-eqz v0, :cond_c

    goto :goto_14

    .line 295
    :cond_c
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 298
    :cond_14
    :goto_14
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V
    .registers 22
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .line 881
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 882
    new-instance v2, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 886
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 887
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 890
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v4, v2

    .line 891
    .local v4, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v2, v5, v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 892
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 901
    if-nez p6, :cond_53

    .line 902
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v2

    if-nez v2, :cond_47

    iget v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-nez v2, :cond_4a

    .line 903
    :cond_47
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    .line 905
    :cond_4a
    iget v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-lez v2, :cond_53

    .line 906
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 909
    :cond_53
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .registers 14

    .line 98
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V
    .registers 21
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .line 850
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 851
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    .line 852
    new-instance v2, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 856
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 857
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 860
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v4, v2

    .line 861
    .local v4, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v2, v5, v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 862
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 871
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v2, :cond_4a

    .line 872
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    goto :goto_4f

    .line 874
    :cond_4a
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 876
    :goto_4f
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .registers 12

    .line 98
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 39
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I

    .line 918
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p6

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v16

    .line 919
    .local v16, "isMediaChunk":Z
    if-eqz v16, :cond_29

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 920
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPublished()Z

    move-result v2

    if-nez v2, :cond_29

    instance-of v2, v15, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v2, :cond_29

    .line 922
    move-object v2, v15

    check-cast v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v2, v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 923
    .local v2, "responseCode":I
    const/16 v3, 0x19a

    if-eq v2, v3, :cond_26

    const/16 v3, 0x194

    if-ne v2, v3, :cond_29

    .line 927
    :cond_26
    sget-object v3, Lcom/google/android/exoplayer2/upstream/Loader;->RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    return-object v3

    .line 930
    .end local v2    # "responseCode":I
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v29

    .line 931
    .local v29, "bytesLoaded":J
    const/4 v2, 0x0

    .line 932
    .local v2, "exclusionSucceeded":Z
    new-instance v3, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 936
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v21

    .line 937
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v22

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-object/from16 v20, v6

    move-wide/from16 v23, p2

    move-wide/from16 v25, p4

    move-wide/from16 v27, v29

    invoke-direct/range {v17 .. v28}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v14, v3

    .line 941
    .local v14, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    new-instance v13, Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    .line 948
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v9

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 949
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v11

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 950
    .local v13, "mediaLoadData":Lcom/google/android/exoplayer2/source/MediaLoadData;
    new-instance v3, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v11, p7

    invoke-direct {v3, v14, v13, v15, v11}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;I)V

    move-object v12, v3

    .line 954
    .local v12, "loadErrorInfo":Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 956
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackSelection()Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil;->createFallbackOptions(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    move-result-object v4

    .line 955
    invoke-interface {v3, v4, v12}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getFallbackSelectionFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    move-result-object v9

    .line 957
    .local v9, "fallbackSelection":Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;
    if-eqz v9, :cond_92

    iget v3, v9, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_92

    .line 959
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-wide v4, v9, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    .line 960
    invoke-virtual {v3, v1, v4, v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->maybeExcludeTrack(Lcom/google/android/exoplayer2/source/chunk/Chunk;J)Z

    move-result v2

    move/from16 v17, v2

    goto :goto_94

    .line 963
    :cond_92
    move/from16 v17, v2

    .end local v2    # "exclusionSucceeded":Z
    .local v17, "exclusionSucceeded":Z
    :goto_94
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v17, :cond_d0

    .line 964
    if-eqz v16, :cond_cb

    const-wide/16 v4, 0x0

    cmp-long v6, v29, v4

    if-nez v6, :cond_cb

    .line 965
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 966
    .local v4, "removed":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    if-ne v4, v1, :cond_b0

    const/4 v2, 0x1

    :cond_b0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 967
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 968
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    goto :goto_cb

    .line 970
    :cond_c0
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->invalidateExtractor()V

    .line 973
    .end local v4    # "removed":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    :cond_cb
    :goto_cb
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-object/from16 v18, v2

    .local v2, "loadErrorAction":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    goto :goto_e8

    .line 975
    .end local v2    # "loadErrorAction":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    :cond_d0
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v4, v12}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v4

    .line 977
    .local v4, "retryDelayMs":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v6

    if-eqz v8, :cond_e4

    .line 978
    invoke-static {v2, v4, v5}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v2

    goto :goto_e6

    .line 979
    :cond_e4
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    :goto_e6
    move-object/from16 v18, v2

    .line 982
    .end local v4    # "retryDelayMs":J
    .local v18, "loadErrorAction":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    :goto_e8
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v2

    xor-int/2addr v2, v3

    move/from16 v19, v2

    .line 983
    .local v19, "wasCanceled":Z
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v20, v9

    .end local v9    # "fallbackSelection":Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;
    .local v20, "fallbackSelection":Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v21, v12

    .end local v12    # "loadErrorInfo":Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    .local v21, "loadErrorInfo":Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-object v3, v14

    move-object/from16 v22, v13

    .end local v13    # "mediaLoadData":Lcom/google/android/exoplayer2/source/MediaLoadData;
    .local v22, "mediaLoadData":Lcom/google/android/exoplayer2/source/MediaLoadData;
    move-object/from16 v13, p6

    move-object/from16 v23, v14

    .end local v14    # "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .local v23, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    move/from16 v14, v19

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 994
    if-eqz v19, :cond_11b

    .line 995
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 996
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 999
    :cond_11b
    if-eqz v17, :cond_12c

    .line 1000
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v2, :cond_127

    .line 1001
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    goto :goto_12c

    .line 1003
    :cond_127
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 1006
    :cond_12c
    :goto_12c
    return-object v18
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 16

    .line 98
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoaderReleased()V
    .registers 5

    .line 562
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 563
    .local v3, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->release()V

    .line 562
    .end local v3    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 565
    :cond_e
    return-void
.end method

.method public onNewExtractor()V
    .registers 2

    .line 1180
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1181
    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z
    .registers 10
    .param p1, "playlistUrl"    # Landroid/net/Uri;
    .param p2, "loadErrorInfo"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    .param p3, "forceRetry"    # Z

    .line 580
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->obtainsChunksForPlaylist(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 582
    return v1

    .line 584
    :cond_a
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 585
    .local v2, "exclusionDurationMs":J
    if-nez p3, :cond_2a

    .line 587
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 589
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackSelection()Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil;->createFallbackOptions(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    move-result-object v4

    .line 588
    invoke-interface {v0, v4, p2}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getFallbackSelectionFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    move-result-object v0

    .line 590
    .local v0, "fallbackSelection":Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;
    if-eqz v0, :cond_2a

    iget v4, v0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a

    .line 592
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    .line 597
    .end local v0    # "fallbackSelection":Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;
    :cond_2a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->onPlaylistError(Landroid/net/Uri;J)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    return v1
.end method

.method public onPlaylistUpdated()V
    .registers 4

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 532
    return-void

    .line 534
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 536
    .local v0, "lastMediaChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getChunkPublicationState(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)I

    move-result v1

    .line 537
    .local v1, "chunkState":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 538
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->publish()V

    goto :goto_32

    .line 539
    :cond_1e
    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 541
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 542
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 544
    :cond_32
    :goto_32
    return-void
.end method

.method public onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 1173
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1174
    return-void
.end method

.method public varargs prepareWithMultivariantPlaylistInfo([Lcom/google/android/exoplayer2/source/TrackGroup;I[I)V
    .registers 9
    .param p1, "trackGroups"    # [Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "primaryTrackGroupIndex"    # I
    .param p3, "optionalTrackGroupsIndices"    # [I

    .line 282
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createTrackGroupArrayWithDrmInfo([Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 283
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    .line 284
    array-length v0, p3

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_21

    aget v2, p3, v1

    .line 285
    .local v2, "optionalTrackGroupIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v2    # "optionalTrackGroupIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 287
    :cond_21
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsPrepared()V

    .line 290
    return-void
.end method

.method public readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .registers 20
    .param p1, "sampleQueueIndex"    # I
    .param p2, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p3, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p4, "readFlags"    # I

    .line 638
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v3

    const/4 v4, -0x3

    if-eqz v3, :cond_d

    .line 639
    return v4

    .line 643
    :cond_d
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_59

    .line 644
    const/4 v3, 0x0

    .line 645
    .local v3, "discardToMediaChunkIndex":I
    :goto_17
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_32

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 646
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->finishedReadingChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 647
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 649
    :cond_32
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v6, v5, v3}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    .line 650
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 651
    .local v6, "currentChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    iget-object v14, v6, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 652
    .local v14, "trackFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v14, v7}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_57

    .line 653
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget v10, v6, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackSelectionReason:I

    iget-object v11, v6, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v12, v6, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    move-object v9, v14

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 660
    :cond_57
    iput-object v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    .line 663
    .end local v3    # "discardToMediaChunkIndex":I
    .end local v6    # "currentChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .end local v14    # "trackFormat":Lcom/google/android/exoplayer2/Format;
    :cond_59
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_70

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPublished()Z

    move-result v3

    if-nez v3, :cond_70

    .line 665
    return v4

    .line 668
    :cond_70
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v3, v3, v1

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 669
    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual {v3, v2, v5, v6, v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result v3

    .line 670
    .local v3, "result":I
    const/4 v4, -0x5

    if-ne v3, v4, :cond_d3

    .line 671
    iget-object v4, v2, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/Format;

    .line 672
    .local v4, "format":Lcom/google/android/exoplayer2/Format;
    iget v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueIndex:I

    if-ne v1, v7, :cond_d1

    .line 674
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->peekSourceId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v7

    .line 675
    .local v7, "chunkUid":I
    const/4 v8, 0x0

    .line 676
    .local v8, "chunkIndex":I
    :goto_9a
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_b1

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget v9, v9, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    if-eq v9, v7, :cond_b1

    .line 677
    add-int/lit8 v8, v8, 0x1

    goto :goto_9a

    .line 680
    :cond_b1
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_c4

    .line 681
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v9, v9, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    goto :goto_cc

    .line 682
    :cond_c4
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->upstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/Format;

    :goto_cc
    nop

    .line 683
    .local v9, "trackFormat":Lcom/google/android/exoplayer2/Format;
    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 685
    .end local v7    # "chunkUid":I
    .end local v8    # "chunkIndex":I
    .end local v9    # "trackFormat":Lcom/google/android/exoplayer2/Format;
    :cond_d1
    iput-object v4, v2, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 687
    .end local v4    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_d3
    return v3
.end method

.method public reevaluateBuffer(J)V
    .registers 7
    .param p1, "positionUs"    # J

    .line 818
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_6b

    .line 822
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 823
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->shouldCancelLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 825
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 827
    :cond_2d
    return-void

    .line 830
    :cond_2e
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 831
    .local v0, "newQueueSize":I
    :goto_34
    if-lez v0, :cond_4c

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    .line 832
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getChunkPublicationState(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4c

    .line 834
    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    .line 836
    :cond_4c
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 837
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->discardUpstream(I)V

    .line 840
    :cond_57
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getPreferredQueueSize(JLjava/util/List;)I

    move-result v1

    .line 841
    .local v1, "preferredQueueSize":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6a

    .line 842
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->discardUpstream(I)V

    .line 844
    :cond_6a
    return-void

    .line 819
    .end local v0    # "newQueueSize":I
    .end local v1    # "preferredQueueSize":I
    :cond_6b
    :goto_6b
    return-void
.end method

.method public release()V
    .registers 5

    .line 547
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-eqz v0, :cond_12

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 551
    .local v3, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->preRelease()V

    .line 550
    .end local v3    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 554
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    .line 555
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->released:Z

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 558
    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .registers 2
    .param p1, "seekMap"    # Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 1167
    return-void
.end method

.method public seekToUs(JZ)Z
    .registers 9
    .param p1, "positionUs"    # J
    .param p3, "forceReset"    # Z

    .line 498
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 499
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 501
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 502
    return v1

    .line 506
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    if-nez p3, :cond_1a

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekInsideBufferUs(J)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 507
    return v2

    .line 511
    :cond_1a
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 512
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 513
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 514
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 515
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v0, :cond_3c

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v3, v0

    :goto_32
    if-ge v2, v3, :cond_3c

    aget-object v4, v0, v2

    .line 518
    .local v4, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 517
    .end local v4    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 521
    :cond_3c
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_4a

    .line 523
    :cond_42
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->clearFatalError()V

    .line 524
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    .line 526
    :goto_4a
    return v1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJZ)Z
    .registers 30
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J
    .param p7, "forceReset"    # Z

    .line 359
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    .line 360
    iget v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 362
    .local v14, "oldEnabledTrackGroupCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v15, 0x1

    if-ge v3, v4, :cond_2e

    .line 363
    aget-object v4, v2, v3

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    .line 364
    .local v4, "stream":Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;
    if-eqz v4, :cond_2b

    aget-object v6, v1, v3

    if-eqz v6, :cond_21

    aget-boolean v6, p2, v3

    if-nez v6, :cond_2b

    .line 365
    :cond_21
    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    sub-int/2addr v6, v15

    iput v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 366
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->unbindSampleQueue()V

    .line 367
    aput-object v5, v2, v3

    .line 362
    .end local v4    # "stream":Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 373
    .end local v3    # "i":I
    :cond_2e
    const/4 v3, 0x0

    if-nez p7, :cond_41

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-eqz v4, :cond_38

    if-nez v14, :cond_3f

    goto :goto_41

    :cond_38
    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    cmp-long v4, v12, v6

    if-eqz v4, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v4, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v4, 0x1

    .line 380
    .local v4, "seekRequired":Z
    :goto_42
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackSelection()Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object v11

    .line 381
    .local v11, "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    move-object v6, v11

    .line 383
    .local v6, "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    const/4 v7, 0x0

    move/from16 v16, v4

    move-object v10, v6

    .end local v4    # "seekRequired":Z
    .end local v6    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .local v7, "i":I
    .local v10, "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .local v16, "seekRequired":Z
    :goto_4d
    array-length v4, v1

    if-ge v7, v4, :cond_a5

    .line 384
    aget-object v4, v1, v7

    .line 385
    .local v4, "selection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    if-nez v4, :cond_55

    .line 386
    goto :goto_a2

    .line 388
    :cond_55
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v6

    .line 389
    .local v6, "trackGroupIndex":I
    iget v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    if-ne v6, v8, :cond_69

    .line 390
    move-object v10, v4

    .line 391
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v8, v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setTrackSelection(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    .line 393
    :cond_69
    aget-object v8, v2, v7

    if-nez v8, :cond_a2

    .line 394
    iget v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    add-int/2addr v8, v15

    iput v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 395
    new-instance v8, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    invoke-direct {v8, v0, v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;I)V

    aput-object v8, v2, v7

    .line 396
    aput-boolean v15, p4, v7

    .line 397
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    if-eqz v8, :cond_a2

    .line 398
    aget-object v8, v2, v7

    check-cast v8, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->bindSampleQueue()V

    .line 400
    if-nez v16, :cond_a2

    .line 401
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget v9, v9, v6

    aget-object v8, v8, v9

    .line 406
    .local v8, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    nop

    .line 407
    invoke-virtual {v8, v12, v13, v15}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    move-result v9

    if-nez v9, :cond_9f

    .line 408
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v9

    if-eqz v9, :cond_9f

    const/4 v9, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v9, 0x0

    :goto_a0
    move/from16 v16, v9

    .line 383
    .end local v4    # "selection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v6    # "trackGroupIndex":I
    .end local v8    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_a2
    :goto_a2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 414
    .end local v7    # "i":I
    :cond_a5
    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-nez v4, :cond_e1

    .line 415
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->reset()V

    .line 416
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    .line 417
    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    .line 418
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 419
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 420
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v4, :cond_d0

    .line 422
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v5, v4

    :goto_c6
    if-ge v3, v5, :cond_d0

    aget-object v6, v4, v3

    .line 423
    .local v6, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 422
    .end local v6    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c6

    .line 426
    :cond_d0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_d9

    .line 428
    :cond_d6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    .line 474
    :goto_d9
    move/from16 v3, p7

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    goto/16 :goto_164

    .line 431
    :cond_e1
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14b

    .line 432
    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_146

    .line 435
    const/16 v17, 0x0

    .line 436
    .local v17, "primarySampleQueueDirty":Z
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-nez v3, :cond_136

    .line 437
    const-wide/16 v3, 0x0

    cmp-long v5, v12, v3

    if-gez v5, :cond_fc

    neg-long v3, v12

    :cond_fc
    move-wide v6, v3

    .line 438
    .local v6, "bufferedDurationUs":J
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v8

    .line 439
    .local v8, "lastMediaChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 440
    invoke-virtual {v3, v8, v12, v13}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->createMediaChunkIterators(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;J)[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    move-result-object v18

    .line 441
    .local v18, "mediaChunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    move-object v3, v10

    move-wide/from16 v4, p5

    move-object v15, v8

    move-object/from16 v21, v9

    .end local v8    # "lastMediaChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .local v15, "lastMediaChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    move-wide/from16 v8, v19

    move-object/from16 v19, v10

    .end local v10    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .local v19, "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    move-object/from16 v10, v21

    move-object/from16 v20, v11

    .end local v11    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .local v20, "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    move-object/from16 v11, v18

    invoke-interface/range {v3 .. v11}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V

    .line 447
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    iget-object v4, v15, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    .line 448
    .local v3, "chunkIndex":I
    invoke-interface/range {v19 .. v19}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v4

    if-eq v4, v3, :cond_135

    .line 451
    const/16 v17, 0x1

    .line 453
    .end local v3    # "chunkIndex":I
    .end local v6    # "bufferedDurationUs":J
    .end local v15    # "lastMediaChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .end local v18    # "mediaChunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    :cond_135
    goto :goto_13c

    .line 455
    .end local v19    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v20    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v10    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v11    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    :cond_136
    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .end local v10    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v11    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v19    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v20    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    const/16 v17, 0x1

    .line 457
    :goto_13c
    if-eqz v17, :cond_14f

    .line 458
    const/4 v3, 0x1

    .line 459
    .end local p7    # "forceReset":Z
    .local v3, "forceReset":Z
    const/4 v4, 0x1

    .line 460
    .end local v16    # "seekRequired":Z
    .local v4, "seekRequired":Z
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    move/from16 v16, v4

    goto :goto_151

    .line 432
    .end local v3    # "forceReset":Z
    .end local v4    # "seekRequired":Z
    .end local v17    # "primarySampleQueueDirty":Z
    .end local v19    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v20    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v10    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v11    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v16    # "seekRequired":Z
    .restart local p7    # "forceReset":Z
    :cond_146
    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .end local v10    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v11    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v19    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v20    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    goto :goto_14f

    .line 431
    .end local v19    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v20    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v10    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v11    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    :cond_14b
    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 463
    .end local v10    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v11    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v19    # "primaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v20    # "oldPrimaryTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    :cond_14f
    :goto_14f
    move/from16 v3, p7

    .end local p7    # "forceReset":Z
    .restart local v3    # "forceReset":Z
    :goto_151
    if-eqz v16, :cond_164

    .line 464
    invoke-virtual {v0, v12, v13, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    .line 466
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_157
    array-length v5, v2

    if-ge v4, v5, :cond_164

    .line 467
    aget-object v5, v2, v4

    if-eqz v5, :cond_161

    .line 468
    const/4 v5, 0x1

    aput-boolean v5, p4, v4

    .line 466
    :cond_161
    add-int/lit8 v4, v4, 0x1

    goto :goto_157

    .line 474
    .end local v4    # "i":I
    :cond_164
    :goto_164
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->updateSampleStreams([Lcom/google/android/exoplayer2/source/SampleStream;)V

    .line 475
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    .line 476
    return v16
.end method

.method public setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .registers 5
    .param p1, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1223
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1224
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 1226
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1b

    .line 1227
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 1225
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1231
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method public setIsPrimaryTimestampSource(Z)V
    .registers 3
    .param p1, "isPrimaryTimestampSource"    # Z

    .line 568
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setIsPrimaryTimestampSource(Z)V

    .line 569
    return-void
.end method

.method public setSampleOffsetUs(J)V
    .registers 7
    .param p1, "sampleOffsetUs"    # J

    .line 1190
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_16

    .line 1191
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    .line 1192
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 1193
    .local v3, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->setSampleOffsetUs(J)V

    .line 1192
    .end local v3    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1196
    :cond_16
    return-void
.end method

.method public skipData(IJ)I
    .registers 10
    .param p1, "sampleQueueIndex"    # I
    .param p2, "positionUs"    # J

    .line 691
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 692
    const/4 v0, 0x0

    return v0

    .line 695
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v0, v0, p1

    .line 696
    .local v0, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getSkipCount(JZ)I

    move-result v1

    .line 699
    .local v1, "skipCount":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 700
    .local v2, "lastChunk":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPublished()Z

    move-result v3

    if-nez v3, :cond_31

    .line 701
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v3

    .line 702
    .local v3, "readIndex":I
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getFirstSampleIndex(I)I

    move-result v4

    .line 703
    .local v4, "firstSampleIndex":I
    sub-int v5, v4, v3

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 706
    .end local v3    # "readIndex":I
    .end local v4    # "firstSampleIndex":I
    :cond_31
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->skip(I)V

    .line 707
    return v1
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .registers 7
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 1065
    const/4 v0, 0x0

    .line 1066
    .local v0, "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    sget-object v1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1068
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getMappedTrackOutput(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    goto :goto_24

    .line 1070
    :cond_12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v3, v2

    if-ge v1, v3, :cond_24

    .line 1071
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_21

    .line 1072
    aget-object v0, v2, v1

    .line 1073
    goto :goto_24

    .line 1070
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1078
    .end local v1    # "i":I
    :cond_24
    :goto_24
    if-nez v0, :cond_33

    .line 1079
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    if-eqz v1, :cond_2f

    .line 1080
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createFakeTrackOutput(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object v1

    return-object v1

    .line 1083
    :cond_2f
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createSampleQueue(II)Lcom/google/android/exoplayer2/source/SampleQueue;

    move-result-object v0

    .line 1087
    :cond_33
    const/4 v1, 0x5

    if-ne p2, v1, :cond_46

    .line 1088
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->emsgUnwrappingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    if-nez v1, :cond_43

    .line 1089
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->metadataType:I

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->emsgUnwrappingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1091
    :cond_43
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->emsgUnwrappingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-object v1

    .line 1093
    :cond_46
    return-object v0
.end method

.method public unbindSampleQueue(I)V
    .registers 5
    .param p1, "trackGroupIndex"    # I

    .line 328
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget v0, v0, p1

    .line 331
    .local v0, "sampleQueueIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v1, v1, v0

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 332
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 333
    return-void
.end method
