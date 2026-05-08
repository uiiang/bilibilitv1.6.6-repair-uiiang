.class public Lcom/google/android/exoplayer2/util/DebugTextViewHelper;
.super Ljava/lang/Object;
.source "DebugTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final REFRESH_INTERVAL_MS:I = 0x3e8


# instance fields
.field private final player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private started:Z

.field private final textView:Landroid/widget/TextView;

.field private final updater:Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer;Landroid/widget/TextView;)V
    .registers 5
    .param p1, "player"    # Lcom/google/android/exoplayer2/ExoPlayer;
    .param p2, "textView"    # Landroid/widget/TextView;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 58
    iput-object p2, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    .line 59
    new-instance v0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;-><init>(Lcom/google/android/exoplayer2/util/DebugTextViewHelper;Lcom/google/android/exoplayer2/util/DebugTextViewHelper$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->updater:Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;

    .line 60
    return-void
.end method

.method private static getColorInfoString(Lcom/google/android/exoplayer2/video/ColorInfo;)Ljava/lang/String;
    .registers 3
    .param p0, "colorInfo"    # Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 191
    if-eqz p0, :cond_20

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/ColorInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " colr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/ColorInfo;->toLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_20
    const-string v0, ""

    :goto_22
    return-object v0
.end method

.method private static getDecoderCountersBufferCountString(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Ljava/lang/String;
    .registers 3
    .param p0, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 172
    if-nez p0, :cond_5

    .line 173
    const-string v0, ""

    return-object v0

    .line 175
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sib:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " db:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mcdb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPixelAspectRatioString(F)Ljava/lang/String;
    .registers 6
    .param p0, "pixelAspectRatio"    # F

    .line 195
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_33

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_d

    goto :goto_33

    .line 197
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " par:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%.02f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    .line 196
    :cond_33
    :goto_33
    const-string v0, ""

    .line 195
    :goto_35
    return-object v0
.end method

.method private static getVideoFrameProcessingOffsetAverageString(JI)Ljava/lang/String;
    .registers 7
    .param p0, "totalOffsetUs"    # J
    .param p2, "frameCount"    # I

    .line 202
    if-nez p2, :cond_5

    .line 203
    const-string v0, "N/A"

    return-object v0

    .line 205
    :cond_5
    long-to-double v0, p0

    int-to-double v2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 206
    .local v0, "averageUs":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected getAudioString()Ljava/lang/String;
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getAudioFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 155
    .local v0, "format":Lcom/google/android/exoplayer2/Format;
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getAudioDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object v1

    .line 156
    .local v1, "decoderCounters":Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    if-eqz v0, :cond_59

    if-nez v1, :cond_11

    goto :goto_59

    .line 159
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hz:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 167
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->getDecoderCountersBufferCountString(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    return-object v2

    .line 157
    :cond_59
    :goto_59
    const-string v2, ""

    return-object v2
.end method

.method protected getDebugString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->getPlayerStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->getAudioString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPlayerStateString()Ljava/lang/String;
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 119
    const-string v0, "unknown"

    .local v0, "playbackStateString":Ljava/lang/String;
    goto :goto_18

    .line 110
    .end local v0    # "playbackStateString":Ljava/lang/String;
    :pswitch_c
    const-string v0, "ended"

    .line 111
    .restart local v0    # "playbackStateString":Ljava/lang/String;
    goto :goto_18

    .line 116
    .end local v0    # "playbackStateString":Ljava/lang/String;
    :pswitch_f
    const-string v0, "ready"

    .line 117
    .restart local v0    # "playbackStateString":Ljava/lang/String;
    goto :goto_18

    .line 107
    .end local v0    # "playbackStateString":Ljava/lang/String;
    :pswitch_12
    const-string v0, "buffering"

    .line 108
    .restart local v0    # "playbackStateString":Ljava/lang/String;
    goto :goto_18

    .line 113
    .end local v0    # "playbackStateString":Ljava/lang/String;
    :pswitch_15
    const-string v0, "idle"

    .line 114
    .restart local v0    # "playbackStateString":Ljava/lang/String;
    nop

    .line 122
    :goto_18
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 124
    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 122
    const-string v2, "playWhenReady:%s playbackState:%s item:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method protected getVideoString()Ljava/lang/String;
    .registers 7

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 130
    .local v0, "format":Lcom/google/android/exoplayer2/Format;
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object v1

    .line 131
    .local v1, "decoderCounters":Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    if-eqz v0, :cond_7f

    if-nez v1, :cond_11

    goto :goto_7f

    .line 134
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " r:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 142
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->getColorInfoString(Lcom/google/android/exoplayer2/video/ColorInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 143
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->getPixelAspectRatioString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 144
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->getDecoderCountersBufferCountString(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vfpo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    iget v5, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->videoFrameProcessingOffsetCount:I

    .line 146
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->getVideoFrameProcessingOffsetAverageString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    return-object v2

    .line 132
    :cond_7f
    :goto_7f
    const-string v2, ""

    return-object v2
.end method

.method public final start()V
    .registers 3

    .line 67
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->started:Z

    if-eqz v0, :cond_5

    .line 68
    return-void

    .line 70
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->started:Z

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->updater:Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->updateAndPost()V

    .line 73
    return-void
.end method

.method public final stop()V
    .registers 3

    .line 80
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->started:Z

    if-nez v0, :cond_5

    .line 81
    return-void

    .line 83
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->started:Z

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->updater:Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->updater:Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method protected final updateAndPost()V
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->updater:Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->updater:Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    return-void
.end method
