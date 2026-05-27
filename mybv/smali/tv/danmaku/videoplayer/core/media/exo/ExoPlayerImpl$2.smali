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
    .line 147
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x2

    const-wide/16 v8, 0x0

    .line 150
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_10e

    .line 151
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 152
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    .line 153
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPercentage()I

    .line 154
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    .line 155
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->isPlaying()Z

    move-result v2

    .line 156
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v3}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v3

    .line 158
    iget-object v4, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedIsPlaying:Z
    invoke-static {v4, v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$502(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;Z)Z

    .line 160
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object v2

    .line 161
    iget-object v4, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iget v5, v2, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedVideoWidth:I
    invoke-static {v4, v5}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$602(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I

    .line 162
    iget-object v4, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iget v2, v2, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedVideoHeight:I
    invoke-static {v4, v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$702(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I

    .line 164
    const-string v2, ""

    .line 165
    packed-switch v3, :pswitch_data_2a0

    .line 176
    :goto_69
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Z

    move-result v2

    if-eqz v2, :cond_a0

    const-wide/16 v4, -0x7d0

    cmp-long v2, v0, v4

    if-gez v2, :cond_a0

    if-ne v3, v13, :cond_a0

    .line 177
    const-string v2, "ExoPlayerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MONITOR] Live position too far behind ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms), seeking to live edge"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekToDefaultPosition()V

    .line 181
    :cond_a0
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Z

    move-result v2

    if-eqz v2, :cond_194

    if-ne v3, v10, :cond_194

    cmp-long v2, v0, v8

    if-nez v2, :cond_194

    .line 182
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J

    move-result-wide v4

    cmp-long v2, v4, v8

    if-nez v2, :cond_11f

    .line 183
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J
    invoke-static {v2, v4, v5}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$902(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    .line 184
    const-string v2, "ExoPlayerImpl"

    const-string v4, "[MONITOR] Live stream buffering started at position 0"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_c8
    :goto_c8
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Z

    move-result v2

    if-nez v2, :cond_27d

    if-ne v3, v10, :cond_27d

    .line 204
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_1ab

    .line 205
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J
    invoke-static {v2, v4, v5}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1102(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    .line 206
    const-string v2, "ExoPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MONITOR] VOD buffering started at position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_103
    :goto_103
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$400(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    :cond_10e
    return-void

    .line 166
    :pswitch_10f
    const-string v2, "IDLE"

    goto/16 :goto_69

    .line 167
    :pswitch_113
    const-string v2, "BUFFERING"

    goto/16 :goto_69

    .line 168
    :pswitch_117
    const-string v2, "READY"

    goto/16 :goto_69

    .line 169
    :pswitch_11b
    const-string v2, "ENDED"

    goto/16 :goto_69

    .line 186
    :cond_11f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 187
    const-string v2, "ExoPlayerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MONITOR] Live stream buffering duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-wide/16 v6, 0x3a98

    cmp-long v2, v4, v6

    if-lez v2, :cond_c8

    .line 189
    const-string v2, "ExoPlayerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MONITOR] Live stream buffering timeout ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x3a98

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms), need URL refresh"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    move-result-object v2

    if-eqz v2, :cond_18d

    .line 191
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    move-result-object v2

    const/16 v4, 0x3ea

    const-string v5, "LIVE_BUFFERING_TIMEOUT"

    invoke-interface {v2, v4, v5, v11}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;->onPlayerError(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 193
    :cond_18d
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J
    invoke-static {v2, v8, v9}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$902(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    goto/16 :goto_c8

    .line 196
    :cond_194
    if-ne v3, v10, :cond_19a

    cmp-long v2, v0, v8

    if-lez v2, :cond_c8

    .line 197
    :cond_19a
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J

    move-result-wide v4

    cmp-long v2, v4, v8

    if-lez v2, :cond_1a4

    .line 200
    :cond_1a4
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J
    invoke-static {v2, v8, v9}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$902(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    goto/16 :goto_c8

    .line 208
    :cond_1ab
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 209
    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-lez v2, :cond_103

    .line 210
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

    .line 211
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MONITOR] VOD buffering retry count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1200(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1200(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I

    move-result v0

    if-ge v0, v10, :cond_255

    .line 214
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # operator++ for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1208(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I

    .line 215
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MONITOR] Attempting VOD buffering recovery #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1200(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    move-result-object v0

    if-eqz v0, :cond_24e

    .line 218
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    move-result-object v0

    const/16 v1, 0x3eb

    const-string v2, "VOD_BUFFERING_TIMEOUT_RETRY"

    invoke-interface {v0, v1, v2, v11}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;->onPlayerError(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 221
    :cond_24e
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J
    invoke-static {v0, v8, v9}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1102(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    goto/16 :goto_103

    .line 223
    :cond_255
    const-string v0, "ExoPlayerImpl"

    const-string v1, "[MONITOR] Max VOD buffering retries reached, need URL refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    move-result-object v0

    if-eqz v0, :cond_271

    .line 225
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    move-result-object v0

    const/16 v1, 0x3ec

    const-string v2, "VOD_BUFFERING_TIMEOUT_FINAL"

    invoke-interface {v0, v1, v2, v11}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;->onPlayerError(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 227
    :cond_271
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J
    invoke-static {v0, v8, v9}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1102(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    .line 228
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I
    invoke-static {v0, v12}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1202(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I

    goto/16 :goto_103

    .line 234
    :cond_27d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Z

    move-result v0

    if-nez v0, :cond_103

    if-eq v3, v10, :cond_103

    .line 235
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_298

    .line 237
    if-ne v3, v13, :cond_298

    .line 238
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I
    invoke-static {v0, v12}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1202(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I

    .line 242
    :cond_298
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J
    invoke-static {v0, v8, v9}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1102(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    goto/16 :goto_103

    .line 165
    nop

    :pswitch_data_2a0
    .packed-switch 0x1
        :pswitch_10f
        :pswitch_113
        :pswitch_117
        :pswitch_11b
    .end packed-switch
.end method
