.class final Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;
.implements Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;,
        Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;,
        Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;,
        Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;,
        Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;",
        "Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_LAST_SAMPLE_DURATION_US:J = 0x2710L

.field private static final ICY_FORMAT:Lcom/google/android/exoplayer2/Format;

.field private static final ICY_METADATA_HEADERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final continueLoadingCheckIntervalBytes:J

.field private final customCacheKey:Ljava/lang/String;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private dataType:I

.field private final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private durationUs:J

.field private enabledTrackCount:I

.field private extractedSamplesCountAtStartOfLoad:I

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoTracks:Z

.field private icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

.field private isLengthKnown:Z

.field private isLive:Z

.field private lastSeekPositionUs:J

.field private final listener:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;

.field private final loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private notifyDiscontinuity:Z

.field private final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field private pendingDeferredRetry:Z

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private final progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

.field private released:Z

.field private sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

.field private sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

.field private sampleQueuesBuilt:Z

.field private seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

.field private seenFirstTrackSelection:Z

.field private trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$CjLGsvCDk7eH0JF3BpHsaJTFROE(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 107
    invoke-static {}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->createIcyMetadataHeaders()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->ICY_METADATA_HEADERS:Ljava/util/Map;

    .line 109
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 110
    const-string v1, "icy"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->ICY_FORMAT:Lcom/google/android/exoplayer2/Format;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "progressiveMediaExtractor"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;
    .param p4, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p5, "drmEventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p6, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p7, "mediaSourceEventDispatcher"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .param p8, "listener"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;
    .param p9, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p10, "customCacheKey"    # Ljava/lang/String;
    .param p11, "continueLoadingCheckIntervalBytes"    # I

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->uri:Landroid/net/Uri;

    .line 188
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 189
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 190
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 191
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 192
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 193
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;

    .line 194
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 195
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;

    .line 196
    int-to-long v0, p11

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    .line 197
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "ProgressiveMediaPeriod"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 198
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    .line 199
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 200
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 201
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    .line 207
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    .line 208
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    .line 209
    new-array v0, v0, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 210
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 211
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 212
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataType:I

    .line 213
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;Z)J
    .registers 4
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;
    .param p1, "x1"    # Z

    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300()Ljava/util/Map;
    .registers 1

    .line 80
    sget-object v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->ICY_METADATA_HEADERS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 80
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->onLengthKnown()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 80
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    return-object p1
.end method

.method static synthetic access$800()Lcom/google/android/exoplayer2/Format;
    .registers 1

    .line 80
    sget-object v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->ICY_FORMAT:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 80
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    return-wide v0
.end method

.method private assertPrepared()V
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackState",
            "seekMap"
        }
    .end annotation

    .line 927
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 928
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    return-void
.end method

.method private configureRetry(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;I)Z
    .registers 10
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;
    .param p2, "currentExtractedSampleCount"    # I

    .line 846
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isLengthKnown:Z

    const/4 v1, 0x1

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_17

    goto :goto_40

    .line 851
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_25

    .line 861
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 862
    return v2

    .line 868
    :cond_25
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 869
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 870
    iput v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 871
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v5, v0

    :goto_32
    if-ge v2, v5, :cond_3c

    aget-object v6, v0, v2

    .line 872
    .local v6, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 871
    .end local v6    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 874
    :cond_3c
    # invokes: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V
    invoke-static {p1, v3, v4, v3, v4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$500(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    .line 875
    return v1

    .line 849
    :cond_40
    :goto_40
    iput p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 850
    return v1
.end method

.method private static createIcyMetadataHeaders()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1154
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private getExtractedSamplesCount()I
    .registers 7

    .line 903
    const/4 v0, 0x0

    .line 904
    .local v0, "extractedSamplesCount":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_11

    aget-object v4, v1, v3

    .line 905
    .local v4, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v5

    add-int/2addr v0, v5

    .line 904
    .end local v4    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 907
    :cond_11
    return v0
.end method

.method private getLargestQueuedTimestampUs(Z)J
    .registers 7
    .param p1, "includeDisabledTracks"    # Z

    .line 911
    const-wide/high16 v0, -0x8000000000000000L

    .line 912
    .local v0, "largestQueuedTimestampUs":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v3

    if-ge v2, v3, :cond_27

    .line 913
    if-nez p1, :cond_18

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_24

    .line 914
    :cond_18
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v3, v3, v2

    .line 915
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 912
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 918
    .end local v2    # "i":I
    :cond_27
    return-wide v0
.end method

.method private isPendingReset()Z
    .registers 6

    .line 922
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

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

.method private maybeFinishPrepare()V
    .registers 15

    .line 754
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->released:Z

    if-nez v0, :cond_e1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    if-nez v0, :cond_e1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    if-nez v0, :cond_12

    goto/16 :goto_e1

    .line 757
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_25

    aget-object v4, v0, v3

    .line 758
    .local v4, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    if-nez v5, :cond_22

    .line 759
    return-void

    .line 757
    .end local v4    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 762
    :cond_25
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 763
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    .line 764
    .local v0, "trackCount":I
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 765
    .local v1, "trackArray":[Lcom/google/android/exoplayer2/source/TrackGroup;
    new-array v3, v0, [Z

    .line 766
    .local v3, "trackIsAudioVideoFlags":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_32
    const/4 v5, 0x1

    if-ge v4, v0, :cond_c7

    .line 767
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/Format;

    .line 768
    .local v6, "trackFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v7, v6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 769
    .local v7, "mimeType":Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v8

    .line 770
    .local v8, "isAudio":Z
    if-nez v8, :cond_54

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_52

    goto :goto_54

    :cond_52
    const/4 v9, 0x0

    goto :goto_55

    :cond_54
    :goto_54
    const/4 v9, 0x1

    .line 771
    .local v9, "isAudioVideo":Z
    :goto_55
    aput-boolean v9, v3, v4

    .line 772
    iget-boolean v10, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    or-int/2addr v10, v9

    iput-boolean v10, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    .line 773
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 774
    .local v10, "icyHeaders":Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    if-eqz v10, :cond_aa

    .line 775
    if-nez v8, :cond_6a

    iget-object v11, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    aget-object v11, v11, v4

    iget-boolean v11, v11, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    if-eqz v11, :cond_8d

    .line 776
    :cond_6a
    iget-object v11, v6, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 777
    .local v11, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    if-nez v11, :cond_79

    .line 778
    new-instance v12, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v13, v5, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v10, v13, v2

    invoke-direct {v12, v13}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    move-object v11, v12

    goto :goto_81

    .line 780
    :cond_79
    new-array v12, v5, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v10, v12, v2

    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntries([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v11

    .line 782
    :goto_81
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 786
    .end local v11    # "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    :cond_8d
    if-eqz v8, :cond_aa

    iget v11, v6, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_aa

    iget v11, v6, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    if-ne v11, v12, :cond_aa

    iget v11, v10, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    if-eq v11, v12, :cond_aa

    .line 790
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v11

    iget v12, v10, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 793
    :cond_aa
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v11, v6}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->getCryptoType(Lcom/google/android/exoplayer2/Format;)I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/Format;->copyWithCryptoType(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 794
    new-instance v11, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    new-array v5, v5, [Lcom/google/android/exoplayer2/Format;

    aput-object v6, v5, v2

    invoke-direct {v11, v12, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object v11, v1, v4

    .line 766
    .end local v6    # "trackFormat":Lcom/google/android/exoplayer2/Format;
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "isAudio":Z
    .end local v9    # "isAudioVideo":Z
    .end local v10    # "icyHeaders":Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_32

    .line 796
    .end local v4    # "i":I
    :cond_c7
    new-instance v2, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-direct {v2, v4, v3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;-><init>(Lcom/google/android/exoplayer2/source/TrackGroupArray;[Z)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    .line 797
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    .line 798
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 799
    return-void

    .line 755
    .end local v0    # "trackCount":I
    .end local v1    # "trackArray":[Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v3    # "trackIsAudioVideoFlags":[Z
    :cond_e1
    :goto_e1
    return-void
.end method

.method private maybeNotifyDownstreamFormat(I)V
    .registers 12
    .param p1, "track"    # I

    .line 517
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->trackNotifiedDownstreamFormats:[Z

    .line 519
    .local v0, "trackNotifiedDownstreamFormats":[Z
    aget-boolean v1, v0, p1

    if-nez v1, :cond_2b

    .line 520
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 521
    .local v1, "trackFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 522
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 521
    move-object v5, v1

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 527
    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    .line 529
    .end local v1    # "trackFormat":Lcom/google/android/exoplayer2/Format;
    :cond_2b
    return-void
.end method

.method private maybeStartDeferredRetry(I)V
    .registers 7
    .param p1, "track"    # I

    .line 532
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    .line 534
    .local v0, "trackIsAudioVideoFlags":[Z
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    if-eqz v1, :cond_41

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v1, v1, p1

    .line 536
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->isReady(Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_41

    .line 539
    :cond_1b
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 540
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 541
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 542
    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 543
    iput v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 544
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v1

    :goto_2b
    if-ge v2, v3, :cond_35

    aget-object v4, v1, v2

    .line 545
    .local v4, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 544
    .end local v4    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 547
    :cond_35
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 548
    return-void

    .line 537
    :cond_41
    :goto_41
    return-void
.end method

.method private onLengthKnown()V
    .registers 3

    .line 719
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 720
    return-void
.end method

.method private prepareTrackOutput(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .registers 7
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    .line 723
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    .line 724
    .local v0, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_18

    .line 725
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 726
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v1

    return-object v2

    .line 724
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 729
    .end local v1    # "i":I
    :cond_18
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 730
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->createWithDrm(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/SampleQueue;

    move-result-object v1

    .line 731
    .local v1, "trackOutput":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 733
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    .line 734
    .local v2, "sampleQueueTrackIds":[Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;
    aput-object p1, v2, v0

    .line 735
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    .line 736
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 737
    .local v3, "sampleQueues":[Lcom/google/android/exoplayer2/source/SampleQueue;
    aput-object v1, v3, v0

    .line 738
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 739
    return-object v1
.end method

.method private seekInsideBufferUs([ZJ)Z
    .registers 10
    .param p1, "trackIsAudioVideoFlags"    # [Z
    .param p2, "positionUs"    # J

    .line 887
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    .line 888
    .local v0, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_1d

    .line 889
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v1

    .line 890
    .local v2, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    const/4 v3, 0x0

    invoke-virtual {v2, p2, p3, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    move-result v4

    .line 895
    .local v4, "seekInsideQueue":Z
    if-nez v4, :cond_1a

    aget-boolean v5, p1, v1

    if-nez v5, :cond_19

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    if-nez v5, :cond_1a

    .line 896
    :cond_19
    return v3

    .line 888
    .end local v2    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    .end local v4    # "seekInsideQueue":Z
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 899
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x1

    return v1
.end method

.method private setSeekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .registers 8
    .param p1, "seekMap"    # Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 743
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_b

    move-object v0, p1

    goto :goto_10

    :cond_b
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_10
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 744
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 745
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isLengthKnown:Z

    const/4 v3, 0x1

    if-nez v0, :cond_27

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isLive:Z

    .line 746
    if-eqz v0, :cond_2d

    const/4 v3, 0x7

    :cond_2d
    iput v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataType:I

    .line 747
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isLive:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;->onSourceInfoRefreshed(JZZ)V

    .line 748
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    if-nez v0, :cond_43

    .line 749
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeFinishPrepare()V

    .line 751
    :cond_43
    return-void
.end method

.method private startLoading()V
    .registers 20

    .line 802
    move-object/from16 v7, p0

    new-instance v8, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-object v2, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v4, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iget-object v6, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;-><init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/util/ConditionVariable;)V

    .line 805
    .local v0, "loadable":Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;
    iget-boolean v1, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v1, :cond_5f

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 807
    iget-wide v1, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_36

    iget-wide v5, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    cmp-long v8, v5, v1

    if-lez v8, :cond_36

    .line 808
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 809
    iput-wide v3, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 810
    return-void

    .line 812
    :cond_36
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 813
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/SeekMap;

    iget-wide v5, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    invoke-interface {v1, v5, v6}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    iget-wide v5, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 812
    # invokes: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V
    invoke-static {v0, v1, v2, v5, v6}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$500(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    .line 815
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v1

    const/4 v5, 0x0

    :goto_51
    if-ge v5, v2, :cond_5d

    aget-object v6, v1, v5

    .line 816
    .local v6, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    iget-wide v8, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    invoke-virtual {v6, v8, v9}, Lcom/google/android/exoplayer2/source/SampleQueue;->setStartTimeUs(J)V

    .line 815
    .end local v6    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 818
    :cond_5d
    iput-wide v3, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 820
    :cond_5f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v1

    iput v1, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 821
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v2, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v3, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataType:I

    .line 823
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 822
    invoke-virtual {v1, v0, v7, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v1

    .line 824
    .local v1, "elapsedRealtimeMs":J
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v3

    .line 825
    .local v3, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    iget-object v4, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    new-instance v5, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    .line 826
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v9

    move-object v8, v5

    move-object v11, v3

    move-wide v12, v1

    invoke-direct/range {v8 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 832
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v15

    iget-wide v8, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 825
    move-wide/from16 v17, v8

    move-object v8, v4

    move-object v9, v5

    invoke-virtual/range {v8 .. v18}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 834
    return-void
.end method

.method private suppressRead()Z
    .registers 2

    .line 551
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 5
    .param p1, "playbackPositionUs"    # J

    .line 355
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 356
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_19

    goto :goto_2c

    .line 361
    :cond_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    move-result v0

    .line 362
    .local v0, "continuedLoading":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 363
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->startLoading()V

    .line 364
    const/4 v0, 0x1

    .line 366
    :cond_2b
    return v0

    .line 359
    .end local v0    # "continuedLoading":Z
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    return v0
.end method

.method public discardBuffer(JZ)V
    .registers 9
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 337
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 338
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 339
    return-void

    .line 341
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    .line 342
    .local v0, "trackEnabledStates":[Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v1

    .line 343
    .local v1, "trackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_20

    .line 344
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 346
    .end local v2    # "i":I
    :cond_20
    return-void
.end method

.method public endTracks()V
    .registers 3

    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    .line 695
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 696
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 13
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 460
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 461
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 463
    const-wide/16 v0, 0x0

    return-wide v0

    .line 465
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    .line 466
    .local v0, "seekPoints":Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->second:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v7, v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    move-object v2, p3

    move-wide v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/SeekParameters;->resolveSeekPositionUs(JJJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public getBufferedPositionUs()J
    .registers 9

    .line 391
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 392
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_66

    iget v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_e

    goto :goto_66

    .line 394
    :cond_e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 395
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-wide v0

    .line 397
    :cond_17
    const-wide v3, 0x7fffffffffffffffL

    .line 398
    .local v3, "largestQueuedTimestampUs":J
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    if-eqz v0, :cond_4f

    .line 400
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    .line 401
    .local v0, "trackCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    if-ge v5, v0, :cond_4f

    .line 402
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_4c

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_4c

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v6, v6, v5

    .line 404
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued()Z

    move-result v6

    if-nez v6, :cond_4c

    .line 405
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v6, v6, v5

    .line 406
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 401
    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 410
    .end local v0    # "trackCount":I
    .end local v5    # "i":I
    :cond_4f
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_5d

    .line 411
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs(Z)J

    move-result-wide v3

    .line 413
    :cond_5d
    cmp-long v0, v3, v1

    if-nez v0, :cond_64

    .line 414
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    goto :goto_65

    .line 415
    :cond_64
    move-wide v0, v3

    .line 413
    :goto_65
    return-wide v0

    .line 393
    .end local v3    # "largestQueuedTimestampUs":J
    :cond_66
    :goto_66
    return-wide v1
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 376
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/MediaPeriod$-CC;->$default$getStreamKeys(Lcom/google/android/exoplayer2/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 255
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method icyTrack()Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .registers 4

    .line 706
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepareTrackOutput(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method isReady(I)Z
    .registers 4
    .param p1, "track"    # I

    .line 473
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v0, v0, p1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method synthetic lambda$new$0$com-google-android-exoplayer2-source-ProgressiveMediaPeriod()V
    .registers 2

    .line 203
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->released:Z

    if-nez v0, :cond_f

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 206
    :cond_f
    return-void
.end method

.method synthetic lambda$onLengthKnown$2$com-google-android-exoplayer2-source-ProgressiveMediaPeriod()V
    .registers 2

    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isLengthKnown:Z

    return-void
.end method

.method synthetic lambda$seekMap$1$com-google-android-exoplayer2-source-ProgressiveMediaPeriod(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .registers 2
    .param p1, "seekMap"    # Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 700
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->setSeekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method maybeThrowError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataType:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError(I)V

    .line 483
    return-void
.end method

.method maybeThrowError(I)V
    .registers 3
    .param p1, "sampleQueueIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->maybeThrowError()V

    .line 478
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeThrowError()V

    .line 479
    return-void
.end method

.method public maybeThrowPrepareError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeThrowError()V

    .line 247
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_c

    goto :goto_14

    .line 248
    :cond_c
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 251
    :cond_14
    :goto_14
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;JJZ)V
    .registers 22
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .line 596
    move-object v0, p0

    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    move-result-object v1

    .line 597
    .local v1, "dataSource":Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    new-instance v14, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    .line 599
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v3

    .line 600
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v5

    .line 601
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v6

    .line 602
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 605
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v3, v14

    .line 606
    .local v3, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 607
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 614
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 607
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 616
    if-nez p6, :cond_5c

    .line 617
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_43
    if-ge v5, v4, :cond_4d

    aget-object v6, v2, v5

    .line 618
    .local v6, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 617
    .end local v6    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 620
    :cond_4d
    iget v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-lez v2, :cond_5c

    .line 621
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 624
    :cond_5c
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .registers 14

    .line 79
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->onLoadCanceled(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V
    .registers 24
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .line 559
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-nez v6, :cond_31

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    if-eqz v1, :cond_31

    .line 560
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v1

    .line 561
    .local v1, "isSeekable":Z
    nop

    .line 562
    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs(Z)J

    move-result-wide v2

    .line 563
    .local v2, "largestQueuedTimestampUs":J
    nop

    .line 564
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v2, v6

    if-nez v4, :cond_25

    .line 565
    const-wide/16 v6, 0x0

    goto :goto_28

    .line 566
    :cond_25
    const-wide/16 v6, 0x2710

    add-long/2addr v6, v2

    :goto_28
    iput-wide v6, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 567
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isLive:Z

    invoke-interface {v4, v6, v7, v1, v8}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;->onSourceInfoRefreshed(JZZ)V

    .line 569
    .end local v1    # "isSeekable":Z
    .end local v2    # "largestQueuedTimestampUs":J
    :cond_31
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    move-result-object v1

    .line 570
    .local v1, "dataSource":Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    new-instance v2, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    .line 572
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v7

    .line 573
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v9

    .line 574
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v10

    .line 575
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v11

    .line 578
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v16

    move-object v6, v2

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v6 .. v17}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v7, v2

    .line 579
    .local v7, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 580
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 587
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v13

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 580
    move-wide v15, v2

    invoke-virtual/range {v6 .. v16}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 589
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 590
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 591
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .registers 12

    .line 79
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->onLoadCompleted(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 36
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I

    .line 633
    move-object/from16 v0, p0

    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    move-result-object v1

    .line 634
    .local v1, "dataSource":Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    new-instance v14, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    .line 636
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v3

    .line 637
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v5

    .line 638
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v6

    .line 639
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 642
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 643
    .local v2, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    new-instance v13, Lcom/google/android/exoplayer2/source/MediaLoadData;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 650
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 651
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v11

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 653
    .local v3, "mediaLoadData":Lcom/google/android/exoplayer2/source/MediaLoadData;
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    new-instance v5, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct {v5, v2, v3, v6, v7}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 654
    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v4

    .line 656
    .local v4, "retryDelayMs":J
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    cmp-long v11, v4, v8

    if-nez v11, :cond_5b

    .line 657
    sget-object v8, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-object/from16 v11, p1

    .local v8, "loadErrorAction":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    goto :goto_76

    .line 659
    .end local v8    # "loadErrorAction":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    :cond_5b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v8

    .line 660
    .local v8, "extractedSamplesCount":I
    iget v9, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v8, v9, :cond_65

    const/4 v9, 0x1

    goto :goto_66

    :cond_65
    const/4 v9, 0x0

    .line 662
    .local v9, "madeProgress":Z
    :goto_66
    move-object/from16 v11, p1

    invoke-direct {v0, v11, v8}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->configureRetry(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;I)Z

    move-result v12

    if-eqz v12, :cond_73

    .line 663
    invoke-static {v9, v4, v5}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v12

    goto :goto_75

    .line 664
    :cond_73
    sget-object v12, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    :goto_75
    move-object v8, v12

    .line 667
    .end local v9    # "madeProgress":Z
    .local v8, "loadErrorAction":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    :goto_76
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v9

    xor-int/2addr v9, v10

    .line 668
    .local v9, "wasCanceled":Z
    iget-object v15, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 675
    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v22

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 668
    move-object/from16 v16, v2

    move-wide/from16 v24, v12

    move-object/from16 v26, p6

    move/from16 v27, v9

    invoke-virtual/range {v15 .. v27}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 679
    if-eqz v9, :cond_a3

    .line 680
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v12

    invoke-interface {v10, v12, v13}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 682
    :cond_a3
    return-object v8
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 16

    .line 79
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->onLoadError(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoaderReleased()V
    .registers 5

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 232
    .local v3, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->release()V

    .line 231
    .end local v3    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 234
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->release()V

    .line 235
    return-void
.end method

.method public onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 713
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 714
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .registers 5
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 239
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 241
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->startLoading()V

    .line 242
    return-void
.end method

.method readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .registers 8
    .param p1, "sampleQueueIndex"    # I
    .param p2, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p3, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p4, "readFlags"    # I

    .line 490
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_8

    .line 491
    return v1

    .line 493
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeNotifyDownstreamFormat(I)V

    .line 494
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 495
    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result v0

    .line 496
    .local v0, "result":I
    if-ne v0, v1, :cond_1a

    .line 497
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeStartDeferredRetry(I)V

    .line 499
    :cond_1a
    return v0
.end method

.method public readDiscontinuity()J
    .registers 3

    .line 381
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_10

    .line 382
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v0, v1, :cond_16

    .line 383
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 384
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    return-wide v0

    .line 386
    :cond_16
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 3
    .param p1, "positionUs"    # J

    .line 351
    return-void
.end method

.method public release()V
    .registers 5

    .line 216
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_12

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 220
    .local v3, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->preRelease()V

    .line 219
    .end local v3    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 223
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 225
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->released:Z

    .line 227
    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .registers 4
    .param p1, "seekMap"    # Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 700
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 701
    return-void
.end method

.method public seekToUs(J)J
    .registers 8
    .param p1, "positionUs"    # J

    .line 420
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    .line 423
    .local v0, "trackIsAudioVideoFlags":[Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v1

    if-eqz v1, :cond_11

    move-wide v1, p1

    goto :goto_13

    :cond_11
    const-wide/16 v1, 0x0

    :goto_13
    move-wide p1, v1

    .line 425
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 426
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 427
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 429
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 430
    return-wide p1

    .line 434
    :cond_22
    iget v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2e

    .line 435
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekInsideBufferUs([ZJ)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 436
    return-wide p1

    .line 440
    :cond_2e
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 441
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 442
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 443
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 445
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    :goto_3f
    if-ge v1, v3, :cond_49

    aget-object v4, v2, v1

    .line 446
    .local v4, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 445
    .end local v4    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 448
    :cond_49
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_61

    .line 450
    :cond_4f
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->clearFatalError()V

    .line 451
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    :goto_57
    if-ge v1, v3, :cond_61

    aget-object v4, v2, v1

    .line 452
    .restart local v4    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 451
    .end local v4    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 455
    :cond_61
    :goto_61
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .registers 23
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 267
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 268
    .local v5, "tracks":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    .line 269
    .local v6, "trackEnabledStates":[Z
    iget v7, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 271
    .local v7, "oldEnabledTrackCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_16
    array-length v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ge v8, v9, :cond_41

    .line 272
    aget-object v9, v2, v8

    if-eqz v9, :cond_3e

    aget-object v9, v1, v8

    if-eqz v9, :cond_27

    aget-boolean v9, p2, v8

    if-nez v9, :cond_3e

    .line 273
    :cond_27
    aget-object v9, v2, v8

    check-cast v9, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;

    # getter for: Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I
    invoke-static {v9}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->access$000(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;)I

    move-result v9

    .line 274
    .local v9, "track":I
    aget-boolean v12, v6, v9

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 275
    iget v12, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    sub-int/2addr v12, v11

    iput v12, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 276
    aput-boolean v10, v6, v9

    .line 277
    const/4 v10, 0x0

    aput-object v10, v2, v8

    .line 271
    .end local v9    # "track":I
    :cond_3e
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 282
    .end local v8    # "i":I
    :cond_41
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz v8, :cond_48

    if-nez v7, :cond_50

    goto :goto_4e

    :cond_48
    const-wide/16 v8, 0x0

    cmp-long v12, v3, v8

    if-eqz v12, :cond_50

    :goto_4e
    const/4 v8, 0x1

    goto :goto_51

    :cond_50
    const/4 v8, 0x0

    .line 284
    .local v8, "seekRequired":Z
    :goto_51
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_52
    array-length v12, v1

    if-ge v9, v12, :cond_af

    .line 285
    aget-object v12, v2, v9

    if-nez v12, :cond_ac

    aget-object v12, v1, v9

    if-eqz v12, :cond_ac

    .line 286
    aget-object v12, v1, v9

    .line 287
    .local v12, "selection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    invoke-interface {v12}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v13

    if-ne v13, v11, :cond_67

    const/4 v13, 0x1

    goto :goto_68

    :cond_67
    const/4 v13, 0x0

    :goto_68
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 288
    invoke-interface {v12, v10}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v13

    if-nez v13, :cond_73

    const/4 v13, 0x1

    goto :goto_74

    :cond_73
    const/4 v13, 0x0

    :goto_74
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 289
    invoke-interface {v12}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v13

    .line 290
    .local v13, "track":I
    aget-boolean v14, v6, v13

    xor-int/2addr v14, v11

    invoke-static {v14}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 291
    iget v14, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    add-int/2addr v14, v11

    iput v14, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 292
    aput-boolean v11, v6, v13

    .line 293
    new-instance v14, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;

    invoke-direct {v14, v0, v13}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;-><init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;I)V

    aput-object v14, v2, v9

    .line 294
    aput-boolean v11, p4, v9

    .line 296
    if-nez v8, :cond_ac

    .line 297
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v14, v14, v13

    .line 302
    .local v14, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    nop

    .line 303
    invoke-virtual {v14, v3, v4, v11}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    move-result v15

    if-nez v15, :cond_aa

    .line 304
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v15

    if-eqz v15, :cond_aa

    const/4 v15, 0x1

    goto :goto_ab

    :cond_aa
    const/4 v15, 0x0

    :goto_ab
    move v8, v15

    .line 284
    .end local v12    # "selection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v13    # "track":I
    .end local v14    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    :cond_ac
    add-int/lit8 v9, v9, 0x1

    goto :goto_52

    .line 308
    .end local v9    # "i":I
    :cond_af
    iget v9, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez v9, :cond_df

    .line 309
    iput-boolean v10, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 310
    iput-boolean v10, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 311
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v9

    if-eqz v9, :cond_d2

    .line 313
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v12, v9

    :goto_c2
    if-ge v10, v12, :cond_cc

    aget-object v13, v9, v10

    .line 314
    .local v13, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 313
    .end local v13    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v10, v10, 0x1

    goto :goto_c2

    .line 316
    :cond_cc
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_f2

    .line 318
    :cond_d2
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v12, v9

    :goto_d5
    if-ge v10, v12, :cond_f2

    aget-object v13, v9, v10

    .line 319
    .restart local v13    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 318
    .end local v13    # "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    add-int/lit8 v10, v10, 0x1

    goto :goto_d5

    .line 322
    :cond_df
    if-eqz v8, :cond_f2

    .line 323
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekToUs(J)J

    move-result-wide v3

    .line 325
    .end local p5    # "positionUs":J
    .local v3, "positionUs":J
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_e6
    array-length v10, v2

    if-ge v9, v10, :cond_f2

    .line 326
    aget-object v10, v2, v9

    if-eqz v10, :cond_ef

    .line 327
    aput-boolean v11, p4, v9

    .line 325
    :cond_ef
    add-int/lit8 v9, v9, 0x1

    goto :goto_e6

    .line 331
    .end local v9    # "i":I
    :cond_f2
    :goto_f2
    iput-boolean v11, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seenFirstTrackSelection:Z

    .line 332
    return-wide v3
.end method

.method skipData(IJ)I
    .registers 6
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .line 503
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 504
    const/4 v0, 0x0

    return v0

    .line 506
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeNotifyDownstreamFormat(I)V

    .line 507
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v0, v0, p1

    .line 508
    .local v0, "sampleQueue":Lcom/google/android/exoplayer2/source/SampleQueue;
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getSkipCount(JZ)I

    move-result v1

    .line 509
    .local v1, "skipCount":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->skip(I)V

    .line 510
    if-nez v1, :cond_1d

    .line 511
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeStartDeferredRetry(I)V

    .line 513
    :cond_1d
    return v1
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .registers 5
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 689
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepareTrackOutput(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    return-object v0
.end method
