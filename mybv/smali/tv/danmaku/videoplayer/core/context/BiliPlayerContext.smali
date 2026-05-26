.class public Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;
.super Ljava/lang/Object;
.source "BiliPlayerContext.java"

# interfaces
.implements Ltv/danmaku/videoplayer/core/context/IPlayerContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/videoplayer/core/context/BiliPlayerContext$MediaTicker;
    }
.end annotation


# instance fields
.field private fromService:Z

.field private mAttachToService:Z

.field private mAttachToServiceAlone:Z

.field private mAudioFocusPlayHandler:Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;

.field private mAudioFocusPlayHandlerWrapper:Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;

.field public mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

.field private mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

.field private mPlayerEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWillAttachToService:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext$1;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext$1;-><init>(Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mAudioFocusPlayHandlerWrapper:Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltv/danmaku/videoplayer/core/videoview/IVideoParams;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ltv/danmaku/videoplayer/core/videoview/IVideoParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext$1;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext$1;-><init>(Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mAudioFocusPlayHandlerWrapper:Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;

    .line 95
    invoke-virtual {p0, p1, p2, p4}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->initMediaPlayer(Landroid/content/Context;Ltv/danmaku/videoplayer/core/videoview/IVideoParams;I)Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;

    .line 96
    invoke-virtual {p0, p3}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->initDanmakuPlayer(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;)Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;

    .line 97
    return-void
.end method

.method static synthetic access$000(Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;)Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mAudioFocusPlayHandler:Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;

    return-object v0
.end method

.method static synthetic access$100(Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;)Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    return-object v0
.end method


# virtual methods
.method public varargs act(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_b

    .line 514
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->act(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 516
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public addPlayer(Ltv/danmaku/videoplayer/core/videoview/IVideoViewPlayerAdapter;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method public addPlayerEventListener(Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;)V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mPlayerEventListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mPlayerEventListeners:Ljava/util/ArrayList;

    .line 468
    :cond_b
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mPlayerEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 472
    :goto_13
    return-void

    .line 471
    :cond_14
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mPlayerEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public adjustScreen(I)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 79
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->adjustScreen(I)V

    .line 81
    :cond_9
    return-void
.end method

.method public attachDanmakuView(Landroid/view/ViewGroup;ZI)V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 527
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0, p1, p2, p3}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->attachDanmakuView(Landroid/view/ViewGroup;ZI)V

    .line 529
    :cond_9
    return-void
.end method

.method public attachToActivity()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mAttachToServiceAlone:Z

    .line 160
    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mAttachToService:Z

    .line 161
    return-void
.end method

.method public attachToService()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mAttachToService:Z

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->fromService:Z

    .line 172
    return-void
.end method

.method public attachVideoView(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 135
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->attachVideoView(Landroid/view/ViewGroup;)V

    .line 137
    :cond_9
    return-void
.end method

.method public attchToServiceAlone()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mAttachToServiceAlone:Z

    .line 152
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_c

    .line 153
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->detachVideoView()V

    .line 155
    :cond_c
    return-void
.end method

.method public deleteComments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 666
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->deleteComments(Ljava/util/List;)V

    .line 668
    :cond_9
    return-void
.end method

.method public getAllActiveItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_b

    .line 658
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->getAllActivedItems()Ljava/util/List;

    move-result-object v0

    .line 660
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a
.end method

.method public getAspectRatio()Ltv/danmaku/videoplayer/core/videoview/AspectRatio;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_b

    .line 344
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getAspectRatio()Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    move-result-object v0

    .line 346
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAsyncPos(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 508
    const-string v0, "GetAsyncPos"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->require(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_b

    .line 451
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getBufferPercentage()I

    move-result v0

    .line 453
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCachedDuration()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 502
    const-string v0, "GetCachedDuration"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->require(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentActiveItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_b

    .line 650
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->getCurrentActivedItems()Ljava/util/List;

    move-result-object v0

    .line 652
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_b

    .line 386
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getCurrentPosition()I

    move-result v0

    .line 388
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDanmakuCurrentTime()I
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_b

    .line 673
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->getDanmakuCurrentTime()I

    move-result v0

    .line 675
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDanmakuInfo()Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_b

    .line 600
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->getInfo()Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    move-result-object v0

    .line 602
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDanmakuPlayerContext()Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_b

    .line 394
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getDuration()I

    move-result v0

    .line 396
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-nez v0, :cond_6

    .line 214
    const/4 v0, 0x0

    .line 216
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    goto :goto_5
.end method

.method public getMediaInfo()Ltv/danmaku/videoplayer/core/media/MediaInfoHolder;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_b

    .line 378
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getMediaInfo()Ltv/danmaku/videoplayer/core/media/MediaInfoHolder;

    move-result-object v0

    .line 380
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_b

    .line 86
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 88
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPlaybackSpeed()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 496
    const-string v0, "GetPlaybackSpeed"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->require(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getPlayerConfig()Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_b

    .line 189
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getPlayerConfig()Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    move-result-object v0

    .line 193
    :goto_a
    return-object v0

    .line 191
    :cond_b
    new-instance v0, Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;

    invoke-direct {v0}, Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;-><init>()V

    .line 192
    const/4 v1, 0x0

    iput v1, v0, Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;->mPlayer:I

    goto :goto_a
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_b

    .line 402
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getState()I

    move-result v0

    .line 404
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getVideoView()Landroid/view/View;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    if-nez v0, :cond_e

    .line 206
    :cond_c
    const/4 v0, 0x0

    .line 208
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_d
.end method

.method public getVideoViewType()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-nez v0, :cond_6

    .line 417
    const/4 v0, 0x0

    .line 419
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getVideoViewType()I

    move-result v0

    goto :goto_5
.end method

.method public hideDanmaku()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 588
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->hide()V

    .line 590
    :cond_9
    return-void
.end method

.method public initDanmakuPlayer(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;)Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;
    .locals 2
    .param p1    # Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_10

    .line 109
    new-instance v0, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    new-instance v1, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext$MediaTicker;

    invoke-direct {v1, p0}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext$MediaTicker;-><init>(Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;)V

    invoke-direct {v0, p1, v1}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;-><init>(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    .line 111
    :cond_10
    return-object p0
.end method

.method public bridge synthetic initDanmakuPlayer(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;)Ltv/danmaku/videoplayer/core/context/IPlayerContext;
    .locals 1
    .param p1    # Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->initDanmakuPlayer(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;)Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;

    move-result-object v0

    return-object v0
.end method

.method public initMediaPlayer(Landroid/content/Context;Ltv/danmaku/videoplayer/core/videoview/IVideoParams;I)Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ltv/danmaku/videoplayer/core/videoview/IVideoParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    new-instance v0, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-direct {v0, p1, p2, p3}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;-><init>(Landroid/content/Context;Ltv/danmaku/videoplayer/core/videoview/IVideoParams;I)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    .line 102
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mAudioFocusPlayHandlerWrapper:Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setAudioFocusPlayHandler(Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;)V

    .line 103
    return-object p0
.end method

.method public bridge synthetic initMediaPlayer(Landroid/content/Context;Ltv/danmaku/videoplayer/core/videoview/IVideoParams;I)Ltv/danmaku/videoplayer/core/context/IPlayerContext;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ltv/danmaku/videoplayer/core/videoview/IVideoParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2, p3}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->initMediaPlayer(Landroid/content/Context;Ltv/danmaku/videoplayer/core/videoview/IVideoParams;I)Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;

    move-result-object v0

    return-object v0
.end method

.method public isAttachedToService()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mAttachToService:Z

    return v0
.end method

.method public isAttachedToServiceAlone()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mAttachToServiceAlone:Z

    return v0
.end method

.method public isAttachedToView(Landroid/view/ViewGroup;)Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->isAttachedToView(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isDanmakuPaused()Z
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isDanmakuShowing()Z
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isFromService()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->fromService:Z

    return v0
.end method

.method public isPlaybackCompleted()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->isPlaybackCompleted()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSurfaceRenderer()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->isSurfaceRenderer()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTencentPlayer()Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->isTencentPlayer()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isVideoViewReleased()Z
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->getVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public varargs notifyPlayerEvent(I[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mPlayerEventListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mPlayerEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 705
    :cond_c
    return-void

    .line 701
    :cond_d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mPlayerEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 702
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 703
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;

    invoke-interface {v0, p1, p2}, Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;->onPlayerEvent(I[Ljava/lang/Object;)V

    goto :goto_13
.end method

.method public onActivityDestroyed(Z)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 325
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->onActivityDestroyed(Z)V

    .line 327
    :cond_9
    return-void
.end method

.method public onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 615
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V

    .line 617
    :cond_9
    return-void
.end method

.method public onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;)V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 622
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;)V

    .line 624
    :cond_9
    return-void
.end method

.method public onScreenOrientationChanged(ZI)V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 608
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->onScreenOrientationChanged(ZI)V

    .line 610
    :cond_9
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 283
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->pause()V

    .line 285
    :cond_9
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_12

    .line 286
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->pause()V

    .line 288
    :cond_12
    const/16 v0, 0xea

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->notifyPlayerEvent(I[Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public pauseDanmakuPlayer()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 562
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->pause()V

    .line 564
    :cond_9
    return-void
.end method

.method public play(Z)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 182
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->play(Z)V

    .line 184
    :cond_9
    return-void
.end method

.method public playbackSpeedAvailable()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 490
    const-string v0, "PlaybackSpeedAvailable"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->require(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public prepareAndStartDanmakuPlayer(J)V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 534
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->prepareAndStart(J)V

    .line 536
    :cond_9
    return-void
.end method

.method public refreshSubtitle()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 692
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->refreshSubtitle()V

    .line 694
    :cond_9
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 117
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->release()V

    .line 119
    :cond_9
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_12

    .line 120
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->release()V

    .line 122
    :cond_12
    const/16 v0, 0xeb

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->notifyPlayerEvent(I[Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public releaseDanmakuPlayer()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 128
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->release()V

    .line 130
    :cond_9
    return-void
.end method

.method public removePlayerEventListener(Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mPlayerEventListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mPlayerEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 480
    :cond_c
    :goto_c
    return-void

    .line 479
    :cond_d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mPlayerEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public require(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-nez v0, :cond_5

    :goto_4
    return-object p2

    :cond_5
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->require(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_4
.end method

.method public resetAspectRatio(II)V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 425
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->resetAspectRatio(II)V

    .line 427
    :cond_9
    return-void
.end method

.method public resetAspectRatio(IIZ)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 432
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1, p2, p3}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->resetAspectRatio(IIZ)V

    .line 434
    :cond_9
    return-void
.end method

.method public resetVideoView()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 444
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->resetVideoView()V

    .line 446
    :cond_9
    return-void
.end method

.method public resumeDanmakuPlayer()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 555
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->resume()V

    .line 557
    :cond_9
    return-void
.end method

.method public seekDanmaku(JJ)V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 569
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->seek(JJ)V

    .line 571
    :cond_9
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 410
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->seekTo(I)V

    .line 412
    :cond_9
    return-void
.end method

.method public setAspectRatio(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 352
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setAspectRatio(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 354
    :cond_9
    return-void
.end method

.method public setAudioFocusPlayHandler(Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mAudioFocusPlayHandler:Ltv/danmaku/videoplayer/core/context/AudioFocusPlayHandler;

    .line 278
    return-void
.end method

.method public varargs setDanmakuOption(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 643
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->setDanmakuOption(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;[Ljava/lang/Object;)V

    .line 645
    :cond_9
    return-void
.end method

.method public setDanmakuPadding(IIII)V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 636
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->setPadding(IIII)V

    .line 638
    :cond_9
    return-void
.end method

.method public setFromService(Z)V
    .locals 0

    .prologue
    .line 314
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->fromService:Z

    .line 315
    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 238
    :cond_9
    return-void
.end method

.method public setOnDanmakuClickListener(Lbl/bfd$a;FF)V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 681
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0, p1, p2, p3}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->setOnDanmakuClickListener(Lbl/bfd$a;FF)V

    .line 683
    :cond_9
    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 243
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 245
    :cond_9
    return-void
.end method

.method public setOnExtraInfoListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 257
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setOnExtraInfoListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;)V

    .line 259
    :cond_9
    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 229
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 231
    :cond_9
    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 222
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 224
    :cond_9
    return-void
.end method

.method public setOnPreparedStepListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnPreparedStepListener;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 264
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setOnPreparedStepListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnPreparedStepListener;)V

    .line 266
    :cond_9
    return-void
.end method

.method public setOnSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 271
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setOnSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 273
    :cond_9
    return-void
.end method

.method public setOnVideoDefnChangedListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 250
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setOnVideoDefnChangedListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;)V

    .line 252
    :cond_9
    return-void
.end method

.method public setOnVideoSizeChangedListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoSizeChangedListener;)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 366
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setOnVideoSizeChangedListener(Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoSizeChangedListener;)V

    .line 368
    :cond_9
    return-void
.end method

.method public setPlayerConfig(Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 199
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setPlayerConfig(Ltv/danmaku/videoplayer/core/media/resource/PlayerConfig;)V

    .line 201
    :cond_9
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setSpeed(F)V

    .line 74
    :cond_9
    return-void
.end method

.method public setVideoViewSize(II)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 337
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setVideoViewSize(II)V

    .line 339
    :cond_9
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 359
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->setVolume(FF)V

    .line 361
    :cond_9
    return-void
.end method

.method public showDanmaku()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 581
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->show()V

    .line 583
    :cond_9
    return-void
.end method

.method public stackFromBottom(Z)V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 629
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->stackFromBottom(Z)V

    .line 631
    :cond_9
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 294
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->start()V

    .line 296
    :cond_9
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_12

    .line 297
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->resume()V

    .line 299
    :cond_12
    const/16 v0, 0xe9

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->notifyPlayerEvent(I[Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method public startDanmakuPlayer()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 548
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->start()V

    .line 550
    :cond_9
    return-void
.end method

.method public stopDanmakuPlayer()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v0, :cond_9

    .line 541
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->stop()V

    .line 543
    :cond_9
    return-void
.end method

.method public switchPlayer(I)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    if-eqz v0, :cond_9

    .line 459
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mMediaPlayerContext:Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/context/MediaPlayerContext;->switchPlayer(I)V

    .line 461
    :cond_9
    return-void
.end method

.method public willAttachToService(Z)V
    .locals 0

    .prologue
    .line 141
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mWillAttachToService:Z

    .line 142
    return-void
.end method

.method public willBeAttachedToService()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mWillAttachToService:Z

    return v0
.end method
