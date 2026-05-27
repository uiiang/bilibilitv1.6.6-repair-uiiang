.class Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$2;
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
    .line 535
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$2;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iput p2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$2;->val$retryNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 538
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] ========== NETWORK ERROR RETRY #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$2;->val$retryNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ========== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$2;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iget-object v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 540
    const-string v0, "ExoPlayerImpl"

    const-string v1, "[ERROR] Retrying playback after network error, calling prepare()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] Current state before retry: position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$2;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iget-object v2, v2, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$2;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iget-object v2, v2, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4$2;->this$1:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    iget-object v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;->this$0:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    # getter for: Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 543
    const-string v0, "ExoPlayerImpl"

    const-string v1, "[ERROR] prepare() called, waiting for state change..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :goto_7d
    return-void

    .line 545
    :cond_7e
    const-string v0, "ExoPlayerImpl"

    const-string v1, "[ERROR] Cannot retry: exoPlayer is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d
.end method
