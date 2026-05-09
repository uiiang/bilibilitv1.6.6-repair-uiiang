.class Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V
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
    .line 113
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    return-void
.end method

.method public onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 169
    if-eqz p1, :cond_24

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 170
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 172
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z

    .line 175
    :cond_24
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 6

    .prologue
    const/16 v2, 0x2bd

    const/4 v3, 0x0

    .line 116
    packed-switch p1, :pswitch_data_8e

    .line 142
    :cond_6
    :goto_6
    return-void

    .line 118
    :pswitch_7
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v2

    # setter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J
    invoke-static {v0, v2, v3}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$202(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J

    .line 119
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$500(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 120
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$500(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 122
    :cond_29
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$400(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$600(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 125
    :pswitch_39
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$400(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$600(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$700(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 127
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$700(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_6

    .line 131
    :pswitch_5c
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 132
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 134
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z

    goto :goto_6

    .line 139
    :pswitch_7d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$400(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$600(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 116
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_5c
        :pswitch_7
        :pswitch_39
    .end packed-switch
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 4

    .prologue
    .line 146
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 148
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iget v2, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 151
    :cond_32
    return-void
.end method

.method public onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x1

    if-ne p3, v0, :cond_16

    .line 180
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 181
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 184
    :cond_16
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 6

    .prologue
    .line 155
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 156
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iget v2, p1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    iget v4, p1, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_27

    iget v4, p1, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    :goto_21
    const/16 v5, 0x3e8

    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V

    .line 165
    :cond_26
    return-void

    .line 156
    :cond_27
    const/4 v4, 0x1

    goto :goto_21
.end method

.method public onVolumeChanged(F)V
    .locals 0

    .prologue
    .line 312
    return-void
.end method
