.class public Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;
.super Ltv/danmaku/videoplayer/core/videoview/AbsVideoViewPlayerAdapter;
.source "ExoMediaPlayerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoMediaPlayerAdapter"


# instance fields
.field private mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/videoview/AbsVideoViewPlayerAdapter;-><init>()V

    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v0, :cond_c

    .line 97
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->release()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    .line 100
    :cond_c
    return-void
.end method


# virtual methods
.method public varargs createMediaPlayer(Landroid/content/Context;Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;[Ljava/lang/Object;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    const-string v0, "ExoMediaPlayerAdapter"

    const-string v1, "Create ExoPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->releaseMediaPlayer()V

    .line 23
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-direct {v0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    .line 25
    if-eqz p3, :cond_34

    array-length v0, p3

    if-lez v0, :cond_34

    aget-object v0, p3, v2

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/videoview/IVideoParams;

    if-eqz v0, :cond_34

    .line 26
    aget-object v0, p3, v2

    check-cast v0, Ltv/danmaku/videoplayer/core/videoview/IVideoParams;

    .line 28
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoParams;->getExtra(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_34

    .line 30
    const-string v1, "start-on-prepared"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 31
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setPlayWhenReadyOnPrepare(Z)V

    .line 35
    :cond_34
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    return-object v0
.end method

.method public createVideoView(Landroid/content/Context;I)Ltv/danmaku/videoplayer/core/videoview/IVideoViewController;
    .locals 3

    .prologue
    .line 40
    packed-switch p2, :pswitch_data_2e

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown VideoView type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :pswitch_1c
    new-instance v0, Ltv/danmaku/videoplayer/core/videoview/SurfaceVideoView;

    invoke-direct {v0, p1}, Ltv/danmaku/videoplayer/core/videoview/SurfaceVideoView;-><init>(Landroid/content/Context;)V

    .line 46
    :goto_21
    return-object v0

    .line 44
    :pswitch_22
    new-instance v0, Ltv/danmaku/videoplayer/core/videoview/TextureVideoView;

    invoke-direct {v0, p1}, Ltv/danmaku/videoplayer/core/videoview/TextureVideoView;-><init>(Landroid/content/Context;)V

    goto :goto_21

    .line 46
    :pswitch_28
    new-instance v0, Ltv/danmaku/videoplayer/core/videoview/GLVideoView;

    invoke-direct {v0, p1}, Ltv/danmaku/videoplayer/core/videoview/GLVideoView;-><init>(Landroid/content/Context;)V

    goto :goto_21

    .line 40
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_22
        :pswitch_28
    .end packed-switch
.end method

.method public getConfig()Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    invoke-direct {v0}, Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;-><init>()V

    .line 55
    const/4 v1, 0x3

    iput v1, v0, Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;->mPlayer:I

    .line 56
    return-object v0
.end method

.method public isThisPlayerAvailable(Landroid/content/Context;Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;)Z
    .locals 1

    .prologue
    .line 61
    invoke-static {p1}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->shouldUseExoPlayer(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v0, :cond_2f

    .line 67
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 68
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 69
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 70
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 71
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 72
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 73
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 74
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->release()V

    .line 75
    iput-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    .line 77
    :cond_2f
    return-void
.end method

.method public varargs onReusePlayer(Landroid/content/Context;[Ljava/lang/Object;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v0, :cond_c

    .line 89
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->reset()V

    .line 90
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    .line 92
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoMediaPlayerAdapter;->mMediaPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->stop()V

    .line 84
    :cond_9
    return-void
.end method
