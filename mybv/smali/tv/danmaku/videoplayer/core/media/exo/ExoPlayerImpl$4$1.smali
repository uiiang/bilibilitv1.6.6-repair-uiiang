.class Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;


# direct methods
.method constructor <init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iget-object v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iget-object v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->savedMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 393
    const-string v0, "ExoPlayerImpl"

    const-string v1, "[ERROR] Reloading live stream after BehindLiveWindowException"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iget-object v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iget-object v1, v1, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->savedMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$1900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 395
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iget-object v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 397
    :cond_3a
    return-void
.end method
