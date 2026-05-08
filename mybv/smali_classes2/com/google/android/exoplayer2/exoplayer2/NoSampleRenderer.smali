.class public abstract Lcom/google/android/exoplayer2/NoSampleRenderer;
.super Ljava/lang/Object;
.source "NoSampleRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Renderer;
.implements Lcom/google/android/exoplayer2/RendererCapabilities;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private configuration:Lcom/google/android/exoplayer2/RendererConfiguration;

.field private index:I

.field private state:I

.field private stream:Lcom/google/android/exoplayer2/source/SampleStream;

.field private streamIsFinal:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clearListener()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->$default$clearListener(Lcom/google/android/exoplayer2/RendererCapabilities;)V

    return-void
.end method

.method public final disable()V
    .registers 4

    .line 149
    iget v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 150
    iput v1, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 152
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    .line 153
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onDisabled()V

    .line 154
    return-void
.end method

.method public final enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZZJJ)V
    .registers 22
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

    .line 81
    move-object v7, p0

    move/from16 v8, p6

    iget v0, v7, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 82
    move-object v9, p1

    iput-object v9, v7, Lcom/google/android/exoplayer2/NoSampleRenderer;->configuration:Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 83
    iput v1, v7, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    .line 84
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onEnabled(Z)V

    .line 85
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/NoSampleRenderer;->replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JJ)V

    .line 86
    move-wide v0, p4

    invoke-virtual {p0, p4, p5, v8}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onPositionReset(JZ)V

    .line 87
    return-void
.end method

.method public final getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;
    .registers 1

    .line 51
    return-object p0
.end method

.method protected final getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->configuration:Lcom/google/android/exoplayer2/RendererConfiguration;

    return-object v0
.end method

.method protected final getIndex()I
    .registers 2

    .line 285
    iget v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->index:I

    return v0
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;
    .registers 2

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadingPositionUs()J
    .registers 3

    .line 118
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final getState()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    return v0
.end method

.method public final getStream()Lcom/google/android/exoplayer2/source/SampleStream;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    return-object v0
.end method

.method public final getTrackType()I
    .registers 2

    .line 46
    const/4 v0, -0x2

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

    .line 190
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .registers 2

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public final init(ILcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 56
    iput p1, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->index:I

    .line 57
    return-void
.end method

.method public final isCurrentStreamFinal()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    return v0
.end method

.method public isEnded()Z
    .registers 2

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public final maybeThrowStreamError()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    return-void
.end method

.method protected onDisabled()V
    .registers 1

    .line 261
    return-void
.end method

.method protected onEnabled(Z)V
    .registers 2
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 204
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

    .line 232
    return-void
.end method

.method protected onRendererOffsetChanged(J)V
    .registers 3
    .param p1, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 217
    return-void
.end method

.method protected onReset()V
    .registers 1

    .line 270
    return-void
.end method

.method protected onStarted()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 243
    return-void
.end method

.method protected onStopped()V
    .registers 1

    .line 252
    return-void
.end method

.method public synthetic release()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/Renderer$-CC;->$default$release(Lcom/google/android/exoplayer2/Renderer;)V

    return-void
.end method

.method public final replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JJ)V
    .registers 8
    .param p1, "formats"    # [Lcom/google/android/exoplayer2/Format;
    .param p2, "stream"    # Lcom/google/android/exoplayer2/source/SampleStream;
    .param p3, "startPositionUs"    # J
    .param p5, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 101
    iput-object p2, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 102
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onRendererOffsetChanged(J)V

    .line 103
    return-void
.end method

.method public final reset()V
    .registers 2

    .line 158
    iget v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onReset()V

    .line 160
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

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    .line 137
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onPositionReset(JZ)V

    .line 138
    return-void
.end method

.method public final setCurrentStreamFinal()V
    .registers 2

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    .line 124
    return-void
.end method

.method public synthetic setListener(Lcom/google/android/exoplayer2/RendererCapabilities$Listener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->$default$setListener(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/RendererCapabilities$Listener;)V

    return-void
.end method

.method public synthetic setPlaybackSpeed(FF)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Renderer$-CC;->$default$setPlaybackSpeed(Lcom/google/android/exoplayer2/Renderer;FF)V

    return-void
.end method

.method public final start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 91
    iget v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    .line 93
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onStarted()V

    .line 94
    return-void
.end method

.method public final stop()V
    .registers 4

    .line 142
    iget v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 143
    iput v2, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    .line 144
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onStopped()V

    .line 145
    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .registers 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v0

    return v0
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    return v0
.end method
