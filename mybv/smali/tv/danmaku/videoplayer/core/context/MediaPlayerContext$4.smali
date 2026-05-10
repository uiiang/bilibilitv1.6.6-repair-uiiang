.class Ltv/danmaku/videoplayer/core/context/MediaPlayerContext$4;
.super Ljava/lang/Object;
.source "MediaPlayerContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->reloadMediaSource(Lcom/bilibili/lib/media/resource/MediaResource;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

.field final synthetic val$finalPosition:I


# direct methods
.method constructor <init>(Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;I)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext$4;->this$0:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    iput p2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext$4;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext$4;->this$0:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    # getter for: Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->access$000(Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;)Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 411
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext$4;->this$0:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    # getter for: Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->mVideoView:Ltv/danmaku/videoplayer/core/videoview/IVideoView;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->access$000(Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;)Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    iget v1, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext$4;->val$finalPosition:I

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->seekTo(I)V

    .line 412
    const-string v0, "MediaPlayerContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RELOAD_MEDIA_SEEK] Seeked to position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext$4;->val$finalPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_33
    return-void
.end method
