.class final Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;,
        Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INITIAL_SAMPLE_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "SingleSampleMediaPeriod"


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final durationUs:J

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final format:Lcom/google/android/exoplayer2/Format;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field loadingFinished:Z

.field sampleData:[B

.field sampleSize:I

.field private final sampleStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Z)V
    .registers 15
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "transferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;
    .param p4, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "durationUs"    # J
    .param p7, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p8, "eventDispatcher"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .param p9, "treatLoadErrorsAsEndOfStream"    # Z

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 91
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 92
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 93
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->format:Lcom/google/android/exoplayer2/Format;

    .line 94
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    .line 95
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 96
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 97
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->treatLoadErrorsAsEndOfStream:Z

    .line 98
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v1, v1, [Lcom/google/android/exoplayer2/Format;

    const/4 v4, 0x0

    aput-object p4, v1, v4

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "SingleSampleMediaPeriod"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 101
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    return-object v0
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 22
    .param p1, "positionUs"    # J

    .line 156
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez v1, :cond_5b

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_5b

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_5b

    .line 159
    :cond_17
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    .line 160
    .local v1, "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_24

    .line 161
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 163
    :cond_24
    new-instance v2, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 164
    .local v2, "loadable":Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 168
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v4

    .line 165
    invoke-virtual {v3, v2, v0, v4}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v3

    .line 169
    .local v3, "elapsedRealtimeMs":J
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    new-instance v13, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v7, v2, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->loadTaskId:J

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object v6, v13

    move-wide v10, v3

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    const/4 v8, 0x1

    const/4 v9, -0x1

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    move-wide/from16 v17, v6

    move-object v6, v12

    move-object v7, v13

    move-object v12, v14

    move-wide v13, v15

    move-wide/from16 v15, v17

    invoke-virtual/range {v6 .. v16}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 178
    return v5

    .line 157
    .end local v1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local v2    # "loadable":Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;
    .end local v3    # "elapsedRealtimeMs":J
    :cond_5b
    :goto_5b
    const/4 v1, 0x0

    return v1
.end method

.method public discardBuffer(JZ)V
    .registers 4
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 147
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 4
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 211
    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 198
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0x0

    :goto_9
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 193
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_10

    :cond_d
    const-wide/16 v0, 0x0

    goto :goto_12

    :cond_10
    :goto_10
    const-wide/high16 v0, -0x8000000000000000L

    :goto_12
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

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 1

    .line 115
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJZ)V
    .registers 23
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    # getter for: Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    move-result-object v2

    .line 248
    .local v2, "dataSource":Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    new-instance v15, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 252
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v7

    .line 253
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 256
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v4, v15

    .line 257
    .local v4, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->loadTaskId:J

    invoke-interface {v3, v5, v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 258
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 267
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .registers 14

    .line 54
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->onLoadCanceled(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJ)V
    .registers 22
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .line 219
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    # getter for: Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v2

    long-to-int v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleSize:I

    .line 220
    # getter for: Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->access$200(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleData:[B

    .line 221
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    .line 222
    # getter for: Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    move-result-object v2

    .line 223
    .local v2, "dataSource":Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    new-instance v15, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 227
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v7

    .line 228
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v8

    iget v3, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleSize:I

    int-to-long v13, v3

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v4, v15

    .line 232
    .local v4, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->loadTaskId:J

    invoke-interface {v3, v5, v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 233
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 v5, 0x1

    const/4 v6, -0x1

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 242
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .registers 12

    .line 54
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->onLoadCompleted(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 34
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p6

    move/from16 v14, p7

    # getter for: Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    move-result-object v16

    .line 277
    .local v16, "dataSource":Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    new-instance v17, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 281
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v6

    .line 282
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 285
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v12

    move-object/from16 v2, v17

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object/from16 v13, v17

    .line 286
    .local v13, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    new-instance v12, Lcom/google/android/exoplayer2/source/MediaLoadData;

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    .line 294
    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v10

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object v11, v12

    .line 295
    .local v11, "mediaLoadData":Lcom/google/android/exoplayer2/source/MediaLoadData;
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    invoke-direct {v3, v13, v11, v15, v14}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 296
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v9

    .line 298
    .local v9, "retryDelay":J
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v9, v4

    if-eqz v6, :cond_5f

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 301
    invoke-interface {v6, v3}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v6

    if-lt v14, v6, :cond_5d

    goto :goto_5f

    :cond_5d
    const/4 v6, 0x0

    goto :goto_60

    :cond_5f
    :goto_5f
    const/4 v6, 0x1

    :goto_60
    move/from16 v17, v6

    .line 304
    .local v17, "errorCanBePropagated":Z
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->treatLoadErrorsAsEndOfStream:Z

    if-eqz v6, :cond_76

    if-eqz v17, :cond_76

    .line 305
    const-string v2, "SingleSampleMediaPeriod"

    const-string v4, "Loading failed, treating as end-of-stream."

    invoke-static {v2, v4, v15}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    .line 307
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-object/from16 v18, v2

    .local v2, "action":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    goto :goto_83

    .line 310
    .end local v2    # "action":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    :cond_76
    cmp-long v6, v9, v4

    if-eqz v6, :cond_7f

    .line 311
    invoke-static {v2, v9, v10}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v2

    goto :goto_81

    .line 312
    :cond_7f
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    :goto_81
    move-object/from16 v18, v2

    .line 314
    .local v18, "action":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    :goto_83
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v2

    xor-int/2addr v2, v3

    move/from16 v19, v2

    .line 315
    .local v19, "wasCanceled":Z
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 v4, 0x1

    const/4 v5, -0x1

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v20, 0x0

    move-wide/from16 v22, v9

    .end local v9    # "retryDelay":J
    .local v22, "retryDelay":J
    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    move-object v3, v13

    move-wide/from16 v24, v9

    move-wide/from16 v9, v20

    move-object/from16 v20, v11

    .end local v11    # "mediaLoadData":Lcom/google/android/exoplayer2/source/MediaLoadData;
    .local v20, "mediaLoadData":Lcom/google/android/exoplayer2/source/MediaLoadData;
    move-wide/from16 v11, v24

    move-object/from16 v21, v13

    .end local v13    # "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .local v21, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    move-object/from16 v13, p6

    move/from16 v14, v19

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 326
    if-eqz v19, :cond_b3

    .line 327
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 329
    :cond_b3
    return-object v18
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 16

    .line 54
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->onLoadError(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .registers 4
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 109
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 110
    return-void
.end method

.method public readDiscontinuity()J
    .registers 3

    .line 188
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 3
    .param p1, "positionUs"    # J

    .line 152
    return-void
.end method

.method public release()V
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    .line 105
    return-void
.end method

.method public seekToUs(J)J
    .registers 5
    .param p1, "positionUs"    # J

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 204
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->reset()V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    .end local v0    # "i":I
    :cond_17
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .registers 11
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_34

    .line 130
    aget-object v1, p3, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    aget-object v1, p1, v0

    if-eqz v1, :cond_11

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1a

    .line 131
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    aput-object v2, p3, v0

    .line 134
    :cond_1a
    aget-object v1, p3, v0

    if-nez v1, :cond_31

    aget-object v1, p1, v0

    if-eqz v1, :cond_31

    .line 135
    new-instance v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;-><init>(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$1;)V

    .line 136
    .local v1, "stream":Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    aput-object v1, p3, v0

    .line 138
    const/4 v2, 0x1

    aput-boolean v2, p4, v0

    .line 129
    .end local v1    # "stream":Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "i":I
    :cond_34
    return-wide p5
.end method
