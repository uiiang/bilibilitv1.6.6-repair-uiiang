.class public final Lcom/google/android/exoplayer2/text/TextRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MSG_UPDATE_OUTPUT:I = 0x0

.field private static final REPLACEMENT_STATE_NONE:I = 0x0

.field private static final REPLACEMENT_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REPLACEMENT_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TextRenderer"


# instance fields
.field private decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

.field private final decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

.field private decoderReplacementState:I

.field private finalStreamEndPositionUs:J

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private inputStreamEnded:Z

.field private lastRendererPositionUs:J

.field private nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

.field private nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

.field private nextSubtitleEventIndex:I

.field private final output:Lcom/google/android/exoplayer2/text/TextOutput;

.field private final outputHandler:Landroid/os/Handler;

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private streamFormat:Lcom/google/android/exoplayer2/Format;

.field private subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

.field private waitingForKeyFrame:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;)V
    .registers 4
    .param p1, "output"    # Lcom/google/android/exoplayer2/text/TextOutput;
    .param p2, "outputLooper"    # Landroid/os/Looper;

    .line 116
    sget-object v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->DEFAULT:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/text/TextRenderer;-><init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;)V
    .registers 6
    .param p1, "output"    # Lcom/google/android/exoplayer2/text/TextOutput;
    .param p2, "outputLooper"    # Landroid/os/Looper;
    .param p3, "decoderFactory"    # Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    .line 130
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 131
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/TextOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->output:Lcom/google/android/exoplayer2/text/TextOutput;

    .line 132
    nop

    .line 133
    if-nez p2, :cond_11

    const/4 v0, 0x0

    goto :goto_15

    :cond_11
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    :goto_15
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    .line 134
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    .line 135
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 136
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 137
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamOffsetUs:J

    .line 138
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->lastRendererPositionUs:J

    .line 139
    return-void
.end method

.method private clearOutput()V
    .registers 5

    .line 391
    new-instance v0, Lcom/google/android/exoplayer2/text/CueGroup;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->lastRendererPositionUs:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/text/TextRenderer;->getPresentationTimeUs(J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/text/CueGroup;-><init>(Ljava/util/List;J)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/TextRenderer;->updateOutput(Lcom/google/android/exoplayer2/text/CueGroup;)V

    .line 392
    return-void
.end method

.method private getCurrentEventTimeUs(J)J
    .registers 6
    .param p1, "positionUs"    # J
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "subtitle"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result v0

    .line 427
    .local v0, "nextEventTimeIndex":I
    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2a

    .line 431
    :cond_11
    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    .line 432
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v1

    goto :goto_29

    .line 433
    :cond_21
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v1

    .line 431
    :goto_29
    return-wide v1

    .line 428
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->timeUs:J

    return-wide v1
.end method

.method private getNextEventTime()J
    .registers 5

    .line 373
    iget v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_b

    .line 374
    return-wide v2

    .line 376
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_1b

    .line 378
    goto :goto_23

    .line 379
    :cond_1b
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v2

    .line 377
    :goto_23
    return-wide v2
.end method

.method private getPresentationTimeUs(J)J
    .registers 10
    .param p1, "positionUs"    # J
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 438
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v2

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 439
    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 441
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamOffsetUs:J

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private handleDecoderError(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V
    .registers 4
    .param p1, "e"    # Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subtitle decoding failed. streamFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->streamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextRenderer"

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->clearOutput()V

    .line 420
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->replaceDecoder()V

    .line 421
    return-void
.end method

.method private initDecoder()V
    .registers 3

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    .line 364
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->streamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 365
    return-void
.end method

.method private invokeUpdateOutputInternal(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 4
    .param p1, "cueGroup"    # Lcom/google/android/exoplayer2/text/CueGroup;

    .line 407
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->output:Lcom/google/android/exoplayer2/text/TextOutput;

    iget-object v1, p1, Lcom/google/android/exoplayer2/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/text/TextOutput;->onCues(Ljava/util/List;)V

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->output:Lcom/google/android/exoplayer2/text/TextOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/TextOutput;->onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V

    .line 409
    return-void
.end method

.method private releaseBuffers()V
    .registers 3

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 344
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 345
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_f

    .line 346
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 347
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 349
    :cond_f
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_18

    .line 350
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 351
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 353
    :cond_18
    return-void
.end method

.method private releaseDecoder()V
    .registers 2

    .line 356
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->release()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    .line 360
    return-void
.end method

.method private replaceDecoder()V
    .registers 1

    .line 368
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseDecoder()V

    .line 369
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->initDecoder()V

    .line 370
    return-void
.end method

.method private updateOutput(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 4
    .param p1, "cueGroup"    # Lcom/google/android/exoplayer2/text/CueGroup;

    .line 383
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 384
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_10

    .line 386
    :cond_d
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer;->invokeUpdateOutputInternal(Lcom/google/android/exoplayer2/text/CueGroup;)V

    .line 388
    :goto_10
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 143
    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 396
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 401
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 398
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/text/CueGroup;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/TextRenderer;->invokeUpdateOutputInternal(Lcom/google/android/exoplayer2/text/CueGroup;)V

    .line 399
    const/4 v0, 0x1

    return v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method

.method public isEnded()Z
    .registers 2

    .line 332
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .registers 3

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->streamFormat:Lcom/google/android/exoplayer2/Format;

    .line 323
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 324
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->clearOutput()V

    .line 325
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamOffsetUs:J

    .line 326
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->lastRendererPositionUs:J

    .line 327
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseDecoder()V

    .line 328
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 6
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .line 186
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->lastRendererPositionUs:J

    .line 187
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->clearOutput()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    .line 189
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    .line 190
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 191
    iget v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-eqz v0, :cond_19

    .line 192
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->replaceDecoder()V

    goto :goto_27

    .line 194
    :cond_19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->flush()V

    .line 197
    :goto_27
    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .registers 7
    .param p1, "formats"    # [Lcom/google/android/exoplayer2/Format;
    .param p2, "startPositionUs"    # J
    .param p4, "offsetUs"    # J

    .line 175
    iput-wide p4, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamOffsetUs:J

    .line 176
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->streamFormat:Lcom/google/android/exoplayer2/Format;

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    if-eqz v0, :cond_f

    .line 178
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    goto :goto_12

    .line 180
    :cond_f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->initDecoder()V

    .line 182
    :goto_12
    return-void
.end method

.method public render(JJ)V
    .registers 15
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 201
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->lastRendererPositionUs:J

    .line 202
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->isCurrentStreamFinal()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    iget-wide v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->finalStreamEndPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1d

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1d

    .line 205
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 206
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    .line 209
    :cond_1d
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_22

    .line 210
    return-void

    .line 213
    :cond_22
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-nez v0, :cond_47

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->setPositionUs(J)V

    .line 216
    :try_start_31
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    :try_end_41
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_31 .. :try_end_41} :catch_42

    .line 220
    goto :goto_47

    .line 217
    :catch_42
    move-exception v0

    .line 218
    .local v0, "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/TextRenderer;->handleDecoderError(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    .line 219
    return-void

    .line 223
    .end local v0    # "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    :cond_47
    :goto_47
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4f

    .line 224
    return-void

    .line 227
    :cond_4f
    const/4 v0, 0x0

    .line 228
    .local v0, "textRendererNeedsUpdate":Z
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v3, :cond_67

    .line 231
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v3

    .line 232
    .local v3, "subtitleNextEventTimeUs":J
    :goto_58
    cmp-long v5, v3, p1

    if-gtz v5, :cond_67

    .line 233
    iget v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 234
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v3

    .line 235
    const/4 v0, 0x1

    goto :goto_58

    .line 238
    .end local v3    # "subtitleNextEventTimeUs":J
    :cond_67
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    const/4 v4, 0x0

    if-eqz v3, :cond_a9

    .line 239
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 240
    .local v3, "nextSubtitle":Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_91

    .line 241
    if-nez v0, :cond_a9

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v9, v5, v7

    if-nez v9, :cond_a9

    .line 242
    iget v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-ne v5, v2, :cond_8b

    .line 243
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->replaceDecoder()V

    goto :goto_a9

    .line 245
    :cond_8b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 246
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    goto :goto_a9

    .line 249
    :cond_91
    iget-wide v5, v3, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->timeUs:J

    cmp-long v7, v5, p1

    if-gtz v7, :cond_a9

    .line 251
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_9e

    .line 252
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 254
    :cond_9e
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result v5

    iput v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 255
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 256
    iput-object v4, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 257
    const/4 v0, 0x1

    .line 261
    .end local v3    # "nextSubtitle":Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    :cond_a9
    :goto_a9
    if-eqz v0, :cond_c6

    .line 263
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/TextRenderer;->getCurrentEventTimeUs(J)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/text/TextRenderer;->getPresentationTimeUs(J)J

    move-result-wide v5

    .line 266
    .local v5, "presentationTimeUs":J
    new-instance v3, Lcom/google/android/exoplayer2/text/CueGroup;

    iget-object v7, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v7, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v7, v5, v6}, Lcom/google/android/exoplayer2/text/CueGroup;-><init>(Ljava/util/List;J)V

    .line 267
    .local v3, "cueGroup":Lcom/google/android/exoplayer2/text/CueGroup;
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/text/TextRenderer;->updateOutput(Lcom/google/android/exoplayer2/text/CueGroup;)V

    .line 270
    .end local v3    # "cueGroup":Lcom/google/android/exoplayer2/text/CueGroup;
    .end local v5    # "presentationTimeUs":J
    :cond_c6
    iget v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-ne v3, v2, :cond_cb

    .line 271
    return-void

    .line 275
    :cond_cb
    :goto_cb
    :try_start_cb
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    if-nez v3, :cond_145

    .line 276
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 277
    .local v3, "nextInputBuffer":Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    if-nez v3, :cond_e7

    .line 278
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    move-object v3, v5

    .line 279
    if-nez v3, :cond_e5

    .line 280
    return-void

    .line 282
    :cond_e5
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 284
    :cond_e7
    iget v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-ne v5, v1, :cond_ff

    .line 285
    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->setFlags(I)V

    .line 286
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 287
    iput-object v4, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 288
    iput v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    .line 289
    return-void

    .line 292
    :cond_ff
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v3, v6}, Lcom/google/android/exoplayer2/text/TextRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v5

    .line 293
    .local v5, "result":I
    const/4 v7, -0x4

    if-ne v5, v7, :cond_140

    .line 294
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->isEndOfStream()Z

    move-result v7

    if-eqz v7, :cond_114

    .line 295
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    .line 296
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    goto :goto_12e

    .line 298
    :cond_114
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v7, v7, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 299
    .local v7, "format":Lcom/google/android/exoplayer2/Format;
    if-nez v7, :cond_11b

    .line 301
    return-void

    .line 303
    :cond_11b
    iget-wide v8, v7, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v8, v3, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    .line 304
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->flip()V

    .line 305
    iget-boolean v8, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->isKeyFrame()Z

    move-result v9

    if-nez v9, :cond_12b

    const/4 v6, 0x1

    :cond_12b
    and-int/2addr v6, v8

    iput-boolean v6, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    .line 307
    .end local v7    # "format":Lcom/google/android/exoplayer2/Format;
    :goto_12e
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    if-nez v6, :cond_144

    .line 308
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v6, v3}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 309
    iput-object v4, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    :try_end_13f
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_cb .. :try_end_13f} :catch_146

    goto :goto_144

    .line 311
    :cond_140
    const/4 v6, -0x3

    if-ne v5, v6, :cond_144

    .line 312
    return-void

    .line 314
    .end local v3    # "nextInputBuffer":Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .end local v5    # "result":I
    :cond_144
    :goto_144
    goto :goto_cb

    .line 317
    :cond_145
    goto :goto_14a

    .line 315
    :catch_146
    move-exception v1

    .line 316
    .local v1, "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/TextRenderer;->handleDecoderError(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    .line 318
    .end local v1    # "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    :goto_14a
    return-void
.end method

.method public setFinalStreamEndPositionUs(J)V
    .registers 4
    .param p1, "streamEndPositionUs"    # J

    .line 169
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->isCurrentStreamFinal()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 170
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 171
    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .registers 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 150
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    if-nez v0, :cond_e

    const/4 v0, 0x4

    goto :goto_f

    :cond_e
    const/4 v0, 0x2

    .line 149
    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v0

    return v0

    .line 151
    :cond_14
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 152
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v0

    return v0

    .line 154
    :cond_22
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v0

    return v0
.end method
