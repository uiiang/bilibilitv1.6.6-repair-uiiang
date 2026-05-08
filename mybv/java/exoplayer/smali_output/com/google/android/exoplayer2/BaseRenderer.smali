.class public abstract Lcom/google/android/exoplayer2/BaseRenderer;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Renderer;
.implements Lcom/google/android/exoplayer2/RendererCapabilities;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private configuration:Lcom/google/android/exoplayer2/RendererConfiguration;

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private index:I

.field private lastResetPositionUs:J

.field private final lock:Ljava/lang/Object;

.field private playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

.field private readingPositionUs:J

.field private rendererCapabilitiesListener:Lcom/google/android/exoplayer2/RendererCapabilities$Listener;

.field private state:I

.field private stream:Lcom/google/android/exoplayer2/source/SampleStream;

.field private streamFormats:[Lcom/google/android/exoplayer2/Format;

.field private streamIsFinal:Z

.field private streamOffsetUs:J

.field private throwRendererExceptionIsExecuting:Z

.field private final trackType:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "trackType"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->lock:Ljava/lang/Object;

    .line 71
    iput p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->trackType:I

    .line 72
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 73
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    .line 74
    return-void
.end method

.method private resetPosition(JZ)V
    .registers 5
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    .line 181
    iput-wide p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->lastResetPositionUs:J

    .line 182
    iput-wide p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/BaseRenderer;->onPositionReset(JZ)V

    .line 184
    return-void
.end method


# virtual methods
.method public final clearListener()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->rendererCapabilitiesListener:Lcom/google/android/exoplayer2/RendererCapabilities$Listener;

    .line 235
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected final createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 5
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "errorCode"    # I

    .line 413
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method protected final createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 15
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "isRecoverable"    # Z
    .param p4, "errorCode"    # I

    .line 432
    const/4 v0, 0x4

    .line 433
    .local v0, "formatSupport":I
    if-eqz p2, :cond_1d

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    if-nez v1, :cond_1d

    .line 435
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    .line 437
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->getFormatSupport(I)I

    move-result v2
    :try_end_13
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_b .. :try_end_13} :catch_1b
    .catchall {:try_start_b .. :try_end_13} :catchall_17

    move v0, v2

    .line 441
    :goto_14
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    .line 442
    goto :goto_1d

    .line 441
    :catchall_17
    move-exception v2

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    .line 442
    throw v2

    .line 438
    :catch_1b
    move-exception v2

    goto :goto_14

    .line 444
    :cond_1d
    :goto_1d
    nop

    .line 445
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getIndex()I

    move-result v5

    .line 444
    move-object v3, p1

    move-object v6, p2

    move v7, v0

    move v8, p3

    move v9, p4

    invoke-static/range {v3 .. v9}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;IZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    return-object v1
.end method

.method public final disable()V
    .registers 4

    .line 195
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/FormatHolder;->clear()V

    .line 197
    iput v1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 199
    iput-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamFormats:[Lcom/google/android/exoplayer2/Format;

    .line 200
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    .line 201
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->onDisabled()V

    .line 202
    return-void
.end method

.method public final enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZZJJ)V
    .registers 23
    .param p1, "configuration"    # Lcom/google/android/exoplayer2/RendererConfiguration;
    .param p2, "formats"    # [Lcom/google/android/exoplayer2/Format;
    .param p3, "stream"    # Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "positionUs"    # J
    .param p6, "joining"    # Z
    .param p7, "mayRenderStartOfStream"    # Z
    .param p8, "startPositionUs"    # J
    .param p10, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 114
    move-object v7, p0

    move/from16 v8, p6

    iget v0, v7, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 115
    move-object v9, p1

    iput-object v9, v7, Lcom/google/android/exoplayer2/BaseRenderer;->configuration:Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 116
    iput v1, v7, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    .line 117
    move/from16 v10, p7

    invoke-virtual {p0, v8, v10}, Lcom/google/android/exoplayer2/BaseRenderer;->onEnabled(ZZ)V

    .line 118
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/BaseRenderer;->replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JJ)V

    .line 119
    move-wide v0, p4

    invoke-direct {p0, v0, v1, v8}, Lcom/google/android/exoplayer2/BaseRenderer;->resetPosition(JZ)V

    .line 120
    return-void
.end method

.method public final getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;
    .registers 1

    .line 83
    return-object p0
.end method

.method protected final getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->configuration:Lcom/google/android/exoplayer2/RendererConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/RendererConfiguration;

    return-object v0
.end method

.method protected final getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/FormatHolder;->clear()V

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    return-object v0
.end method

.method protected final getIndex()I
    .registers 2

    .line 388
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->index:I

    return v0
.end method

.method protected final getLastResetPositionUs()J
    .registers 3

    .line 353
    iget-wide v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->lastResetPositionUs:J

    return-wide v0
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;
    .registers 2

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlayerId;

    return-object v0
.end method

.method public final getReadingPositionUs()J
    .registers 3

    .line 156
    iget-wide v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    return-wide v0
.end method

.method public final getState()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    return v0
.end method

.method public final getStream()Lcom/google/android/exoplayer2/source/SampleStream;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    return-object v0
.end method

.method protected final getStreamFormats()[Lcom/google/android/exoplayer2/Format;
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamFormats:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public final getTrackType()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->trackType:I

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 3
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 244
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .registers 6

    .line 151
    iget-wide v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final init(ILcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 88
    iput p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->index:I

    .line 89
    iput-object p2, p0, Lcom/google/android/exoplayer2/BaseRenderer;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 90
    return-void
.end method

.method public final isCurrentStreamFinal()Z
    .registers 2

    .line 166
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    return v0
.end method

.method protected final isSourceReady()Z
    .registers 2

    .line 512
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    goto :goto_15

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->isReady()Z

    move-result v0

    :goto_15
    return v0
.end method

.method public final maybeThrowStreamError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->maybeThrowError()V

    .line 172
    return-void
.end method

.method protected onDisabled()V
    .registers 1

    .line 326
    return-void
.end method

.method protected onEnabled(ZZ)V
    .registers 3
    .param p1, "joining"    # Z
    .param p2, "mayRenderStartOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 261
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 4
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 297
    return-void
.end method

.method protected onRelease()V
    .registers 1

    .line 344
    return-void
.end method

.method protected final onRendererCapabilitiesChanged()V
    .registers 3

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->rendererCapabilitiesListener:Lcom/google/android/exoplayer2/RendererCapabilities$Listener;

    .line 520
    .local v1, "listener":Lcom/google/android/exoplayer2/RendererCapabilities$Listener;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 521
    if-eqz v1, :cond_b

    .line 522
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/RendererCapabilities$Listener;->onRendererCapabilitiesChanged(Lcom/google/android/exoplayer2/Renderer;)V

    .line 524
    :cond_b
    return-void

    .line 520
    .end local v1    # "listener":Lcom/google/android/exoplayer2/RendererCapabilities$Listener;
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method protected onReset()V
    .registers 1

    .line 335
    return-void
.end method

.method protected onStarted()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 308
    return-void
.end method

.method protected onStopped()V
    .registers 1

    .line 317
    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .registers 6
    .param p1, "formats"    # [Lcom/google/android/exoplayer2/Format;
    .param p2, "startPositionUs"    # J
    .param p4, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 279
    return-void
.end method

.method protected final readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .registers 11
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "readFlags"    # I

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleStream;->readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v0

    .line 470
    .local v0, "result":I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_32

    .line 471
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 472
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    .line 473
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    if-eqz v2, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, -0x3

    :goto_1f
    return v1

    .line 475
    :cond_20
    iget-wide v1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 476
    iget-wide v1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    iget-wide v3, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    goto :goto_5c

    .line 477
    :cond_32
    const/4 v1, -0x5

    if-ne v0, v1, :cond_5c

    .line 478
    iget-object v1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Format;

    .line 479
    .local v1, "format":Lcom/google/android/exoplayer2/Format;
    iget-wide v2, v1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5c

    .line 480
    nop

    .line 482
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget-wide v3, v1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v3, v5

    .line 483
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 484
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 485
    iput-object v1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 488
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_5c
    :goto_5c
    return v0
.end method

.method public final release()V
    .registers 2

    .line 213
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->onRelease()V

    .line 215
    return-void
.end method

.method public final replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JJ)V
    .registers 13
    .param p1, "formats"    # [Lcom/google/android/exoplayer2/Format;
    .param p2, "stream"    # Lcom/google/android/exoplayer2/source/SampleStream;
    .param p3, "startPositionUs"    # J
    .param p5, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 134
    iput-object p2, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 135
    iget-wide v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    .line 136
    iput-wide p3, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    .line 138
    :cond_13
    iput-object p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamFormats:[Lcom/google/android/exoplayer2/Format;

    .line 139
    iput-wide p5, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamOffsetUs:J

    .line 140
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/BaseRenderer;->onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V

    .line 141
    return-void
.end method

.method public final reset()V
    .registers 2

    .line 206
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/FormatHolder;->clear()V

    .line 208
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->onReset()V

    .line 209
    return-void
.end method

.method public final resetPosition(J)V
    .registers 4
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/BaseRenderer;->resetPosition(JZ)V

    .line 177
    return-void
.end method

.method public final setCurrentStreamFinal()V
    .registers 2

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    .line 162
    return-void
.end method

.method public final setListener(Lcom/google/android/exoplayer2/RendererCapabilities$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/RendererCapabilities$Listener;

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->rendererCapabilitiesListener:Lcom/google/android/exoplayer2/RendererCapabilities$Listener;

    .line 228
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public synthetic setPlaybackSpeed(FF)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Renderer$-CC;->$default$setPlaybackSpeed(Lcom/google/android/exoplayer2/Renderer;FF)V

    return-void
.end method

.method protected skipSource(J)I
    .registers 6
    .param p1, "positionUs"    # J

    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/SampleStream;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamOffsetUs:J

    sub-long v1, p1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleStream;->skipData(J)I

    move-result v0

    return v0
.end method

.method public final start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 124
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    .line 126
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->onStarted()V

    .line 127
    return-void
.end method

.method public final stop()V
    .registers 4

    .line 188
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 189
    iput v2, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    .line 190
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->onStopped()V

    .line 191
    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    return v0
.end method
