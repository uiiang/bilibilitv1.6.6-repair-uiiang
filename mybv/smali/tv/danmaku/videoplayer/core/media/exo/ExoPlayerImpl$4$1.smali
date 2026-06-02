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

.field final synthetic val$retryNum:I


# direct methods
.method constructor <init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;I)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iput p2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;->val$retryNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 454
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] Executing delayed live stream reload for parser error, retry #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;->val$retryNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iget-object v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iget-object v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->savedMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$2300(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 456
    const-string v0, "ExoPlayerImpl"

    const-string v1, "[ERROR] Reloading live stream after parser error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iget-object v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iget-object v1, v1, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->savedMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$2300(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 458
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$1;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iget-object v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 459
    const-string v0, "ExoPlayerImpl"

    const-string v1, "[ERROR] Live stream reload: prepare() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_5b
    return-void

    .line 461
    :cond_5c
    const-string v0, "ExoPlayerImpl"

    const-string v1, "[ERROR] Cannot reload: exoPlayer or savedMediaSource is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method
