.class public Lcom/google/android/exoplayer2/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/LoadControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_AUDIO_BUFFER_SIZE:I = 0xc80000

.field public static final DEFAULT_BACK_BUFFER_DURATION_MS:I = 0x0

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x1388

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS:I = 0x9c4

.field public static final DEFAULT_CAMERA_MOTION_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_IMAGE_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_MAX_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_METADATA_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_MIN_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_MIN_BUFFER_SIZE:I = 0xc80000

.field public static final DEFAULT_MUXED_BUFFER_SIZE:I = 0x89a0000

.field public static final DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS:Z = false

.field public static final DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME:Z = false

.field public static final DEFAULT_TARGET_BUFFER_BYTES:I = -0x1

.field public static final DEFAULT_TEXT_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_VIDEO_BUFFER_SIZE:I = 0x7d00000


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

.field private final backBufferDurationUs:J

.field private final bufferForPlaybackAfterRebufferUs:J

.field private final bufferForPlaybackUs:J

.field private isLoading:Z

.field private final maxBufferUs:J

.field private final minBufferUs:J

.field private final prioritizeTimeOverSizeThresholds:Z

.field private final retainBackBufferFromKeyframe:Z

.field private targetBufferBytes:I

.field private final targetBufferBytesOverwrite:I


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 275
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v0, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    const v2, 0xc350

    const v3, 0xc350

    const/16 v4, 0x9c4

    const/16 v5, 0x1388

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZIZ)V

    .line 285
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZIZ)V
    .registers 15
    .param p1, "allocator"    # Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
    .param p2, "minBufferMs"    # I
    .param p3, "maxBufferMs"    # I
    .param p4, "bufferForPlaybackMs"    # I
    .param p5, "bufferForPlaybackAfterRebufferMs"    # I
    .param p6, "targetBufferBytes"    # I
    .param p7, "prioritizeTimeOverSizeThresholds"    # Z
    .param p8, "backBufferDurationMs"    # I
    .param p9, "retainBackBufferFromKeyframe"    # Z

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const/4 v0, 0x0

    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    invoke-static {p4, v0, v1, v2}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v3, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p5, v0, v3, v2}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v4, "minBufferMs"

    invoke-static {p2, p4, v4, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {p2, p5, v4, v3}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "maxBufferMs"

    invoke-static {p3, p2, v1, v4}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v1, "backBufferDurationMs"

    invoke-static {p8, v0, v1, v2}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 309
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 310
    int-to-long v0, p2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferUs:J

    .line 311
    int-to-long v0, p3

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    .line 312
    int-to-long v0, p4

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    .line 313
    int-to-long v0, p5

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 314
    iput p6, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    .line 315
    nop

    .line 316
    const/4 v0, -0x1

    if-eq p6, v0, :cond_48

    .line 317
    move v0, p6

    goto :goto_4a

    .line 318
    :cond_48
    const/high16 v0, 0xc80000

    :goto_4a
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    .line 319
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    .line 320
    int-to-long v0, p8

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->backBufferDurationUs:J

    .line 321
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    .line 322
    return-void
.end method

.method static synthetic access$000(IILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "value1"    # I
    .param p1, "value2"    # I
    .param p2, "name1"    # Ljava/lang/String;
    .param p3, "name2"    # Ljava/lang/String;

    .line 469
    if-lt p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 470
    return-void
.end method

.method private static getDefaultBufferSize(I)I
    .registers 2
    .param p0, "trackType"    # I

    .line 445
    const/high16 v0, 0x20000

    packed-switch p0, :pswitch_data_1a

    .line 464
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 457
    :pswitch_b
    return v0

    .line 455
    :pswitch_c
    return v0

    .line 459
    :pswitch_d
    return v0

    .line 453
    :pswitch_e
    return v0

    .line 451
    :pswitch_f
    const/high16 v0, 0x7d00000

    return v0

    .line 449
    :pswitch_12
    const/high16 v0, 0xc80000

    return v0

    .line 447
    :pswitch_15
    const/high16 v0, 0x89a0000

    return v0

    .line 461
    :pswitch_18
    const/4 v0, 0x0

    return v0

    :pswitch_data_1a
    .packed-switch -0x2
        :pswitch_18
        :pswitch_5
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private reset(Z)V
    .registers 4
    .param p1, "resetAllocator"    # Z

    .line 434
    nop

    .line 435
    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 436
    const/high16 v0, 0xc80000

    goto :goto_a

    .line 437
    :cond_9
    nop

    :goto_a
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isLoading:Z

    .line 439
    if-eqz p1, :cond_16

    .line 440
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->reset()V

    .line 442
    :cond_16
    return-void
.end method


# virtual methods
.method protected calculateTargetBufferBytes([Lcom/google/android/exoplayer2/Renderer;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)I
    .registers 6
    .param p1, "renderers"    # [Lcom/google/android/exoplayer2/Renderer;
    .param p2, "trackSelectionArray"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "targetBufferSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_17

    .line 426
    aget-object v2, p2, v1

    if-eqz v2, :cond_14

    .line 427
    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/DefaultLoadControl;->getDefaultBufferSize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 425
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 430
    .end local v1    # "i":I
    :cond_17
    const/high16 v1, 0xc80000

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    return-object v0
.end method

.method public getBackBufferDurationUs()J
    .registers 3

    .line 360
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->backBufferDurationUs:J

    return-wide v0
.end method

.method public onPrepared()V
    .registers 2

    .line 326
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    .line 327
    return-void
.end method

.method public onReleased()V
    .registers 2

    .line 350
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    .line 351
    return-void
.end method

.method public onStopped()V
    .registers 2

    .line 345
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    .line 346
    return-void
.end method

.method public onTracksSelected(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaPeriodId;[Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .registers 8
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaPeriodId;
    .param p3, "renderers"    # [Lcom/google/android/exoplayer2/Renderer;
    .param p4, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p5, "trackSelections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 336
    nop

    .line 337
    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 338
    invoke-virtual {p0, p3, p5}, Lcom/google/android/exoplayer2/DefaultLoadControl;->calculateTargetBufferBytes([Lcom/google/android/exoplayer2/Renderer;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)I

    move-result v0

    goto :goto_c

    .line 339
    :cond_b
    nop

    :goto_c
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    .line 340
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    .line 341
    return-void
.end method

.method public synthetic onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/LoadControl$-CC;->$default$onTracksSelected(Lcom/google/android/exoplayer2/LoadControl;[Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .registers 2

    .line 365
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    return v0
.end method

.method public shouldContinueLoading(JJF)Z
    .registers 16
    .param p1, "playbackPositionUs"    # J
    .param p3, "bufferedDurationUs"    # J
    .param p5, "playbackSpeed"    # F

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 372
    .local v0, "targetBufferSizeReached":Z
    :goto_f
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferUs:J

    .line 373
    .local v4, "minBufferUs":J
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p5, v1

    if-lez v1, :cond_22

    .line 376
    nop

    .line 377
    invoke-static {v4, v5, p5}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v6

    .line 378
    .local v6, "mediaDurationMinBufferUs":J
    iget-wide v8, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 381
    .end local v6    # "mediaDurationMinBufferUs":J
    :cond_22
    const-wide/32 v6, 0x7a120

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 382
    cmp-long v1, p3, v4

    if-gez v1, :cond_45

    .line 383
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez v1, :cond_35

    if-nez v0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    :cond_35
    :goto_35
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isLoading:Z

    .line 384
    if-nez v2, :cond_4f

    cmp-long v1, p3, v6

    if-gez v1, :cond_4f

    .line 385
    const-string v1, "DefaultLoadControl"

    const-string v2, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 389
    :cond_45
    iget-wide v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    cmp-long v6, p3, v1

    if-gez v6, :cond_4d

    if-eqz v0, :cond_4f

    .line 390
    :cond_4d
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isLoading:Z

    .line 392
    :cond_4f
    :goto_4f
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isLoading:Z

    return v1
.end method

.method public synthetic shouldStartPlayback(JFZJ)Z
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/LoadControl$-CC;->$default$shouldStartPlayback(Lcom/google/android/exoplayer2/LoadControl;JFZJ)Z

    move-result p1

    return p1
.end method

.method public shouldStartPlayback(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaPeriodId;JFZJ)Z
    .registers 14
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaPeriodId;
    .param p3, "bufferedDurationUs"    # J
    .param p5, "playbackSpeed"    # F
    .param p6, "rebuffering"    # Z
    .param p7, "targetLiveOffsetUs"    # J

    .line 403
    invoke-static {p3, p4, p5}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide p3

    .line 404
    if-eqz p6, :cond_9

    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_b

    :cond_9
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    .line 405
    .local v0, "minBufferDurationUs":J
    :goto_b
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p7, v2

    if-eqz v4, :cond_1c

    .line 406
    const-wide/16 v2, 0x2

    div-long v2, p7, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 408
    :cond_1c
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_37

    cmp-long v2, p3, v0

    if-gez v2, :cond_37

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez v2, :cond_35

    iget-object v2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 411
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    if-lt v2, v3, :cond_35

    goto :goto_37

    :cond_35
    const/4 v2, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v2, 0x1

    .line 408
    :goto_38
    return v2
.end method
