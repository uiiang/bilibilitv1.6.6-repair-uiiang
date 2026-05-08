.class public Lcom/google/android/exoplayer2/source/SampleQueue;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;,
        Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;,
        Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SampleQueue"


# instance fields
.field private absoluteFirstIndex:I

.field private capacity:I

.field private cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

.field private currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field private downstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private final extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

.field private flags:[I

.field private isLastSampleQueued:Z

.field private largestDiscardedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private length:I

.field private loggedUnexpectedNonSyncSample:Z

.field private offsets:[J

.field private pendingSplice:Z

.field private readPosition:I

.field private relativeFirstIndex:I

.field private final sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

.field private sampleOffsetUs:J

.field private final sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/SpannedData<",
            "Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private sizes:[I

.field private sourceIds:[J

.field private startTimeUs:J

.field private timesUs:[J

.field private unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private upstreamAllSamplesAreSyncSamples:Z

.field private upstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private upstreamFormatAdjustmentRequired:Z

.field private upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

.field private upstreamFormatRequired:Z

.field private upstreamKeyframeRequired:Z

.field private upstreamSourceId:J


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 6
    .param p1, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p2, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p3, "drmEventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 173
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 174
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/SampleDataQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    .line 175
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    .line 176
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    .line 177
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[J

    .line 178
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    .line 179
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    .line 180
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    .line 181
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    .line 182
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 183
    new-instance v0, Lcom/google/android/exoplayer2/source/SpannedData;

    new-instance v1, Lcom/google/android/exoplayer2/source/SampleQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/SampleQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/SpannedData;-><init>(Lcom/google/android/exoplayer2/util/Consumer;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    .line 185
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    .line 186
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 187
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    .line 189
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    .line 190
    return-void
.end method

.method private declared-synchronized attemptSplice(J)Z
    .registers 8
    .param p1, "timeUs"    # J

    monitor-enter p0

    .line 879
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 880
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_27

    cmp-long v0, p1, v3

    if-lez v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    monitor-exit p0

    return v1

    .line 882
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestReadTimestampUs()J

    move-result-wide v3
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_27

    cmp-long v0, v3, p1

    if-ltz v0, :cond_1b

    .line 883
    monitor-exit p0

    return v2

    .line 885
    :cond_1b
    :try_start_1b
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->countUnreadSamplesBefore(J)I

    move-result v0

    .line 886
    .local v0, "retainCount":I
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSampleMetadata(I)J
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_27

    .line 887
    monitor-exit p0

    return v1

    .line 878
    .end local v0    # "retainCount":I
    .end local p1    # "timeUs":J
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized commitSample(JIJILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .registers 23
    .param p1, "timeUs"    # J
    .param p3, "sampleFlags"    # I
    .param p4, "offset"    # J
    .param p6, "size"    # I
    .param p7, "cryptoData"    # Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    move-object v1, p0

    move-wide/from16 v2, p1

    monitor-enter p0

    .line 806
    :try_start_4
    iget v0, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v0, :cond_23

    .line 808
    sub-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 809
    .local v0, "previousSampleRelativeIndex":I
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aget-wide v7, v6, v0

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aget v6, v6, v0

    int-to-long v9, v6

    add-long/2addr v7, v9

    cmp-long v6, v7, p4

    if-gtz v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_20

    :cond_1f
    const/4 v6, 0x0

    :goto_20
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 813
    .end local v0    # "previousSampleRelativeIndex":I
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_23
    const/high16 v0, 0x20000000

    and-int v0, p3, v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    .line 814
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 816
    iget v0, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 817
    .local v0, "relativeEndIndex":I
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aput-wide v2, v6, v0

    .line 818
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aput-wide p4, v6, v0

    .line 819
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aput p6, v6, v0

    .line 820
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aput p3, v6, v0

    .line 821
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    aput-object p7, v6, v0

    .line 822
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamSourceId:J

    aput-wide v7, v6, v0

    .line 824
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/SpannedData;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_70

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    .line 825
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_97

    .line 827
    :cond_70
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz v6, :cond_7d

    .line 828
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v6, v7, v8}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->preacquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    move-result-object v6

    goto :goto_7f

    .line 829
    :cond_7d
    sget-object v6, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    :goto_7f
    nop

    .line 831
    .local v6, "drmSessionReference":Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    .line 832
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v8

    new-instance v9, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    iget-object v10, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 833
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/Format;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v6, v11}, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;Lcom/google/android/exoplayer2/source/SampleQueue$1;)V

    .line 831
    invoke-virtual {v7, v8, v9}, Lcom/google/android/exoplayer2/source/SpannedData;->appendSpan(ILjava/lang/Object;)V

    .line 836
    .end local v6    # "drmSessionReference":Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    :cond_97
    iget v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    add-int/2addr v6, v4

    iput v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 837
    iget v4, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-ne v6, v4, :cond_109

    .line 839
    add-int/lit16 v6, v4, 0x3e8

    .line 840
    .local v6, "newCapacity":I
    new-array v7, v6, [J

    .line 841
    .local v7, "newSourceIds":[J
    new-array v8, v6, [J

    .line 842
    .local v8, "newOffsets":[J
    new-array v9, v6, [J

    .line 843
    .local v9, "newTimesUs":[J
    new-array v10, v6, [I

    .line 844
    .local v10, "newFlags":[I
    new-array v11, v6, [I

    .line 845
    .local v11, "newSizes":[I
    new-array v12, v6, [Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 846
    .local v12, "newCryptoDatas":[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    iget v13, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    sub-int/2addr v4, v13

    .line 847
    .local v4, "beforeWrap":I
    iget-object v14, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    invoke-static {v14, v13, v8, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 848
    iget-object v13, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    iget v14, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v13, v14, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    iget-object v13, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    iget v14, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v13, v14, v10, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    iget-object v13, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    iget v14, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v13, v14, v11, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    iget-object v13, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iget v14, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v13, v14, v12, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 852
    iget-object v13, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[J

    iget v14, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v13, v14, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 853
    iget v13, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 854
    .local v13, "afterWrap":I
    iget-object v14, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    invoke-static {v14, v5, v8, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    iget-object v14, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    invoke-static {v14, v5, v9, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    iget-object v14, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    invoke-static {v14, v5, v10, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    iget-object v14, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    invoke-static {v14, v5, v11, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    iget-object v14, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-static {v14, v5, v12, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 859
    iget-object v14, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[J

    invoke-static {v14, v5, v7, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    iput-object v8, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    .line 861
    iput-object v9, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    .line 862
    iput-object v10, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    .line 863
    iput-object v11, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    .line 864
    iput-object v12, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 865
    iput-object v7, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[J

    .line 866
    iput v5, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 867
    iput v6, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I
    :try_end_109
    .catchall {:try_start_4 .. :try_end_109} :catchall_10b

    .line 869
    .end local v4    # "beforeWrap":I
    .end local v6    # "newCapacity":I
    .end local v7    # "newSourceIds":[J
    .end local v8    # "newOffsets":[J
    .end local v9    # "newTimesUs":[J
    .end local v10    # "newFlags":[I
    .end local v11    # "newSizes":[I
    .end local v12    # "newCryptoDatas":[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    .end local v13    # "afterWrap":I
    :cond_109
    monitor-exit p0

    return-void

    .line 805
    .end local v0    # "relativeEndIndex":I
    .end local p1    # "timeUs":J
    .end local p3    # "sampleFlags":I
    .end local p4    # "offset":J
    .end local p6    # "size":I
    .end local p7    # "cryptoData":Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    :catchall_10b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private countUnreadSamplesBefore(J)I
    .registers 8
    .param p1, "timeUs"    # J

    .line 1001
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 1002
    .local v0, "count":I
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v1

    .line 1003
    .local v1, "relativeSampleIndex":I
    :cond_a
    :goto_a
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    if-le v0, v2, :cond_22

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v3, v2, v1

    cmp-long v2, v3, p1

    if-ltz v2, :cond_22

    .line 1004
    add-int/lit8 v0, v0, -0x1

    .line 1005
    add-int/lit8 v1, v1, -0x1

    .line 1006
    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 1007
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    add-int/lit8 v1, v2, -0x1

    goto :goto_a

    .line 1010
    :cond_22
    return v0
.end method

.method public static createWithDrm(Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/SampleQueue;
    .registers 7
    .param p0, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p1, "playbackLooper"    # Landroid/os/Looper;
    .param p2, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p3, "drmEventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    sget-object v0, Lcom/google/android/exoplayer2/analytics/PlayerId;->UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 162
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 164
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 165
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 162
    return-object v0
.end method

.method public static createWithDrm(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/SampleQueue;
    .registers 6
    .param p0, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p1, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p2, "drmEventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 144
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 146
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 147
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 144
    return-object v0
.end method

.method public static createWithoutDrm(Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/SampleQueue;
    .registers 3
    .param p0, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 124
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    return-object v0
.end method

.method private declared-synchronized discardSampleMetadataTo(JZZ)J
    .registers 15
    .param p1, "timeUs"    # J
    .param p3, "toKeyframe"    # Z
    .param p4, "stopAtReadPosition"    # Z

    monitor-enter p0

    .line 765
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2f

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    iget v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v6, v3, v5

    cmp-long v3, p1, v6

    if-gez v3, :cond_12

    goto :goto_2f

    .line 768
    :cond_12
    if-eqz p4, :cond_1c

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    if-eq v3, v0, :cond_1c

    add-int/lit8 v0, v3, 0x1

    move v6, v0

    goto :goto_1d

    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_1c
    move v6, v0

    .line 769
    .local v6, "searchLength":I
    :goto_1d
    move-object v4, p0

    move-wide v7, p1

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result v0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_31

    .line 770
    .local v0, "discardCount":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_29

    .line 771
    monitor-exit p0

    return-wide v1

    .line 773
    :cond_29
    :try_start_29
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSamples(I)J

    move-result-wide v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_31

    monitor-exit p0

    return-wide v1

    .line 766
    .end local v0    # "discardCount":I
    .end local v6    # "searchLength":I
    :cond_2f
    :goto_2f
    monitor-exit p0

    return-wide v1

    .line 764
    .end local p1    # "timeUs":J
    .end local p3    # "toKeyframe":Z
    .end local p4    # "stopAtReadPosition":Z
    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized discardSampleMetadataToEnd()J
    .registers 3

    monitor-enter p0

    .line 784
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_9

    .line 785
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 787
    :cond_9
    :try_start_9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    .line 783
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private discardSamples(I)J
    .registers 8
    .param p1, "discardCount"    # I

    .line 1021
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 1023
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 1024
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    .line 1025
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 1026
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-lt v1, v2, :cond_22

    .line 1027
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 1029
    :cond_22
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 1030
    if-gez v1, :cond_2c

    .line 1031
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 1033
    :cond_2c
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/SpannedData;->discardTo(I)V

    .line 1035
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-nez v0, :cond_48

    .line 1036
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    if-nez v0, :cond_3b

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    .line 1037
    .local v0, "relativeLastDiscardIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aget v1, v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    return-wide v2

    .line 1039
    .end local v0    # "relativeLastDiscardIndex":I
    :cond_48
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method private discardUpstreamSampleMetadata(I)J
    .registers 10
    .param p1, "discardFromIndex"    # I

    .line 891
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v0

    sub-int/2addr v0, p1

    .line 892
    .local v0, "discardCount":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_12

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 893
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 894
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 895
    if-nez v0, :cond_2e

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz v3, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    .line 896
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/SpannedData;->discardFrom(I)V

    .line 897
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-eqz v1, :cond_49

    .line 898
    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v1

    .line 899
    .local v1, "relativeLastWriteIndex":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aget-wide v3, v2, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aget v2, v2, v1

    int-to-long v5, v2

    add-long/2addr v3, v5

    return-wide v3

    .line 901
    .end local v1    # "relativeLastWriteIndex":I
    :cond_49
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private findSampleBefore(IIJZ)I
    .registers 12
    .param p1, "relativeStartIndex"    # I
    .param p2, "length"    # I
    .param p3, "timeUs"    # J
    .param p5, "keyframe"    # Z

    .line 973
    const/4 v0, -0x1

    .line 974
    .local v0, "sampleCountToTarget":I
    move v1, p1

    .line 975
    .local v1, "searchIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p2, :cond_27

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_27

    .line 976
    if-eqz p5, :cond_17

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget v3, v3, v1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1d

    .line 978
    :cond_17
    move v0, v2

    .line 979
    cmp-long v3, v4, p3

    if-nez v3, :cond_1d

    .line 982
    goto :goto_27

    .line 985
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    .line 986
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-ne v1, v3, :cond_24

    .line 987
    const/4 v1, 0x0

    .line 975
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 990
    .end local v2    # "i":I
    :cond_27
    :goto_27
    return v0
.end method

.method private getLargestTimestamp(I)J
    .registers 9
    .param p1, "length"    # I

    .line 1052
    if-nez p1, :cond_5

    .line 1053
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 1055
    :cond_5
    const-wide/high16 v0, -0x8000000000000000L

    .line 1056
    .local v0, "largestTimestampUs":J
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    .line 1057
    .local v2, "relativeSampleIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, p1, :cond_2e

    .line 1058
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1059
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_21

    .line 1060
    goto :goto_2e

    .line 1062
    :cond_21
    add-int/lit8 v2, v2, -0x1

    .line 1063
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2b

    .line 1064
    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .line 1057
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1067
    .end local v3    # "i":I
    :cond_2e
    :goto_2e
    return-wide v0
.end method

.method private getRelativeIndex(I)I
    .registers 4
    .param p1, "offset"    # I

    .line 1076
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    .line 1077
    .local v0, "relativeIndex":I
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-ge v0, v1, :cond_9

    move v1, v0

    goto :goto_b

    :cond_9
    sub-int v1, v0, v1

    :goto_b
    return v1
.end method

.method private hasNextSample()Z
    .registers 3

    .line 905
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$new$0(Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;)V
    .registers 2
    .param p0, "metadata"    # Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->drmSessionReference:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;->release()V

    return-void
.end method

.method private mayReadSample(I)Z
    .registers 4
    .param p1, "relativeReadIndex"    # I

    .line 952
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1f

    .line 953
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget v0, v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 955
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->playClearSamplesWithoutKeys()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 952
    :goto_20
    return v0
.end method

.method private onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    .registers 9
    .param p1, "newFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "outputFormatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;

    .line 916
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    .line 917
    .local v1, "isFirstFormat":Z
    :goto_7
    if-eqz v1, :cond_b

    const/4 v0, 0x0

    goto :goto_d

    :cond_b
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 918
    .local v0, "oldDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :goto_d
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 919
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 921
    .local v2, "newDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    nop

    .line 922
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz v3, :cond_1f

    .line 923
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->getCryptoType(Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format;->copyWithCryptoType(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    goto :goto_20

    .line 924
    :cond_1f
    move-object v3, p1

    :goto_20
    iput-object v3, p2, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 925
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v3, p2, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 926
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-nez v3, :cond_2b

    .line 928
    return-void

    .line 930
    :cond_2b
    if-nez v1, :cond_34

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 932
    return-void

    .line 936
    :cond_34
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 937
    .local v3, "previousSession":Lcom/google/android/exoplayer2/drm/DrmSession;
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v4, v5, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->acquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 938
    iput-object v4, p2, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 940
    if-eqz v3, :cond_49

    .line 941
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 943
    :cond_49
    return-void
.end method

.method private declared-synchronized peekSampleMetadata(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)I
    .registers 14
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z
    .param p4, "loadingFinished"    # Z
    .param p5, "extrasHolder"    # Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    monitor-enter p0

    .line 699
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->waitingForKeys:Z

    .line 700
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_31

    .line 701
    if-nez p4, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz v0, :cond_14

    goto :goto_2b

    .line 704
    :cond_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_29

    if-nez p3, :cond_1e

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq v0, v3, :cond_29

    .line 705
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_1e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_9c

    .line 706
    monitor-exit p0

    return v1

    .line 708
    :cond_29
    monitor-exit p0

    return v2

    .line 702
    :cond_2b
    :goto_2b
    const/4 v0, 0x4

    :try_start_2c
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_9c

    .line 703
    monitor-exit p0

    return v3

    .line 712
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/source/SpannedData;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->format:Lcom/google/android/exoplayer2/Format;

    .line 713
    .local v0, "format":Lcom/google/android/exoplayer2/Format;
    if-nez p3, :cond_97

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq v0, v4, :cond_46

    goto :goto_97

    .line 718
    :cond_46
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v1

    .line 719
    .local v1, "relativeReadIndex":I
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->mayReadSample(I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_57

    .line 720
    iput-boolean v5, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->waitingForKeys:Z
    :try_end_55
    .catchall {:try_start_31 .. :try_end_55} :catchall_9c

    .line 721
    monitor-exit p0

    return v2

    .line 724
    :cond_57
    :try_start_57
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget v2, v2, v1

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 725
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_70

    if-nez p4, :cond_6b

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz v2, :cond_70

    .line 726
    :cond_6b
    const/high16 v2, 0x20000000

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 728
    :cond_70
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v4, v2, v1

    iput-wide v4, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 729
    iget-wide v4, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_83

    .line 730
    const/high16 v2, -0x80000000

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 732
    :cond_83
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aget v2, v2, v1

    iput v2, p5, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 733
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aget-wide v4, v2, v1

    iput-wide v4, p5, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 734
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    aget-object v2, v2, v1

    iput-object v2, p5, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    :try_end_95
    .catchall {:try_start_57 .. :try_end_95} :catchall_9c

    .line 736
    monitor-exit p0

    return v3

    .line 714
    .end local v1    # "relativeReadIndex":I
    :cond_97
    :goto_97
    :try_start_97
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9c

    .line 715
    monitor-exit p0

    return v1

    .line 698
    .end local v0    # "format":Lcom/google/android/exoplayer2/Format;
    .end local p1    # "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    .end local p2    # "buffer":Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .end local p3    # "formatRequired":Z
    .end local p4    # "loadingFinished":Z
    .end local p5    # "extrasHolder":Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;
    :catchall_9c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private releaseDrmSessionReferences()V
    .registers 3

    .line 791
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_e

    .line 792
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 796
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 798
    :cond_e
    return-void
.end method

.method private declared-synchronized rewind()V
    .registers 2

    monitor-enter p0

    .line 688
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 689
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->rewind()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 690
    monitor-exit p0

    return-void

    .line 687
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Z
    .registers 5
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    monitor-enter p0

    .line 740
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    .line 741
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_48

    if-eqz v1, :cond_e

    .line 745
    monitor-exit p0

    return v0

    .line 748
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SpannedData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    .line 749
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 753
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->format:Lcom/google/android/exoplayer2/Format;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    goto :goto_35

    .line 755
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_33
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 757
    :goto_35
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 758
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamAllSamplesAreSyncSamples:Z

    .line 759
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z
    :try_end_45
    .catchall {:try_start_e .. :try_end_45} :catchall_48

    .line 760
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 739
    .end local p1    # "format":Lcom/google/android/exoplayer2/Format;
    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized discardSampleMetadataToRead()J
    .registers 3

    monitor-enter p0

    .line 777
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_9

    .line 778
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 780
    :cond_9
    :try_start_9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    .line 776
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final discardTo(JZZ)V
    .registers 8
    .param p1, "timeUs"    # J
    .param p3, "toKeyframe"    # Z
    .param p4, "stopAtReadPosition"    # Z

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    .line 543
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSampleMetadataTo(JZZ)J

    move-result-wide v1

    .line 542
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->discardDownstreamTo(J)V

    .line 544
    return-void
.end method

.method public final discardToEnd()V
    .registers 4

    .line 553
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSampleMetadataToEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->discardDownstreamTo(J)V

    .line 554
    return-void
.end method

.method public final discardToRead()V
    .registers 4

    .line 548
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSampleMetadataToRead()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->discardDownstreamTo(J)V

    .line 549
    return-void
.end method

.method public final discardUpstreamFrom(J)V
    .registers 6
    .param p1, "timeUs"    # J

    .line 281
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-nez v0, :cond_5

    .line 282
    return-void

    .line 284
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestReadTimestampUs()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->countUnreadSamplesBefore(J)I

    move-result v0

    .line 286
    .local v0, "retainCount":I
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSamples(I)V

    .line 287
    return-void
.end method

.method public final discardUpstreamSamples(I)V
    .registers 5
    .param p1, "discardFromIndex"    # I

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSampleMetadata(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->discardUpstreamSampleBytes(J)V

    .line 271
    return-void
.end method

.method public final format(Lcom/google/android/exoplayer2/Format;)V
    .registers 5
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 585
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getAdjustedUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 586
    .local v0, "adjustedUpstreamFormat":Lcom/google/android/exoplayer2/Format;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    .line 587
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 588
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->setUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    .line 589
    .local v1, "upstreamFormatChanged":Z
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    if-eqz v2, :cond_16

    if-eqz v1, :cond_16

    .line 590
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;->onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 592
    :cond_16
    return-void
.end method

.method protected getAdjustedUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .registers 7
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 674
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_25

    iget-wide v0, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_25

    .line 675
    nop

    .line 677
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    add-long/2addr v1, v3

    .line 678
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 681
    :cond_25
    return-object p1
.end method

.method public final getFirstIndex()I
    .registers 2

    .line 313
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    return v0
.end method

.method public final declared-synchronized getFirstTimestampUs()J
    .registers 4

    monitor-enter p0

    .line 377
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-nez v0, :cond_8

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_f

    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v1, v0, v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-wide v0, v1

    :goto_f
    monitor-exit p0

    return-wide v0

    .line 377
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLargestQueuedTimestampUs()J
    .registers 3

    monitor-enter p0

    .line 349
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    .line 349
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLargestReadTimestampUs()J
    .registers 5

    monitor-enter p0

    .line 359
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    .line 359
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getReadIndex()I
    .registers 3

    .line 318
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized getSkipCount(JZ)I
    .registers 12
    .param p1, "timeUs"    # J
    .param p3, "allowEndOfQueue"    # Z

    monitor-enter p0

    .line 505
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 506
    .local v0, "relativeReadIndex":I
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v2, v1, v0

    cmp-long v1, p1, v2

    if-gez v1, :cond_17

    goto :goto_3b

    .line 509
    :cond_17
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    cmp-long v3, p1, v1

    if-lez v3, :cond_26

    if-eqz p3, :cond_26

    .line 510
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_3d

    sub-int/2addr v1, v2

    monitor-exit p0

    return v1

    .line 512
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_26
    :try_start_26
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int v3, v1, v2

    const/4 v6, 0x1

    .line 513
    move-object v1, p0

    move v2, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result v1
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_3d

    .line 514
    .local v1, "offset":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_39

    .line 515
    monitor-exit p0

    return v7

    .line 517
    :cond_39
    monitor-exit p0

    return v1

    .line 507
    .end local v1    # "offset":I
    :cond_3b
    :goto_3b
    monitor-exit p0

    return v7

    .line 504
    .end local v0    # "relativeReadIndex":I
    .end local p1    # "timeUs":J
    .end local p3    # "allowEndOfQueue":Z
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getUpstreamFormat()Lcom/google/android/exoplayer2/Format;
    .registers 2

    monitor-enter p0

    .line 335
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :goto_9
    monitor-exit p0

    return-object v0

    .line 335
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getWriteIndex()I
    .registers 3

    .line 260
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected final invalidateUpstreamFormatAdjustment()V
    .registers 2

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    .line 660
    return-void
.end method

.method public final declared-synchronized isLastSampleQueued()Z
    .registers 2

    monitor-enter p0

    .line 372
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 372
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReady(Z)Z
    .registers 5
    .param p1, "loadingFinished"    # Z

    monitor-enter p0

    .line 394
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    .line 395
    if-nez p1, :cond_18

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_17

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_3a

    if-eq v0, v2, :cond_17

    goto :goto_18

    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_17
    const/4 v1, 0x0

    :cond_18
    :goto_18
    monitor-exit p0

    return v1

    .line 399
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/SpannedData;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_3a

    if-eq v0, v2, :cond_2e

    .line 401
    monitor-exit p0

    return v1

    .line 403
    :cond_2e
    :try_start_2e
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->mayReadSample(I)Z

    move-result v0
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_3a

    monitor-exit p0

    return v0

    .line 393
    .end local p1    # "loadingFinished":Z
    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public maybeThrowError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    goto :goto_19

    .line 307
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    throw v0

    .line 309
    :cond_19
    :goto_19
    return-void
.end method

.method public final declared-synchronized peekSourceId()J
    .registers 5

    monitor-enter p0

    .line 328
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 329
    .local v0, "relativeReadIndex":I
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[J

    aget-wide v2, v1, v0

    goto :goto_14

    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_12
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamSourceId:J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :goto_14
    monitor-exit p0

    return-wide v2

    .line 327
    .end local v0    # "relativeReadIndex":I
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public preRelease()V
    .registers 1

    .line 294
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 295
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->releaseDrmSessionReferences()V

    .line 296
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I
    .registers 14
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "readFlags"    # I
    .param p4, "loadingFinished"    # Z

    .line 430
    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const/4 v6, 0x1

    goto :goto_9

    :cond_8
    const/4 v6, 0x0

    :goto_9
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    .line 431
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->peekSampleMetadata(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)I

    move-result v0

    .line 437
    .local v0, "result":I
    const/4 v3, -0x4

    if-ne v0, v3, :cond_3d

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 438
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_21

    const/4 v1, 0x1

    .line 439
    .local v1, "peek":Z
    :cond_21
    and-int/lit8 v3, p3, 0x4

    if-nez v3, :cond_36

    .line 440
    if-eqz v1, :cond_2f

    .line 441
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    invoke-virtual {v3, p2, v4}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->peekToBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)V

    goto :goto_36

    .line 443
    :cond_2f
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    invoke-virtual {v3, p2, v4}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readToBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)V

    .line 446
    :cond_36
    :goto_36
    if-nez v1, :cond_3d

    .line 447
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 450
    .end local v1    # "peek":Z
    :cond_3d
    return v0
.end method

.method public release()V
    .registers 2

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    .line 198
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->releaseDrmSessionReferences()V

    .line 199
    return-void
.end method

.method public final reset()V
    .registers 2

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    .line 204
    return-void
.end method

.method public reset(Z)V
    .registers 6
    .param p1, "resetUpstreamFormat"    # Z

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->reset()V

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 218
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    .line 219
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 220
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 221
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    .line 222
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    .line 223
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 224
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 225
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SpannedData;->clear()V

    .line 227
    if-eqz p1, :cond_29

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 229
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 230
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    .line 232
    :cond_29
    return-void
.end method

.method public synthetic sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/TrackOutput$-CC;->$default$sampleData(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public final sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZI)I
    .registers 6
    .param p1, "input"    # Lcom/google/android/exoplayer2/upstream/DataReader;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .param p4, "sampleDataPart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v0

    return v0
.end method

.method public synthetic sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput$-CC;->$default$sampleData(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method public final sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V
    .registers 5
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "length"    # I
    .param p3, "sampleDataPart"    # I

    .line 604
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 605
    return-void
.end method

.method public sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .registers 24
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "cryptoData"    # Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 614
    move-object/from16 v8, p0

    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    if-eqz v0, :cond_11

    .line 615
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 618
    :cond_11
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    move v9, v0

    .line 619
    .local v9, "isKeyframe":Z
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    if-eqz v0, :cond_24

    .line 620
    if-nez v9, :cond_22

    .line 621
    return-void

    .line 623
    :cond_22
    iput-boolean v1, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    .line 626
    :cond_24
    iget-wide v3, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    add-long v10, p1, v3

    .line 627
    .end local p1    # "timeUs":J
    .local v10, "timeUs":J
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamAllSamplesAreSyncSamples:Z

    if-eqz v0, :cond_5b

    .line 628
    iget-wide v3, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    cmp-long v0, v10, v3

    if-gez v0, :cond_33

    .line 631
    return-void

    .line 633
    :cond_33
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_5b

    .line 636
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    if-nez v0, :cond_57

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SampleQueue"

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iput-boolean v2, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    .line 640
    :cond_57
    or-int/lit8 v0, p3, 0x1

    move v12, v0

    .end local p3    # "flags":I
    .local v0, "flags":I
    goto :goto_5d

    .line 643
    .end local v0    # "flags":I
    .restart local p3    # "flags":I
    :cond_5b
    move/from16 v12, p3

    .end local p3    # "flags":I
    .local v12, "flags":I
    :goto_5d
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    if-eqz v0, :cond_6e

    .line 644
    if-eqz v9, :cond_6d

    invoke-direct {v8, v10, v11}, Lcom/google/android/exoplayer2/source/SampleQueue;->attemptSplice(J)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_6d

    .line 647
    :cond_6a
    iput-boolean v1, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    goto :goto_6e

    .line 645
    :cond_6d
    :goto_6d
    return-void

    .line 650
    :cond_6e
    :goto_6e
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->getTotalBytesWritten()J

    move-result-wide v0

    move/from16 v13, p4

    int-to-long v2, v13

    sub-long/2addr v0, v2

    move/from16 v14, p5

    int-to-long v2, v14

    sub-long v15, v0, v2

    .line 651
    .local v15, "absoluteOffset":J
    move-object/from16 v0, p0

    move-wide v1, v10

    move v3, v12

    move-wide v4, v15

    move/from16 v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/SampleQueue;->commitSample(JIJILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 652
    return-void
.end method

.method public final declared-synchronized seekTo(I)Z
    .registers 5
    .param p1, "sampleIndex"    # I

    monitor-enter p0

    .line 460
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 461
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    if-lt p1, v0, :cond_19

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    add-int/2addr v1, v0

    if-le p1, v1, :cond_e

    goto :goto_19

    .line 464
    :cond_e
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    .line 465
    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1c

    .line 466
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 462
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_19
    :goto_19
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 459
    .end local p1    # "sampleIndex":I
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized seekTo(JZ)Z
    .registers 12
    .param p1, "timeUs"    # J
    .param p3, "allowTimeBeyondBuffer"    # Z

    monitor-enter p0

    .line 478
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 479
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 480
    .local v0, "relativeReadIndex":I
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v2, v1, v0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_3f

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    cmp-long v3, p1, v1

    if-lez v3, :cond_22

    if-nez p3, :cond_22

    goto :goto_3f

    .line 485
    :cond_22
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int v3, v1, v2

    const/4 v6, 0x1

    .line 486
    move-object v1, p0

    move v2, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result v1
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_41

    .line 487
    .local v1, "offset":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_35

    .line 488
    monitor-exit p0

    return v7

    .line 490
    :cond_35
    :try_start_35
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    .line 491
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_41

    .line 492
    monitor-exit p0

    const/4 v2, 0x1

    return v2

    .line 483
    .end local v1    # "offset":I
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_3f
    :goto_3f
    monitor-exit p0

    return v7

    .line 477
    .end local v0    # "relativeReadIndex":I
    .end local p1    # "timeUs":J
    .end local p3    # "allowTimeBeyondBuffer":Z
    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setSampleOffsetUs(J)V
    .registers 6
    .param p1, "sampleOffsetUs"    # J

    .line 565
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_b

    .line 566
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    .line 567
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->invalidateUpstreamFormatAdjustment()V

    .line 569
    :cond_b
    return-void
.end method

.method public final setStartTimeUs(J)V
    .registers 3
    .param p1, "startTimeUs"    # J

    .line 241
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    .line 242
    return-void
.end method

.method public final setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    .line 578
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    .line 579
    return-void
.end method

.method public final declared-synchronized skip(I)V
    .registers 4
    .param p1, "count"    # I

    monitor-enter p0

    .line 527
    if-ltz p1, :cond_e

    :try_start_3
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    .line 526
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local p1    # "count":I
    :catchall_c
    move-exception p1

    goto :goto_19

    .line 527
    .restart local p1    # "count":I
    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 528
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_c

    .line 529
    monitor-exit p0

    return-void

    .line 526
    .end local p1    # "count":I
    :goto_19
    monitor-exit p0

    throw p1
.end method

.method public final sourceId(J)V
    .registers 3
    .param p1, "sourceId"    # J

    .line 250
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamSourceId:J

    .line 251
    return-void
.end method

.method public final splice()V
    .registers 2

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    .line 256
    return-void
.end method
