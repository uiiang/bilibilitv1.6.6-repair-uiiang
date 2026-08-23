.class Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;


# direct methods
.method constructor <init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 153
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_134

    .line 154
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    .line 155
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v4

    .line 156
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPercentage()I

    move-result v1

    .line 157
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v6

    .line 158
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->isPlaying()Z

    move-result v8

    .line 159
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v9

    .line 161
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedIsPlaying:Z
    invoke-static {v0, v8}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$502(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;Z)Z

    .line 163
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object v0

    .line 164
    iget-object v10, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iget v11, v0, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedVideoWidth:I
    invoke-static {v10, v11}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$602(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I

    .line 165
    iget-object v10, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iget v11, v0, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedVideoHeight:I
    invoke-static {v10, v11}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$702(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I

    .line 166
    iget-object v10, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iget v11, v0, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_135

    iget v0, v0, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    :goto_6c
    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedPixelWidthHeightRatio:F
    invoke-static {v10, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$802(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;F)F

    .line 168
    const-string v0, ""

    .line 169
    packed-switch v9, :pswitch_data_2e4

    .line 176
    :goto_74
    const-string v10, "ExoPlayerImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[MONITOR] pos="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, buffered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "% ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms), playing="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", state="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    const/4 v0, 0x2

    if-ne v9, v0, :cond_1c1

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1c1

    .line 185
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_149

    .line 186
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J
    invoke-static {v0, v4, v5}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1002(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    .line 187
    const-string v0, "ExoPlayerImpl"

    const-string v1, "[MONITOR] Live stream buffering started at position 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_eb
    :goto_eb
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Z

    move-result v0

    if-nez v0, :cond_2ba

    const/4 v0, 0x2

    if-ne v9, v0, :cond_2ba

    .line 207
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1200(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1df

    .line 208
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J
    invoke-static {v0, v4, v5}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1202(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    .line 209
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MONITOR] VOD buffering started at position="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_129
    :goto_129
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$400(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    :cond_134
    return-void

    .line 166
    :cond_135
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_6c

    .line 170
    :pswitch_139
    const-string v0, "IDLE"

    goto/16 :goto_74

    .line 171
    :pswitch_13d
    const-string v0, "BUFFERING"

    goto/16 :goto_74

    .line 172
    :pswitch_141
    const-string v0, "READY"

    goto/16 :goto_74

    .line 173
    :pswitch_145
    const-string v0, "ENDED"

    goto/16 :goto_74

    .line 189
    :cond_149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J
    invoke-static {v4}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 190
    const-string v4, "ExoPlayerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MONITOR] Live stream buffering duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-wide/16 v4, 0x3a98

    cmp-long v4, v0, v4

    if-lez v4, :cond_eb

    .line 192
    const-string v4, "ExoPlayerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MONITOR] Live stream buffering timeout ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v6, 0x3a98

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms), need URL refresh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1b8

    .line 194
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    move-result-object v0

    const/16 v1, 0x3ea

    const-string v4, "LIVE_BUFFERING_TIMEOUT"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v4, v5}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;->onPlayerError(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 196
    :cond_1b8
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    const-wide/16 v4, 0x0

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J
    invoke-static {v0, v4, v5}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1002(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    goto/16 :goto_eb

    .line 199
    :cond_1c1
    const/4 v0, 0x2

    if-ne v9, v0, :cond_1ca

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_eb

    .line 200
    :cond_1ca
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1d6

    .line 203
    :cond_1d6
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    const-wide/16 v4, 0x0

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J
    invoke-static {v0, v4, v5}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1002(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    goto/16 :goto_eb

    .line 211
    :cond_1df
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1200(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 212
    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-lez v2, :cond_129

    .line 213
    const-string v2, "ExoPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MONITOR] VOD buffering timeout ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MONITOR] VOD buffering retry count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1300(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1300(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_28e

    .line 217
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # operator++ for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1308(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I

    .line 218
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MONITOR] Attempting VOD buffering recovery #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1300(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    move-result-object v0

    if-eqz v0, :cond_285

    .line 221
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    move-result-object v0

    const/16 v1, 0x3eb

    const-string v2, "VOD_BUFFERING_TIMEOUT_RETRY"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;->onPlayerError(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 224
    :cond_285
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    const-wide/16 v2, 0x0

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J
    invoke-static {v0, v2, v3}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1202(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    goto/16 :goto_129

    .line 226
    :cond_28e
    const-string v0, "ExoPlayerImpl"

    const-string v1, "[MONITOR] Max VOD buffering retries reached, need URL refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    move-result-object v0

    if-eqz v0, :cond_2ab

    .line 228
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    move-result-object v0

    const/16 v1, 0x3ec

    const-string v2, "VOD_BUFFERING_TIMEOUT_FINAL"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;->onPlayerError(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 230
    :cond_2ab
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    const-wide/16 v2, 0x0

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J
    invoke-static {v0, v2, v3}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1202(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    .line 231
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    const/4 v1, 0x0

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I
    invoke-static {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1302(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I

    goto/16 :goto_129

    .line 237
    :cond_2ba
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Z

    move-result v0

    if-nez v0, :cond_129

    const/4 v0, 0x2

    if-eq v9, v0, :cond_129

    .line 238
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1200(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2da

    .line 240
    const/4 v0, 0x3

    if-ne v9, v0, :cond_2da

    .line 241
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    const/4 v1, 0x0

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I
    invoke-static {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1302(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I

    .line 245
    :cond_2da
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    const-wide/16 v2, 0x0

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J
    invoke-static {v0, v2, v3}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1202(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    goto/16 :goto_129

    .line 169
    nop

    :pswitch_data_2e4
    .packed-switch 0x1
        :pswitch_139
        :pswitch_13d
        :pswitch_141
        :pswitch_145
    .end packed-switch
.end method
