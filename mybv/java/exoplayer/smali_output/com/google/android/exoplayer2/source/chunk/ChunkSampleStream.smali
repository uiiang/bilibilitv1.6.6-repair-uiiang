.class public Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;,
        Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSource;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/SampleStream;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChunkSampleStream"


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

.field private final chunkOutput:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

.field private final chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

.field private final embeddedTrackFormats:[Lcom/google/android/exoplayer2/Format;

.field private final embeddedTrackTypes:[I

.field private final embeddedTracksSelected:[Z

.field private lastSeekPositionUs:J

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

.field loadingFinished:Z

.field private final mediaChunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

.field private nextNotifyPrimaryFormatMediaChunkIndex:I

.field private pendingResetPositionUs:J

.field private primaryDownstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

.field private final primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

.field public final primaryTrackType:I

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private releaseCallback:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[I[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V
    .registers 30
    .param p1, "primaryTrackType"    # I
    .param p2, "embeddedTrackTypes"    # [I
    .param p3, "embeddedTrackFormats"    # [Lcom/google/android/exoplayer2/Format;
    .param p6, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p7, "positionUs"    # J
    .param p9, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p10, "drmEventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p11, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p12, "mediaSourceEventDispatcher"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[",
            "Lcom/google/android/exoplayer2/Format;",
            "TT;",
            "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>;>;",
            "Lcom/google/android/exoplayer2/upstream/Allocator;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;",
            "Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;",
            "Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;",
            ")V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    .local p4, "chunkSource":Lcom/google/android/exoplayer2/source/chunk/ChunkSource;, "TT;"
    .local p5, "callback":Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;, "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    .line 134
    const/4 v4, 0x0

    if-nez p2, :cond_11

    new-array v5, v4, [I

    goto :goto_13

    :cond_11
    move-object/from16 v5, p2

    :goto_13
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    .line 135
    if-nez p3, :cond_1a

    new-array v6, v4, [Lcom/google/android/exoplayer2/Format;

    goto :goto_1c

    :cond_1a
    move-object/from16 v6, p3

    :goto_1c
    iput-object v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackFormats:[Lcom/google/android/exoplayer2/Format;

    .line 136
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    .line 137
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    .line 138
    move-object/from16 v8, p12

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 139
    move-object/from16 v9, p11

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 140
    new-instance v10, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v11, "ChunkSampleStream"

    invoke-direct {v10, v11}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v10, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 141
    new-instance v10, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;-><init>()V

    iput-object v10, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    .line 142
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 143
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 145
    array-length v5, v5

    .line 146
    .local v5, "embeddedTrackCount":I
    new-array v10, v5, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object v10, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 147
    new-array v10, v5, [Z

    iput-object v10, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    .line 148
    add-int/lit8 v10, v5, 0x1

    new-array v10, v10, [I

    .line 149
    .local v10, "trackTypes":[I
    add-int/lit8 v11, v5, 0x1

    new-array v11, v11, [Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 151
    .local v11, "sampleQueues":[Lcom/google/android/exoplayer2/source/SampleQueue;
    nop

    .line 152
    move-object/from16 v12, p6

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-static {v12, v13, v14}, Lcom/google/android/exoplayer2/source/SampleQueue;->createWithDrm(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/SampleQueue;

    move-result-object v15

    iput-object v15, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 153
    aput v1, v10, v4

    .line 154
    aput-object v15, v11, v4

    .line 156
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6e
    if-ge v4, v5, :cond_8d

    .line 157
    invoke-static/range {p6 .. p6}, Lcom/google/android/exoplayer2/source/SampleQueue;->createWithoutDrm(Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/SampleQueue;

    move-result-object v15

    .line 158
    .local v15, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aput-object v15, v1, v4

    .line 159
    add-int/lit8 v1, v4, 0x1

    aput-object v15, v11, v1

    .line 160
    add-int/lit8 v1, v4, 0x1

    move/from16 v16, v5

    .end local v5    # "embeddedTrackCount":I
    .local v16, "embeddedTrackCount":I
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    aget v5, v5, v4

    aput v5, v10, v1

    .line 156
    .end local v15    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p1

    move/from16 v5, v16

    goto :goto_6e

    .line 163
    .end local v4    # "i":I
    .end local v16    # "embeddedTrackCount":I
    .restart local v5    # "embeddedTrackCount":I
    :cond_8d
    new-instance v1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    invoke-direct {v1, v10, v11}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;-><init>([I[Lcom/google/android/exoplayer2/source/SampleQueue;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkOutput:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    .line 164
    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 165
    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Lcom/google/android/exoplayer2/Format;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackFormats:[Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 61
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    return-object v0
.end method

.method private discardDownstreamMediaChunks(I)V
    .registers 5
    .param p1, "discardToSampleIndex"    # I

    .line 733
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    nop

    .line 734
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v1

    .line 736
    .local v1, "discardToMediaChunkIndex":I
    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 737
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 738
    if-lez v1, :cond_18

    .line 739
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    .line 740
    iget v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 742
    :cond_18
    return-void
.end method

.method private discardUpstream(I)V
    .registers 13
    .param p1, "preferredQueueSize"    # I

    .line 677
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 679
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 680
    .local v0, "currentQueueSize":I
    const/4 v1, -0x1

    .line 681
    .local v1, "newQueueSize":I
    move v2, p1

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_20

    .line 682
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 685
    move v1, v2

    .line 686
    goto :goto_20

    .line 681
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 689
    .end local v2    # "i":I
    :cond_20
    :goto_20
    const/4 v2, -0x1

    if-ne v1, v2, :cond_24

    .line 690
    return-void

    .line 693
    :cond_24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v2

    iget-wide v9, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    .line 694
    .local v9, "endTimeUs":J
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v2

    .line 695
    .local v2, "firstRemovedChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 696
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 698
    :cond_3a
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 699
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    .line 701
    return-void
.end method

.method private discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .registers 6
    .param p1, "chunkIndex"    # I

    .line 801
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 802
    .local v0, "firstRemovedChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    .line 803
    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 804
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 805
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSamples(I)V

    .line 806
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    if-ge v1, v3, :cond_3d

    .line 807
    aget-object v2, v2, v1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSamples(I)V

    .line 806
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 809
    .end local v1    # "i":I
    :cond_3d
    return-object v0
.end method

.method private getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .registers 3

    .line 790
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    return-object v0
.end method

.method private haveReadFromMediaChunk(I)Z
    .registers 8
    .param p1, "mediaChunkIndex"    # I

    .line 716
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 717
    .local v0, "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v1, v3, :cond_17

    .line 718
    return v4

    .line 720
    :cond_17
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v5, v3

    if-ge v1, v5, :cond_2f

    .line 721
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v3

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v5

    if-le v3, v5, :cond_2c

    .line 722
    return v4

    .line 720
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 725
    .end local v1    # "i":I
    :cond_2f
    return v2
.end method

.method private isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z
    .registers 3
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 704
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    return v0
.end method

.method private maybeNotifyPrimaryTrackFormatChanged()V
    .registers 5

    .line 745
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v0

    .line 746
    .local v0, "readSampleIndex":I
    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    add-int/lit8 v1, v1, -0x1

    .line 747
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v1

    .line 749
    .local v1, "notifyToMediaChunkIndex":I
    :goto_e
    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    if-gt v2, v1, :cond_1a

    .line 750
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged(I)V

    goto :goto_e

    .line 752
    :cond_1a
    return-void
.end method

.method private maybeNotifyPrimaryTrackFormatChanged(I)V
    .registers 11
    .param p1, "mediaChunkReadIndex"    # I

    .line 755
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 756
    .local v0, "currentChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 757
    .local v8, "trackFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 758
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->trackSelectionReason:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    move-object v3, v8

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 765
    :cond_20
    iput-object v8, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    .line 766
    return-void
.end method

.method private primarySampleIndexToMediaChunkIndex(II)I
    .registers 6
    .param p1, "primarySampleIndex"    # I
    .param p2, "minChunkIndex"    # I

    .line 781
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    add-int/lit8 v0, p2, 0x1

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 782
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    if-le v1, p1, :cond_1c

    .line 783
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 781
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 786
    .end local v0    # "i":I
    :cond_1f
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private resetSampleQueues()V
    .registers 5

    .line 708
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 709
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 710
    .local v3, "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 709
    .end local v3    # "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 712
    :cond_13
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 33
    .param p1, "positionUs"    # J

    .line 569
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    const/4 v2, 0x0

    if-nez v1, :cond_eb

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_eb

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_eb

    .line 573
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v1

    .line 576
    .local v1, "pendingReset":Z
    if-eqz v1, :cond_26

    .line 577
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 578
    .local v3, "chunkQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;>;"
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .local v4, "loadPositionUs":J
    goto :goto_2e

    .line 580
    .end local v3    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;>;"
    .end local v4    # "loadPositionUs":J
    :cond_26
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 581
    .restart local v3    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    .line 583
    .restart local v4    # "loadPositionUs":J
    :goto_2e
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    move-wide/from16 v7, p1

    move-wide v9, v4

    move-object v11, v3

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->getNextChunk(JJLjava/util/List;Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V

    .line 584
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    iget-boolean v6, v6, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    .line 585
    .local v6, "endOfStream":Z
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    iget-object v7, v7, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 586
    .local v7, "loadable":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->clear()V

    .line 588
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    if-eqz v6, :cond_53

    .line 589
    iput-wide v8, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 590
    iput-boolean v10, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 591
    return v10

    .line 594
    :cond_53
    if-nez v7, :cond_56

    .line 595
    return v2

    .line 598
    :cond_56
    iput-object v7, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 599
    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v11

    if-eqz v11, :cond_9b

    .line 600
    move-object v11, v7

    check-cast v11, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 601
    .local v11, "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    if-eqz v1, :cond_8c

    .line 606
    iget-wide v12, v11, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    cmp-long v16, v12, v14

    if-eqz v16, :cond_87

    .line 607
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v12, v14, v15}, Lcom/google/android/exoplayer2/source/SampleQueue;->setStartTimeUs(J)V

    .line 608
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v13, v12

    :goto_73
    if-ge v2, v13, :cond_84

    aget-object v14, v12, v2

    .line 609
    .local v14, "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    move-object/from16 v16, v11

    .end local v11    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .local v16, "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    invoke-virtual {v14, v10, v11}, Lcom/google/android/exoplayer2/source/SampleQueue;->setStartTimeUs(J)V

    .line 608
    .end local v14    # "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v16

    const/4 v10, 0x1

    goto :goto_73

    .end local v16    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .restart local v11    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_84
    move-object/from16 v16, v11

    .end local v11    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .restart local v16    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    goto :goto_89

    .line 606
    .end local v16    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .restart local v11    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_87
    move-object/from16 v16, v11

    .line 612
    .end local v11    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .restart local v16    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    :goto_89
    iput-wide v8, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto :goto_8e

    .line 601
    .end local v16    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .restart local v11    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_8c
    move-object/from16 v16, v11

    .line 614
    .end local v11    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .restart local v16    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    :goto_8e
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkOutput:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    move-object/from16 v8, v16

    .end local v16    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .local v8, "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->init(Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;)V

    .line 615
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v8    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    goto :goto_a8

    .line 616
    :cond_9b
    instance-of v2, v7, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    if-eqz v2, :cond_a8

    .line 617
    move-object v2, v7

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkOutput:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->init(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;)V

    goto :goto_a9

    .line 616
    :cond_a8
    :goto_a8
    nop

    .line 619
    :goto_a9
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v9, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    .line 621
    invoke-interface {v8, v9}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v8

    .line 620
    invoke-virtual {v2, v7, v0, v8}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v16

    .line 622
    .local v16, "elapsedRealtimeMs":J
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    new-instance v19, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v10, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v12, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v9, v19

    move-wide/from16 v13, v16

    invoke-direct/range {v9 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    iget v8, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v9, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v10, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v11, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v12, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v13, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move/from16 v29, v1

    .end local v1    # "pendingReset":Z
    .local v29, "pendingReset":Z
    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-object/from16 v18, v2

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v24, v12

    move-wide/from16 v25, v13

    move-wide/from16 v27, v0

    invoke-virtual/range {v18 .. v28}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 631
    const/4 v0, 0x1

    return v0

    .line 570
    .end local v3    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;>;"
    .end local v4    # "loadPositionUs":J
    .end local v6    # "endOfStream":Z
    .end local v7    # "loadable":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .end local v16    # "elapsedRealtimeMs":J
    .end local v29    # "pendingReset":Z
    :cond_eb
    :goto_eb
    return v2
.end method

.method public discardBuffer(JZ)V
    .registers 11
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 176
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 177
    return-void

    .line 179
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getFirstIndex()I

    move-result v0

    .line 180
    .local v0, "oldFirstSampleIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    .line 181
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getFirstIndex()I

    move-result v1

    .line 182
    .local v1, "newFirstSampleIndex":I
    if-le v1, v0, :cond_33

    .line 183
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getFirstTimestampUs()J

    move-result-wide v2

    .line 184
    .local v2, "discardToUs":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v6, v5

    if-ge v4, v6, :cond_33

    .line 185
    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean v6, v6, v4

    invoke-virtual {v5, v2, v3, p3, v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 188
    .end local v2    # "discardToUs":J
    .end local v4    # "i":I
    :cond_33
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardDownstreamMediaChunks(I)V

    .line 189
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 6
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 254
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferedPositionUs()J
    .registers 7

    .line 227
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_7

    .line 228
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 229
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 230
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-wide v0

    .line 232
    :cond_10
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 233
    .local v0, "bufferedPositionUs":J
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v2

    .line 235
    .local v2, "lastMediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->isLoadCompleted()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 236
    move-object v3, v2

    goto :goto_37

    .line 237
    :cond_1e
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_36

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    nop

    .line 238
    .local v3, "lastCompletedMediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    if-eqz v3, :cond_40

    .line 239
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 241
    :cond_40
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public getChunkSource()Lcom/google/android/exoplayer2/source/chunk/ChunkSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 641
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 642
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-wide v0

    .line 644
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_10

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_16

    :cond_10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    :goto_16
    return-wide v0
.end method

.method public isLoading()Z
    .registers 2

    .line 636
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    return v0
.end method

.method isPendingReset()Z
    .registers 6

    .line 729
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

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

.method public isReady()Z
    .registers 3

    .line 371
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->maybeThrowError()V

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_17

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->maybeThrowError()V

    .line 381
    :cond_17
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V
    .registers 22
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .line 451
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 452
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 453
    new-instance v2, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 457
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 458
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 461
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v4, v2

    .line 462
    .local v4, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v2, v5, v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 463
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 472
    if-nez p6, :cond_6b

    .line 473
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 474
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->resetSampleQueues()V

    goto :goto_66

    .line 475
    :cond_49
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 477
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 478
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 479
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 482
    :cond_66
    :goto_66
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 484
    :cond_6b
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .registers 14

    .line 60
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V
    .registers 21
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .line 424
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 425
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    .line 426
    new-instance v2, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 431
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 434
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v4, v2

    .line 435
    .local v4, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v2, v5, v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 436
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 445
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 446
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .registers 12

    .line 60
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 43
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I

    .line 493
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v14

    .line 494
    .local v14, "bytesLoaded":J
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v16

    .line 495
    .local v16, "isMediaChunk":Z
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v17, 0x1

    add-int/lit8 v12, v2, -0x1

    .line 496
    .local v12, "lastChunkIndex":I
    const-wide/16 v2, 0x0

    const/4 v13, 0x0

    cmp-long v4, v14, v2

    if-eqz v4, :cond_28

    if-eqz v16, :cond_28

    .line 497
    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_28

    :cond_26
    const/4 v2, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v2, 0x1

    :goto_29
    move v10, v2

    .line 498
    .local v10, "cancelable":Z
    new-instance v18, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 502
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    move-object/from16 v2, v18

    move-wide/from16 v8, p2

    move/from16 v19, v10

    .end local v10    # "cancelable":Z
    .local v19, "cancelable":Z
    move-wide/from16 v10, p4

    move/from16 v21, v12

    .end local v12    # "lastChunkIndex":I
    .local v21, "lastChunkIndex":I
    move-wide v12, v14

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 507
    .local v2, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    new-instance v13, Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    .line 514
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v9

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 515
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v11

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 516
    .local v3, "mediaLoadData":Lcom/google/android/exoplayer2/source/MediaLoadData;
    new-instance v4, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct {v4, v2, v3, v5, v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 519
    .local v4, "loadErrorInfo":Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    const/4 v7, 0x0

    .line 520
    .local v7, "loadErrorAction":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    move/from16 v10, v19

    .end local v19    # "cancelable":Z
    .restart local v10    # "cancelable":Z
    invoke-interface {v8, v1, v10, v4, v9}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 522
    if-eqz v10, :cond_9c

    .line 523
    sget-object v7, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    .line 524
    if-eqz v16, :cond_99

    .line 525
    move/from16 v8, v21

    .end local v21    # "lastChunkIndex":I
    .local v8, "lastChunkIndex":I
    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v9

    .line 526
    .local v9, "removed":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    if-ne v9, v1, :cond_88

    const/4 v13, 0x1

    goto :goto_89

    :cond_88
    const/4 v13, 0x0

    :goto_89
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 527
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_98

    .line 528
    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v11, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 530
    .end local v9    # "removed":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_98
    goto :goto_a8

    .line 524
    .end local v8    # "lastChunkIndex":I
    .restart local v21    # "lastChunkIndex":I
    :cond_99
    move/from16 v8, v21

    .end local v21    # "lastChunkIndex":I
    .restart local v8    # "lastChunkIndex":I
    goto :goto_a8

    .line 532
    .end local v8    # "lastChunkIndex":I
    .restart local v21    # "lastChunkIndex":I
    :cond_9c
    move/from16 v8, v21

    .end local v21    # "lastChunkIndex":I
    .restart local v8    # "lastChunkIndex":I
    const-string v9, "ChunkSampleStream"

    const-string v11, "Ignoring attempt to cancel non-cancelable load."

    invoke-static {v9, v11}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8

    .line 520
    .end local v8    # "lastChunkIndex":I
    .restart local v21    # "lastChunkIndex":I
    :cond_a6
    move/from16 v8, v21

    .line 536
    .end local v21    # "lastChunkIndex":I
    .restart local v8    # "lastChunkIndex":I
    :goto_a8
    if-nez v7, :cond_c2

    .line 538
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v9, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v11

    .line 540
    .local v11, "retryDelayMs":J
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v11, v18

    if-eqz v9, :cond_bf

    .line 541
    const/4 v9, 0x0

    invoke-static {v9, v11, v12}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v9

    goto :goto_c1

    .line 542
    :cond_bf
    sget-object v9, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    :goto_c1
    move-object v7, v9

    .line 545
    .end local v11    # "retryDelayMs":J
    :cond_c2
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    .line 546
    .local v9, "canceled":Z
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v12, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v13, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    move-object/from16 v17, v3

    .end local v3    # "mediaLoadData":Lcom/google/android/exoplayer2/source/MediaLoadData;
    .local v17, "mediaLoadData":Lcom/google/android/exoplayer2/source/MediaLoadData;
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v18, v4

    .end local v4    # "loadErrorInfo":Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    .local v18, "loadErrorInfo":Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    iget v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-wide/from16 v19, v14

    .end local v14    # "bytesLoaded":J
    .local v19, "bytesLoaded":J
    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v21, v7

    .end local v7    # "loadErrorAction":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .local v21, "loadErrorAction":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-object/from16 v22, v11

    move-object/from16 v23, v2

    move/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-wide/from16 v29, v14

    move-wide/from16 v31, v6

    move-object/from16 v33, p6

    move/from16 v34, v9

    invoke-virtual/range {v22 .. v34}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 557
    if-eqz v9, :cond_10a

    .line 558
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 559
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 560
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 562
    :cond_10a
    return-object v21
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 16

    .line 60
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoaderReleased()V
    .registers 5

    .line 357
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->release()V

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 359
    .local v3, "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->release()V

    .line 358
    .end local v3    # "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 361
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->release()V

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->releaseCallback:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;

    if-eqz v0, :cond_1f

    .line 363
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;->onSampleStreamReleased(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V

    .line 365
    :cond_1f
    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .registers 7
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "readFlags"    # I

    .line 386
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_8

    .line 387
    return v1

    .line 389
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    if-eqz v0, :cond_1a

    .line 390
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 391
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v2

    if-gt v0, v2, :cond_1a

    .line 394
    return v1

    .line 396
    :cond_1a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged()V

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result v0

    return v0
.end method

.method public reevaluateBuffer(J)V
    .registers 6
    .param p1, "positionUs"    # J

    .line 650
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_63

    .line 654
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 655
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 656
    .local v0, "loadingChunk":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 657
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 659
    return-void

    .line 661
    :cond_34
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v1, p1, p2, v0, v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->shouldCancelLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 662
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 663
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 664
    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 667
    :cond_4e
    return-void

    .line 670
    .end local v0    # "loadingChunk":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    :cond_4f
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->getPreferredQueueSize(JLjava/util/List;)I

    move-result v0

    .line 671
    .local v0, "preferredQueueSize":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_62

    .line 672
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardUpstream(I)V

    .line 674
    :cond_62
    return-void

    .line 651
    .end local v0    # "preferredQueueSize":I
    :cond_63
    :goto_63
    return-void
.end method

.method public release()V
    .registers 2

    .line 333
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    .line 334
    return-void
.end method

.method public release(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 346
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    .local p1, "callback":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback<TT;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->releaseCallback:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->preRelease()V

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    .line 350
    .local v3, "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->preRelease()V

    .line 349
    .end local v3    # "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 352
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    .line 353
    return-void
.end method

.method public seekToUs(J)V
    .registers 13
    .param p1, "positionUs"    # J

    .line 263
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 264
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 266
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 267
    return-void

    .line 271
    :cond_b
    const/4 v0, 0x0

    .line 272
    .local v0, "seekToMediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 273
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 274
    .local v2, "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    .line 275
    .local v3, "mediaChunkStartTimeUs":J
    cmp-long v5, v3, p1

    if-nez v5, :cond_30

    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->clippedStartTimeUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_30

    .line 276
    move-object v0, v2

    .line 277
    goto :goto_38

    .line 278
    :cond_30
    cmp-long v5, v3, p1

    if-lez v5, :cond_35

    .line 280
    goto :goto_38

    .line 272
    .end local v2    # "mediaChunk":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .end local v3    # "mediaChunkStartTimeUs":J
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 286
    .end local v1    # "i":I
    :cond_38
    :goto_38
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    .line 290
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(I)Z

    move-result v3

    .local v3, "seekInsideBuffer":Z
    goto :goto_58

    .line 292
    .end local v3    # "seekInsideBuffer":Z
    :cond_47
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 294
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getNextLoadPositionUs()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_53

    const/4 v4, 0x1

    goto :goto_54

    :cond_53
    const/4 v4, 0x0

    .line 293
    :goto_54
    invoke-virtual {v3, p1, p2, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    move-result v3

    .line 297
    .restart local v3    # "seekInsideBuffer":Z
    :goto_58
    if-eqz v3, :cond_73

    .line 299
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 301
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v4

    .line 300
    invoke-direct {p0, v4, v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 303
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v5, v4

    :goto_69
    if-ge v2, v5, :cond_a6

    aget-object v6, v4, v2

    .line 304
    .local v6, "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v6, p1, p2, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    .line 303
    .end local v6    # "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 308
    :cond_73
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 309
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 310
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 311
    iput v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 312
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 314
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 315
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v4, v1

    :goto_8e
    if-ge v2, v4, :cond_98

    aget-object v5, v1, v2

    .line 316
    .local v5, "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 315
    .end local v5    # "embeddedSampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    .line 318
    :cond_98
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_a6

    .line 320
    :cond_9e
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->clearFatalError()V

    .line 321
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->resetSampleQueues()V

    .line 324
    :cond_a6
    :goto_a6
    return-void
.end method

.method public selectEmbeddedTrack(JI)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
    .registers 7
    .param p1, "positionUs"    # J
    .param p3, "trackType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>.EmbeddedSampleStream;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 203
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_2a

    .line 204
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 205
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aput-boolean v2, v1, v0

    .line 206
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    .line 207
    new-instance v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v0

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;-><init>(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/SampleQueue;I)V

    return-object v1

    .line 202
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "i":I
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_34

    :goto_33
    throw v0

    :goto_34
    goto :goto_33
.end method

.method public skipData(J)I
    .registers 6
    .param p1, "positionUs"    # J

    .line 403
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 404
    return v1

    .line 406
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getSkipCount(JZ)I

    move-result v0

    .line 407
    .local v0, "skipCount":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    if-eqz v2, :cond_24

    .line 410
    nop

    .line 411
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 412
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v2

    sub-int/2addr v1, v2

    .line 413
    .local v1, "maxSkipCount":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 415
    .end local v1    # "maxSkipCount":I
    :cond_24
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->skip(I)V

    .line 416
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged()V

    .line 417
    return v0
.end method
