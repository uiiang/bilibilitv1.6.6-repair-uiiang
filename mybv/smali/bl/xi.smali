.class public Lbl/xi;
.super Lbl/xh;
.source "xi.java"

# interfaces
.implements Lbl/bbb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/xh;",
        "Lbl/bbb",
        "<",
        "Landroid/os/Message;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final ENABLE_SEEK_PREVIEW_SNAPSHOT:Z

.field public static error_message:Ljava/lang/String;


# instance fields
.field private bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

.field private c:Lbl/yd;

.field private currentAid:J

.field private currentBvid:Ljava/lang/String;

.field private currentCid:J

.field private currentPage:I

.field private d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/TextView;

.field private hideSeekPreviewRunnable:Ljava/lang/Runnable;

.field private i:Landroid/widget/TextView;

.field private isLongPress:Z

.field private isSliding:Z

.field private j:Landroid/widget/TextView;

.field private k:Lbl/aar;

.field private l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

.field private m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private volatile p:J

.field private r:Z

.field private s:Z

.field private seekPreviewGroup:Landroid/view/ViewGroup;

.field private seekPreviewSeekbar:Landroid/widget/SeekBar;

.field private seekPreviewSnapshot:Landroid/widget/ImageView;

.field private seekPreviewTimeCurrent:Landroid/widget/TextView;

.field private seekPreviewTimeTotal:Landroid/widget/TextView;

.field private t:Ljava/lang/Runnable;

.field private videoShot:Lcom/bilibili/tv/api/video/VideoShot;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 72
    iput-boolean v0, p0, Lbl/xi;->isSliding:Z

    .line 73
    iput-boolean v0, p0, Lbl/xi;->isLongPress:Z

    .line 74
    iput-boolean v0, p0, Lbl/xi;->r:Z

    .line 75
    iput-boolean v0, p0, Lbl/xi;->s:Z

    .line 88
    new-instance v0, Lbl/xi$1;

    invoke-direct {v0, p0}, Lbl/xi$1;-><init>(Lbl/xi;)V

    iput-object v0, p0, Lbl/xi;->hideSeekPreviewRunnable:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Lbl/xi$2;

    invoke-direct {v0, p0}, Lbl/xi$2;-><init>(Lbl/xi;)V

    iput-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    .line 112
    new-instance v0, Lbl/aaq;

    invoke-direct {v0, p0}, Lbl/aaq;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    .line 113
    return-void
.end method

.method private T()V
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lbl/xi;->D()V

    .line 360
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lbl/xi;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lbl/xi;->v()V

    .line 362
    :cond_18
    :goto_18
    return-void

    .line 361
    :cond_19
    invoke-virtual {p0}, Lbl/xi;->P()V

    invoke-super {p0}, Lbl/xh;->t()V

    goto :goto_18
.end method

.method private U()V
    .locals 2

    .prologue
    .line 504
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 505
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    .line 506
    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    iget-boolean v0, p0, Lbl/xi;->s:Z

    if-eqz v0, :cond_11

    .line 518
    :cond_10
    :goto_10
    return-void

    .line 509
    :cond_11
    new-instance v0, Lbl/xi$4;

    invoke-direct {v0, p0}, Lbl/xi$4;-><init>(Lbl/xi;)V

    invoke-interface {v1, v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->addPlayerEventListener(Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;)V

    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xi;->s:Z

    goto :goto_10
.end method

.method private V()V
    .locals 7

    .prologue
    .line 625
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 626
    iget-object v1, p0, Lbl/xi;->o:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    return-void
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-nez v0, :cond_5

    .line 639
    :cond_4
    :goto_4
    return-void

    .line 633
    :cond_5
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->setMax(I)V

    .line 634
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->setProgress(I)V

    .line 635
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 636
    if-eqz v0, :cond_4

    .line 637
    iget-object v1, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getBufferPercentage()I

    move-result v0

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->setSecondaryProgress(I)V

    goto :goto_4
.end method

.method private a(Landroid/content/Intent;Z)V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 660
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v11

    .line 661
    if-nez v11, :cond_9

    .line 723
    :goto_8
    return-void

    .line 664
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_1a

    invoke-static {v11, v0}, Lbl/zs;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    move-object v10, v0

    .line 666
    :goto_14
    if-nez v10, :cond_1c

    .line 667
    invoke-virtual {v11}, Landroid/app/Activity;->finish()V

    goto :goto_8

    :cond_1a
    move-object v10, v9

    .line 665
    goto :goto_14

    .line 670
    :cond_1c
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    if-eqz v0, :cond_41

    iget-object v0, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget-object v2, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v2}, Lbl/yd;->c()Lbl/yh;

    move-result-object v2

    iget-object v2, v2, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_41

    .line 671
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 674
    :cond_41
    iget-object v0, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 675
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmybl/VideoViewParams;->setCurrentVideo(Ljava/lang/String;)V

    .line 677
    new-instance v2, Lbl/yh;

    invoke-direct {v2}, Lbl/yh;-><init>()V

    .line 678
    iput-object v10, v2, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 679
    new-instance v0, Lbl/yd;

    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Lbl/yt;

    invoke-direct {v3}, Lbl/yt;-><init>()V

    new-instance v4, Lbl/zi;

    invoke-direct {v4}, Lbl/zi;-><init>()V

    new-instance v5, Lbl/yx;

    invoke-direct {v5}, Lbl/yx;-><init>()V

    new-instance v6, Lbl/za;

    invoke-direct {v6}, Lbl/za;-><init>()V

    new-instance v7, Lbl/ze;

    invoke-direct {v7}, Lbl/ze;-><init>()V

    new-instance v8, Lbl/yu;

    invoke-direct {v8}, Lbl/yu;-><init>()V

    invoke-direct/range {v0 .. v8}, Lbl/yd;-><init>(Landroid/content/Context;Lbl/yh;Lbl/yt;Lbl/zi;Lbl/yx;Lbl/za;Lbl/ze;Lbl/yu;)V

    iput-object v0, p0, Lbl/xi;->c:Lbl/yd;

    .line 680
    new-instance v0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;

    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v3, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-virtual {p0}, Lbl/xi;->S()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;-><init>(Landroid/content/Context;Ltv/danmaku/videoplayer/core/videoview/IVideoParams;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;I)V

    iput-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    .line 681
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    iget-object v1, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-virtual {v0, v1}, Lbl/yd;->a(Ltv/danmaku/videoplayer/core/context/IPlayerContext;)V

    .line 682
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    new-instance v1, Lbl/xd;

    invoke-direct {v1}, Lbl/xd;-><init>()V

    invoke-virtual {v0, v1}, Lbl/yd;->a(Lbl/xd;)V

    .line 683
    invoke-virtual {p0}, Lbl/xi;->c()Lbl/yh;

    move-result-object v0

    iput-object v10, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 684
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v8

    .line 685
    if-nez v8, :cond_b5

    .line 686
    invoke-virtual {v11}, Landroid/app/Activity;->finish()V

    goto/16 :goto_8

    .line 689
    :cond_b5
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    iget-object v1, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v1}, Lbl/yd;->a(Lbl/aaq;)V

    .line 690
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lbl/yd;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 691
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->a()Ljava/util/concurrent/Future;

    .line 692
    invoke-virtual {p0}, Lbl/xi;->R()V

    .line 693
    invoke-static {v8}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v1

    .line 694
    invoke-static {v8}, Lbl/yr;->d(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v2

    .line 695
    const-string v0, "CoverDebug"

    const-string v3, "========== xi.d() Cover Info =========="

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v0, "CoverDebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "coverUrl from yr.d(b) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v0, :cond_201

    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_201

    .line 699
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_201

    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-le v0, v12, :cond_201

    .line 700
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 703
    :goto_114
    const-string v3, "LoadingTitle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mainTitle(a2)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | pageTitle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | isBangumi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v8}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 705
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_198

    .line 706
    iget-object v1, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v1}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 720
    :cond_15a
    :goto_15a
    const-string v3, "LoadingTitle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "final mainTitle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | final pageTitle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v3, p0, Lbl/xi;->k:Lbl/aar;

    const v4, 0x7f0c00e1

    invoke-virtual {v11, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lbl/lp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lbl/aar;->b(Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v1, v2, v0}, Lbl/aar;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 708
    :cond_198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v4, v4, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v4, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v4}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_15a

    .line 710
    :cond_1ba
    if-eqz v0, :cond_15a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15a

    iget-object v3, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v3, v3, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v3, :cond_15a

    iget-object v3, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v3, v3, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v3, v3

    if-le v3, v12, :cond_15a

    .line 713
    if-eqz v1, :cond_1e7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e7

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e7

    .line 714
    const-string v0, "LoadingTitle"

    const-string v3, "mainTitle equals pageTitle, hide tv_loading_page"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 715
    goto/16 :goto_15a

    .line 717
    :cond_1e7
    const-string v3, "LoadingTitle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mainTitle != pageTitle, show tv_loading_page: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15a

    :cond_201
    move-object v0, v9

    goto/16 :goto_114
.end method

.method private a(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V
    .locals 1

    .prologue
    .line 1251
    if-nez p1, :cond_4

    .line 1252
    sget-object p1, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_SCREEN:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    .line 1254
    :cond_4
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setAspectRatio(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 1255
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 1256
    if-eqz v0, :cond_14

    .line 1257
    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setAspectRatio(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 1259
    :cond_14
    return-void
.end method

.method static synthetic access$000(Lbl/xi;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lbl/xi;->hideSeekPreview()V

    return-void
.end method

.method static synthetic access$100(Lbl/xi;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lbl/xi;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lbl/xi;->s:Z

    return p1
.end method

.method static synthetic access$300(Lbl/xi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lbl/xi;)J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lbl/xi;->currentCid:J

    return-wide v0
.end method

.method static synthetic access$500(Lbl/xi;)J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lbl/xi;->currentAid:J

    return-wide v0
.end method

.method static synthetic access$600(Lbl/xi;)Lcom/bilibili/tv/player/widget/PlayerSeekBar;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    return-object v0
.end method

.method private b(II)V
    .locals 4

    .prologue
    .line 642
    const/4 v0, -0x1

    if-le p1, v0, :cond_5

    if-gtz p2, :cond_6

    .line 647
    :cond_5
    :goto_5
    return-void

    .line 645
    :cond_6
    iget-object v0, p0, Lbl/xi;->j:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lbl/xi;->i:Landroid/widget/TextView;

    int-to-long v2, p2

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method private b(Landroid/os/Message;)V
    .locals 11

    .prologue
    .line 521
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/xh$a;

    .line 522
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v2

    .line 523
    if-eqz v0, :cond_18

    if-eqz v2, :cond_18

    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lbl/xi;->L()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 524
    :cond_18
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v1, 0x4e84

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 525
    invoke-virtual {p0}, Lbl/xi;->N()V

    .line 550
    :goto_22
    return-void

    .line 528
    :cond_23
    iget v3, v0, Lbl/xh$a;->b:I

    .line 529
    iget v1, v0, Lbl/xh$a;->a:I

    .line 530
    invoke-interface {v2}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getCurrentPosition()I

    move-result v2

    .line 531
    iget-wide v4, v0, Lbl/xh$a;->c:J

    .line 532
    const-string v6, "BasicTVPlayerAdapter"

    const-string v7, "buffering end  %d -> %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ltv/danmaku/android/log/BLog;->vfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    if-ne v2, v1, :cond_66

    .line 543
    :goto_47
    iget-object v2, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v6, 0x4e84

    invoke-virtual {v2, v6}, Lbl/aaq;->removeMessages(I)V

    .line 544
    iget-object v2, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v6, 0x4e84

    invoke-virtual {v2, v6}, Lbl/aaq;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 545
    iput v1, v0, Lbl/xh$a;->a:I

    .line 546
    iput v3, v0, Lbl/xh$a;->b:I

    .line 547
    iput-wide v4, v0, Lbl/xh$a;->c:J

    .line 548
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 549
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Lbl/aaq;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_22

    .line 535
    :cond_66
    sub-int v6, v2, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x1388

    if-lt v6, v7, :cond_73

    const/4 v6, 0x3

    if-lt v3, v6, :cond_82

    .line 536
    :cond_73
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v1, 0x4e84

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 537
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    goto :goto_22

    .line 540
    :cond_82
    const-string v6, "BasicTVPlayerAdapter"

    const-string v7, "[%d] continue buffering due to too far seek %d -> %d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v6, v7, v8}, Ltv/danmaku/android/log/BLog;->vfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    goto :goto_47
.end method

.method private c(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 553
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 554
    iget-object v1, p0, Lbl/xi;->b:Lbl/aaq;

    const v2, 0x4c4c0a

    invoke-virtual {v1, v2}, Lbl/aaq;->removeMessages(I)V

    .line 555
    const/4 v1, 0x0

    const/16 v2, 0x2bd

    invoke-virtual {p0, v1, v2, v3}, Lbl/xi;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 556
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 557
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 558
    :cond_24
    const v0, 0x7f0c0014

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    .line 569
    :goto_2a
    return-void

    .line 561
    :cond_2b
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 562
    invoke-virtual {p0, v4}, Lbl/xi;->c(Z)V

    .line 566
    :goto_36
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lbl/xi;->v()V

    .line 567
    :cond_3d
    invoke-virtual {p0}, Lbl/xi;->R()V

    .line 568
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lbl/xi;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    goto :goto_2a

    .line 564
    :cond_4e
    invoke-virtual {p0}, Lbl/xi;->A()V

    goto :goto_36
.end method

.method private d(Z)V
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lbl/xi;->n:Landroid/view/View;

    if-nez v0, :cond_13

    .line 789
    const v0, 0x7f08013c

    invoke-virtual {p0, v0}, Lbl/xi;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbl/xi;->n:Landroid/view/View;

    .line 791
    :cond_13
    iget-object v1, p0, Lbl/xi;->n:Landroid/view/View;

    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 792
    return-void

    .line 791
    :cond_1c
    const/16 v0, 0x8

    goto :goto_18
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const v1, 0x4c4c0a

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 727
    invoke-virtual {p0}, Lbl/xi;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/bll;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 728
    const p1, 0x7f0c000e

    .line 730
    :cond_15
    sget-object v0, Lbl/xi;->error_message:Ljava/lang/String;

    if-eqz v0, :cond_21

    sget-object v0, Lbl/xi;->error_message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_21
    invoke-virtual {p0}, Lbl/xi;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbl/xi;->error_message:Ljava/lang/String;

    .line 731
    :cond_2b
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    if-eqz v0, :cond_36

    .line 732
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    sget-object v1, Lbl/xi;->error_message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbl/aar;->a(Ljava/lang/String;)V

    .line 734
    :cond_36
    const/4 v0, 0x0

    sput-object v0, Lbl/xi;->error_message:Ljava/lang/String;

    .line 735
    return-void
.end method

.method private hideSeekPreview()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 166
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 167
    const-string v0, "SeekPreview"

    const-string v1, "hideSeekPreview: gone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_12
    return-void
.end method

.method private initSeekPreview(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 140
    const v0, 0x7f0801f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 141
    if-eqz v0, :cond_56

    .line 142
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    .line 143
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    .line 144
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->seekPreviewTimeCurrent:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->seekPreviewTimeTotal:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    .line 147
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 148
    const-string v0, "SeekPreview"

    const-string v1, "initSeekPreview: initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_55
    return-void

    .line 150
    :cond_56
    const-string v0, "SeekPreview"

    const-string v1, "initSeekPreview: seek_preview_group not found"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method private loadVideoShot()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 940
    const-string v0, "VideoShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVideoShot: aid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lbl/xi;->currentAid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lbl/xi;->currentCid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bvid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-wide v0, p0, Lbl/xi;->currentCid:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_42

    .line 942
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: invalid cid, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :goto_41
    return-void

    .line 946
    :cond_42
    iget-object v0, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 947
    :cond_4e
    iget-wide v0, p0, Lbl/xi;->currentAid:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_5c

    .line 948
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: invalid aid and bvid, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 953
    :cond_5c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbl/xi$6;

    invoke-direct {v1, p0}, Lbl/xi$6;-><init>(Lbl/xi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1072
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_41
.end method

.method private removeHideSeekPreviewCallback()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 173
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xi;->hideSeekPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 175
    :cond_b
    return-void
.end method

.method private showSeekPreview()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    .line 156
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 158
    const-string v0, "SeekPreview"

    const-string v1, "showSeekPreview: visible"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_16
    invoke-direct {p0}, Lbl/xi;->removeHideSeekPreviewCallback()V

    .line 161
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xi;->hideSeekPreviewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    return-void
.end method

.method private updateSeekPreview(II)V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lbl/xi;->updateSeekPreview(IIZ)V

    .line 179
    return-void
.end method

.method private updateSeekPreview(IIZ)V
    .locals 4

    .prologue
    .line 182
    const-string v0, "SeekPreview"

    const-string v1, "=== updateSeekPreview called ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v0, "SeekPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v0, "SeekPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previewTimeCurrent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", previewTimeTotal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_69

    .line 187
    iget-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 188
    iget-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 190
    :cond_69
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeCurrent:Landroid/widget/TextView;

    if-eqz v0, :cond_77

    .line 191
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeCurrent:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_77
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeTotal:Landroid/widget/TextView;

    if-eqz v0, :cond_85

    .line 194
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeTotal:Landroid/widget/TextView;

    int-to-long v2, p2

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_85
    iget-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    if-eqz v0, :cond_97

    .line 200
    iget-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    const-string v0, "SeekPreview"

    const-string v1, "updateSeekPreview: snapshot disabled by constant"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_97
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/xi;->c(Z)V

    .line 758
    return-void
.end method

.method public B()V
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-nez v0, :cond_7

    .line 772
    :goto_6
    return-void

    .line 771
    :cond_7
    invoke-super {p0}, Lbl/xh;->B()V

    goto :goto_6
.end method

.method public C()V
    .locals 1

    .prologue
    .line 776
    invoke-super {p0}, Lbl/xh;->C()V

    .line 777
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 778
    if-eqz v0, :cond_c

    .line 779
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->release()V

    .line 781
    :cond_c
    invoke-virtual {p0}, Lbl/xi;->m()Lbl/yd;

    move-result-object v0

    .line 782
    if-eqz v0, :cond_15

    .line 783
    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 785
    :cond_15
    return-void
.end method

.method public E()V
    .locals 1

    .prologue
    .line 590
    invoke-super {p0}, Lbl/xh;->E()V

    .line 591
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 592
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 594
    :cond_d
    return-void
.end method

.method public F()V
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-nez v0, :cond_7

    .line 803
    :goto_6
    return-void

    .line 799
    :cond_7
    invoke-virtual {p0}, Lbl/xi;->L()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 800
    invoke-virtual {p0}, Lbl/xi;->A()V

    .line 802
    :cond_10
    invoke-super {p0}, Lbl/xh;->F()V

    goto :goto_6
.end method

.method public G()V
    .locals 1

    .prologue
    .line 598
    invoke-super {p0}, Lbl/xh;->G()V

    .line 599
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 600
    return-void
.end method

.method public M()V
    .locals 2

    .prologue
    .line 1078
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    if-nez v0, :cond_1e

    .line 1079
    new-instance v0, Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-direct {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;-><init>()V

    iput-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    .line 1080
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    iget-object v1, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/BufferingOverlayController;->setBufferingView(Lcom/bilibili/tv/player/widget/PlayerBufferingView;)V

    .line 1081
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-static {v0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->setBufferingOverlayController(Lcom/bilibili/tv/player/BufferingOverlayController;)V

    .line 1082
    const-string v0, "xi"

    const-string v1, "[M] BufferingOverlayController initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_1e
    invoke-static {}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->shouldSuppressBufferingOverlay()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1086
    const-string v0, "xi"

    const-string v1, "[M] Buffering overlay is suppressed, skip showing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :goto_2b
    return-void

    .line 1090
    :cond_2c
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;->onBufferingStarted()V

    goto :goto_2b
.end method

.method public N()V
    .locals 2

    .prologue
    .line 1105
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    if-eqz v0, :cond_11

    .line 1106
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;->onBufferingEnded()V

    .line 1110
    :cond_9
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 1111
    :cond_10
    :goto_10
    return-void

    .line 1107
    :cond_11
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->isShown()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10
.end method

.method protected O()Z
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected P()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 403
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    .line 408
    :cond_9
    :goto_9
    return-void

    .line 406
    :cond_a
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_9
.end method

.method protected Q()V
    .locals 7

    .prologue
    const v6, 0x4c4c08

    const-wide/16 v4, 0x0

    .line 603
    iget-wide v0, p0, Lbl/xi;->p:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    .line 604
    iput-wide v4, p0, Lbl/xi;->p:J

    .line 606
    :cond_12
    invoke-direct {p0}, Lbl/xi;->V()V

    .line 607
    iget-wide v0, p0, Lbl/xi;->p:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_21
    iget-boolean v0, p0, Lbl/xi;->isSliding:Z

    if-nez v0, :cond_38

    .line 608
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v0

    .line 609
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v1

    .line 610
    if-lez v0, :cond_38

    const/4 v2, -0x1

    if-le v1, v2, :cond_38

    .line 611
    invoke-direct {p0, v1, v0}, Lbl/xi;->b(II)V

    .line 612
    invoke-direct {p0, v1, v0}, Lbl/xi;->a(II)V

    .line 615
    :cond_38
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v6}, Lbl/aaq;->removeMessages(I)V

    .line 616
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 617
    iget-wide v0, p0, Lbl/xi;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbl/xi;->p:J

    .line 618
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v6, v2, v3}, Lbl/aaq;->sendEmptyMessageDelayed(IJ)Z

    .line 622
    :goto_51
    return-void

    .line 620
    :cond_52
    iput-wide v4, p0, Lbl/xi;->p:J

    goto :goto_51
.end method

.method protected R()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1120
    iget-object v0, p0, Lbl/xi;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lbl/xi;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-nez v1, :cond_11

    .line 1168
    :cond_10
    :goto_10
    return-void

    .line 1123
    :cond_11
    iget-object v2, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 1124
    invoke-static {v2}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v0

    .line 1127
    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 1128
    iget-object v1, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v1}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1129
    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 1130
    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7a

    move v6, v3

    .line 1131
    :goto_36
    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7c

    move v5, v3

    .line 1132
    :goto_3f
    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7e

    .line 1134
    :goto_47
    if-eqz v6, :cond_b2

    .line 1135
    if-eqz v5, :cond_98

    .line 1136
    if-eqz v3, :cond_80

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 1137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1167
    :cond_74
    :goto_74
    iget-object v1, p0, Lbl/xi;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_7a
    move v6, v4

    .line 1130
    goto :goto_36

    :cond_7c
    move v5, v4

    .line 1131
    goto :goto_3f

    :cond_7e
    move v3, v4

    .line 1132
    goto :goto_47

    .line 1139
    :cond_80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_74

    .line 1142
    :cond_98
    if-eqz v3, :cond_74

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_74

    .line 1147
    :cond_b2
    if-eqz v5, :cond_d6

    .line 1148
    if-eqz v3, :cond_d4

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_74

    :cond_d4
    move-object v0, v1

    .line 1151
    goto :goto_74

    .line 1154
    :cond_d6
    if-eqz v3, :cond_74

    move-object v0, v2

    .line 1155
    goto :goto_74

    .line 1159
    :cond_da
    iget-object v1, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v1, :cond_74

    iget-object v1, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    if-eqz v1, :cond_74

    iget-object v1, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v1, :cond_74

    iget-object v1, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v1, v1

    if-le v1, v3, :cond_74

    .line 1160
    iget-object v1, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 1161
    if-eqz v0, :cond_122

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_122

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_122

    .line 1162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_74

    :cond_122
    move-object v0, v1

    .line 1164
    goto/16 :goto_74
.end method

.method protected S()I
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    .line 1263
    if-eqz v0, :cond_b

    .line 1264
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1266
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 414
    const/4 v0, 0x0

    .line 416
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 117
    const v0, 0x7f0a0021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Message;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 1231
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 1232
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    invoke-direct {p0, v0}, Lbl/xi;->a(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 1234
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Lbl/xi;->a(Landroid/os/Message;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lbl/xf;)V
    .locals 1

    .prologue
    .line 1224
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/app/Activity;Lbl/xf;)V

    .line 1225
    const/4 v0, 0x4

    invoke-virtual {p2, v0, p0}, Lbl/xf;->a(ILbl/bbb;)V

    .line 1226
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 651
    invoke-super {p0, p1}, Lbl/xh;->a(Landroid/content/Intent;)V

    .line 652
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 657
    :cond_13
    :goto_13
    return-void

    .line 655
    :cond_14
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 656
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lbl/xi;->a(Landroid/content/Intent;Z)V

    goto :goto_13
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 122
    const v0, 0x7f0800f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    .line 123
    const v0, 0x7f08005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->o:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f080042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    .line 125
    const v0, 0x7f080136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    .line 126
    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->h:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f08012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->j:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f08012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->i:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f08010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    iput-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    .line 130
    const v0, 0x7f080044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    iput-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    .line 131
    new-instance v0, Lbl/aar;

    invoke-direct {v0}, Lbl/aar;-><init>()V

    iput-object v0, p0, Lbl/xi;->k:Lbl/aar;

    .line 132
    iget-object v1, p0, Lbl/xi;->k:Lbl/aar;

    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lbl/xi;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lbl/aar;->a(Landroid/view/ViewGroup;)V

    .line 133
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->b()V

    .line 134
    invoke-direct {p0, p1}, Lbl/xi;->initSeekPreview(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbl/xi;->a(Landroid/content/Intent;Z)V

    .line 136
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 137
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1240
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->NEW_RESOLVE_TASK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_1a

    .line 1241
    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    if-eqz v0, :cond_16

    .line 1242
    iget-object v1, p0, Lbl/xi;->c:Lbl/yd;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lbl/yd;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1247
    :cond_16
    :goto_16
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 1248
    return-void

    .line 1244
    :cond_1a
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->CODEC_CONFIG_CHANGED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_16

    invoke-virtual {p0}, Lbl/xi;->y()Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    sget-object v1, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->NONE:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    invoke-virtual {v0, v1}, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1245
    :cond_2e
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c000f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbl/aar;->a(Ljava/lang/String;)V

    goto :goto_16
.end method

.method protected c(Z)V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_9

    .line 762
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->play(Z)V

    .line 764
    :cond_9
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_11

    .line 438
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;->getInstance()Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;->unregister(I)V

    .line 440
    :cond_11
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-eqz v0, :cond_1a

    .line 441
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->clearCache()V

    .line 443
    :cond_1a
    invoke-super {p0}, Lbl/xh;->d()V

    .line 444
    invoke-virtual {p0}, Lbl/xi;->r()V

    .line 445
    return-void
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_f

    .line 1097
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setText(I)V

    .line 1098
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 1100
    :cond_f
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lbl/xh;->e()V

    .line 242
    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 243
    invoke-virtual {p0}, Lbl/xi;->B()V

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xi;->r:Z

    .line 246
    :cond_f
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lbl/xh;->f()V

    .line 251
    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lbl/xi;->r:Z

    if-eqz v0, :cond_10

    .line 252
    invoke-virtual {p0}, Lbl/xi;->F()V

    .line 254
    :cond_10
    return-void
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    const-string v0, "ShotMenuBug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xi.f: keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    packed-switch p1, :pswitch_data_162

    .line 307
    :goto_2b
    return v2

    :pswitch_2c
    move-object v0, p0

    .line 271
    :cond_2d
    if-eqz v0, :cond_5f

    .line 272
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    .line 273
    instance-of v3, v0, Lbl/xl;

    if-eqz v3, :cond_2d

    .line 274
    check-cast v0, Lbl/xl;

    .line 275
    invoke-virtual {v0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v0

    .line 276
    const-string v3, "ShotMenuBug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xi.f: found xl, isShotMenuShowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-eqz v0, :cond_5f

    .line 278
    const-string v0, "ShotMenuBug"

    const-string v1, "xi.f: shot menu showing, ignoring LEFT/RIGHT key"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 285
    :cond_5f
    iget-boolean v0, p0, Lbl/xi;->isSliding:Z

    if-nez v0, :cond_70

    .line 286
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lbl/aal;->a(I)V

    .line 287
    iput-boolean v1, p0, Lbl/xi;->isSliding:Z

    .line 288
    iput-boolean v2, p0, Lbl/xi;->isLongPress:Z

    .line 290
    :cond_70
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_78

    .line 291
    iput-boolean v1, p0, Lbl/xi;->isLongPress:Z

    .line 293
    :cond_78
    const/16 v0, 0x16

    if-ne p1, v0, :cond_159

    move v0, v1

    :goto_7d
    invoke-static {v0}, Lbl/aal;->a(Z)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 294
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 295
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v4

    .line 296
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-eqz v0, :cond_15c

    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getDuration()I

    move-result v0

    .line 297
    :goto_9d
    const-string v5, "SeekPreview"

    const-string v6, "=== f() called ==="

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v5, "SeekPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "targetProgress="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v8, v3

    invoke-static {v8, v9}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v5, "SeekPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxProgress="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v8, v4

    invoke-static {v8, v9}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v4, "SeekPreview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "videoDuration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "s"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v4, "SeekPreview"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bottomSeekBar duration="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-eqz v0, :cond_15f

    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_137
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0, v3, v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a(IZ)V

    .line 303
    invoke-direct {p0}, Lbl/xi;->showSeekPreview()V

    .line 304
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v0

    iget-boolean v4, p0, Lbl/xi;->isLongPress:Z

    if-nez v4, :cond_153

    move v2, v1

    :cond_153
    invoke-direct {p0, v3, v0, v2}, Lbl/xi;->updateSeekPreview(IIZ)V

    move v2, v1

    .line 305
    goto/16 :goto_2b

    :cond_159
    move v0, v2

    .line 293
    goto/16 :goto_7d

    :cond_15c
    move v0, v2

    .line 296
    goto/16 :goto_9d

    .line 301
    :cond_15f
    const-string v0, "null"

    goto :goto_137

    .line 267
    :pswitch_data_162
    .packed-switch 0x15
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 314
    sparse-switch p1, :sswitch_data_b0

    move v0, v1

    .line 354
    :goto_8
    return v0

    .line 316
    :sswitch_9
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 317
    invoke-virtual {p0}, Lbl/xi;->v()V

    goto :goto_8

    :cond_13
    move v0, v1

    .line 320
    goto :goto_8

    .line 322
    :sswitch_15
    invoke-virtual {p0}, Lbl/xi;->tt()V

    goto :goto_8

    :sswitch_19
    move v0, v1

    .line 325
    goto :goto_8

    .line 327
    :sswitch_1b
    iget-boolean v2, p0, Lbl/xi;->isSliding:Z

    if-eqz v2, :cond_62

    .line 328
    invoke-static {v1}, Lbl/aal;->a(Z)I

    move-result v2

    .line 329
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    int-to-long v4, v3

    .line 330
    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    add-int/lit16 v3, v3, -0x2710

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 331
    invoke-virtual {p0, v2}, Lbl/xi;->c(I)V

    .line 332
    invoke-static {}, Lbl/aal;->a()V

    .line 333
    iput-boolean v1, p0, Lbl/xi;->isSliding:Z

    .line 334
    sget-object v3, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SEEK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v0

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-virtual {p0, v3, v6}, Lbl/xi;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    :cond_62
    move v0, v1

    .line 336
    goto :goto_8

    .line 338
    :sswitch_64
    iget-boolean v2, p0, Lbl/xi;->isSliding:Z

    if-eqz v2, :cond_a7

    .line 339
    invoke-static {v0}, Lbl/aal;->a(Z)I

    move-result v2

    .line 340
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    int-to-long v4, v3

    .line 341
    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    add-int/lit16 v3, v3, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 342
    invoke-virtual {p0, v2}, Lbl/xi;->c(I)V

    .line 343
    invoke-static {}, Lbl/aal;->a()V

    .line 344
    iput-boolean v1, p0, Lbl/xi;->isSliding:Z

    .line 345
    sget-object v3, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SEEK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v0

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-virtual {p0, v3, v6}, Lbl/xi;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    :cond_a7
    move v0, v1

    .line 347
    goto/16 :goto_8

    .line 351
    :sswitch_aa
    invoke-direct {p0}, Lbl/xi;->T()V

    goto/16 :goto_8

    .line 314
    nop

    :sswitch_data_b0
    .sparse-switch
        0x4 -> :sswitch_9
        0x13 -> :sswitch_15
        0x14 -> :sswitch_19
        0x15 -> :sswitch_1b
        0x16 -> :sswitch_64
        0x17 -> :sswitch_aa
        0x42 -> :sswitch_aa
        0xa0 -> :sswitch_aa
    .end sparse-switch
.end method

.method public h()V
    .locals 0

    .prologue
    .line 431
    invoke-super {p0}, Lbl/xh;->h()V

    .line 432
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    const v6, 0x4c4c0a

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 450
    .line 451
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_f

    .line 500
    :cond_e
    :goto_e
    return v2

    .line 454
    :cond_f
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_d0

    .line 495
    const-string v0, "BasicTVPlayerAdapter"

    const-string v3, "handled default:%d %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Ltv/danmaku/android/log/BLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 499
    :goto_2c
    const-string v3, "BasicTVPlayerAdapter"

    const-string v4, "handled:%d %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ltv/danmaku/android/log/BLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    if-nez v0, :cond_4b

    invoke-super {p0, p1}, Lbl/xh;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_4b
    move v2, v1

    goto :goto_e

    .line 456
    :sswitch_4d
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    iget-object v3, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lbl/aaq;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3, v10, v11}, Lbl/aaq;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v1

    .line 457
    goto :goto_2c

    .line 459
    :sswitch_62
    invoke-direct {p0}, Lbl/xi;->U()V

    .line 460
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_cc

    iget-object v3, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->isAttachedToView(Landroid/view/ViewGroup;)Z

    move-result v3

    if-nez v3, :cond_cc

    .line 462
    iget-object v3, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->attachVideoView(Landroid/view/ViewGroup;)V

    move v0, v1

    goto :goto_2c

    .line 466
    :sswitch_7a
    invoke-direct {p0, p1}, Lbl/xi;->b(Landroid/os/Message;)V

    move v0, v1

    .line 467
    goto :goto_2c

    .line 469
    :sswitch_7f
    invoke-virtual {p0}, Lbl/xi;->Q()V

    move v0, v1

    .line 470
    goto :goto_2c

    .line 472
    :sswitch_84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 473
    if-eqz v0, :cond_cc

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 475
    cmp-long v0, v4, v10

    if-ltz v0, :cond_a3

    const-wide/16 v6, 0x4650

    cmp-long v0, v4, v6

    if-gez v0, :cond_a3

    .line 476
    const v0, 0x7f0c0013

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    :cond_a3
    move v0, v1

    .line 478
    goto :goto_2c

    .line 481
    :sswitch_a5
    const-string v0, "PlaySpeed"

    const-string v3, "[XI_10201] RESOLVE_PREPARED received, calling c(message)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {p0, p1}, Lbl/xi;->c(Landroid/os/Message;)V

    move v0, v1

    .line 483
    goto/16 :goto_2c

    .line 485
    :sswitch_b2
    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 486
    invoke-virtual {p0}, Lbl/xi;->C()V

    .line 488
    :cond_bb
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v6}, Lbl/aaq;->removeMessages(I)V

    .line 489
    const v0, 0x7f0c0010

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    move v0, v1

    .line 490
    goto/16 :goto_2c

    :sswitch_c9
    move v0, v1

    .line 493
    goto/16 :goto_2c

    :cond_cc
    move v0, v1

    goto/16 :goto_2c

    .line 454
    nop

    :sswitch_data_d0
    .sparse-switch
        0x2774 -> :sswitch_4d
        0x27d9 -> :sswitch_a5
        0x27da -> :sswitch_b2
        0x27db -> :sswitch_c9
        0x27dc -> :sswitch_c9
        0x27e3 -> :sswitch_62
        0x4e84 -> :sswitch_7a
        0x4c4c08 -> :sswitch_7f
        0x4c4c0a -> :sswitch_84
    .end sparse-switch
.end method

.method public l()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lbl/xi;->a()Lbl/xh;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 259
    invoke-virtual {p0}, Lbl/xi;->a()Lbl/xh;

    move-result-object v0

    invoke-virtual {v0}, Lbl/xh;->l()Landroid/view/ViewGroup;

    move-result-object v0

    .line 261
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    goto :goto_e
.end method

.method public m()Lbl/yd;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    return-object v0
.end method

.method public n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    return-object v0
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 847
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 849
    invoke-static {}, Lmybl/VideoViewParams;->reportPlaybackFailed()V

    .line 851
    invoke-virtual {p0}, Lbl/xi;->y()Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    move-result-object v0

    .line 852
    iget v1, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->d:I

    iget v2, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->e:I

    if-lt v1, v2, :cond_1b

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    sget-object v1, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->NONE:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    invoke-virtual {v0, v1}, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 856
    :cond_1b
    :goto_1b
    return v3

    .line 855
    :cond_1c
    const v0, 0x7f0c000f

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    goto :goto_1b
.end method

.method public varargs onExtraInfo(I[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1172
    invoke-super {p0, p1, p2}, Lbl/xh;->onExtraInfo(I[Ljava/lang/Object;)V

    .line 1173
    const v0, 0x10018

    if-ne p1, v0, :cond_17

    .line 1174
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_16

    .line 1175
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    new-instance v1, Lbl/xi$7;

    invoke-direct {v1, p0}, Lbl/xi$7;-><init>(Lbl/xi;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->post(Ljava/lang/Runnable;)Z

    .line 1193
    :cond_16
    :goto_16
    return-void

    .line 1182
    :cond_17
    const v0, 0x10019

    if-ne p1, v0, :cond_16

    .line 1183
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_16

    .line 1186
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    new-instance v1, Lbl/xi$8;

    invoke-direct {v1, p0}, Lbl/xi$8;-><init>(Lbl/xi;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->post(Ljava/lang/Runnable;)Z

    goto :goto_16
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 6

    .prologue
    const/16 v2, 0x4e84

    const/4 v1, 0x0

    .line 812
    .line 813
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 814
    const/16 v0, 0x321

    if-eq p2, v0, :cond_4b

    .line 815
    packed-switch p2, :pswitch_data_54

    .line 838
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 841
    :goto_e
    return v0

    .line 817
    :pswitch_f
    invoke-virtual {p0}, Lbl/xi;->M()V

    .line 818
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    if-eqz v0, :cond_d

    .line 819
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->removeMessages(I)V

    .line 820
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 821
    const/4 v0, 0x0

    check-cast v0, Lbl/xh$a;

    invoke-static {}, Lbl/xh$a;->a()Lbl/xh$a;

    move-result-object v0

    .line 822
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    iput v3, v0, Lbl/xh$a;->a:I

    .line 823
    iput v1, v0, Lbl/xh$a;->b:I

    .line 824
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lbl/xh$a;->c:J

    .line 825
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 826
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d

    .line 830
    :pswitch_3e
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    if-eqz v0, :cond_47

    .line 831
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->removeMessages(I)V

    .line 833
    :cond_47
    invoke-virtual {p0}, Lbl/xi;->N()V

    goto :goto_d

    .line 840
    :cond_4b
    const-string v0, "BasicTVPlayerAdapter"

    const-string v2, "media not seekable"

    invoke-static {v0, v2}, Ltv/danmaku/android/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 841
    goto :goto_e

    .line 815
    :pswitch_data_54
    .packed-switch 0x2bd
        :pswitch_f
        :pswitch_3e
    .end packed-switch
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public onNativeInvoke(ILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1197
    const-string v2, "xi"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IJK_NATIVE_INVOKE] what="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", args="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_a8

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    if-eqz p2, :cond_be

    .line 1200
    const-string v0, "url"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1201
    const-string v2, "http_code"

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1202
    const-string v3, "error"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1204
    const-string v4, "xi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IJK_NATIVE_INVOKE] url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", http_code="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", error="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const/16 v0, 0x193

    if-eq v2, v0, :cond_78

    const/16 v0, 0x194

    if-eq v2, v0, :cond_78

    const/16 v0, 0x19a

    if-ne v2, v0, :cond_ac

    .line 1207
    :cond_78
    const-string v0, "xi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IJK_NATIVE_INVOKE] HTTP error detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->triggerErrorRefresh(ILjava/lang/String;)V

    move v0, v1

    .line 1219
    :goto_a7
    return v0

    .line 1197
    :cond_a8
    const-string v0, "null"

    goto/16 :goto_1f

    .line 1212
    :cond_ac
    if-nez v3, :cond_b0

    if-nez v2, :cond_be

    .line 1213
    :cond_b0
    const-string v0, "xi"

    const-string v2, "[IJK_NATIVE_INVOKE] Network error detected, triggering URL refresh"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const-string v0, "Network error"

    invoke-static {v3, v0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->triggerErrorRefresh(ILjava/lang/String;)V

    move v0, v1

    .line 1215
    goto :goto_a7

    .line 1219
    :cond_be
    invoke-super {p0, p1, p2}, Lbl/xh;->onNativeInvoke(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_a7
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 6

    .prologue
    .line 861
    const-string v0, "PlaySpeed"

    const-string v1, "[XI_ON_PREPARED] onPrepared() called, video ready to play"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-static {}, Lmybl/VideoViewParams;->reportPlaybackSuccess()V

    .line 864
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 865
    invoke-virtual {p0}, Lbl/xi;->F()V

    .line 867
    :cond_13
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 868
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->c()V

    .line 870
    :cond_20
    invoke-virtual {p0}, Lbl/xi;->O()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 871
    invoke-virtual {p0}, Lbl/xi;->N()V

    .line 875
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_50

    .line 877
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_50

    .line 879
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 880
    if-eqz v0, :cond_50

    instance-of v1, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v1, :cond_50

    .line 881
    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    .line 883
    new-instance v1, Lbl/xi$5;

    invoke-direct {v1, p0}, Lbl/xi$5;-><init>(Lbl/xi;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setErrorListener(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;)V

    .line 899
    const-string v0, "xi"

    const-string v1, "[ERROR_LISTENER] Error listener setup successfully in onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/IllegalAccessError; {:try_start_29 .. :try_end_50} :catch_17f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_50} :catch_189

    .line 909
    :cond_50
    :goto_50
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const v1, 0x4c4c08

    invoke-virtual {v0, v1}, Lbl/aaq;->sendEmptyMessage(I)Z

    .line 911
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_1a8

    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v1, :cond_1a8

    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    if-eqz v1, :cond_1a8

    .line 913
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 914
    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    iput-wide v2, p0, Lbl/xi;->currentAid:J

    .line 915
    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iput-wide v2, p0, Lbl/xi;->currentCid:J

    .line 916
    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    iput-object v1, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    .line 917
    iget v1, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    iput v1, p0, Lbl/xi;->currentPage:I

    .line 919
    const-string v1, "VideoShot"

    const-string v2, "========== ResolveParams Details =========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAvid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBvid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEpisodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSeasonId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const-string v0, "VideoShot"

    const-string v1, "========== End ResolveParams =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-direct {p0}, Lbl/xi;->loadVideoShot()V

    .line 936
    :goto_17b
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 937
    return-void

    .line 903
    :catch_17f
    move-exception v0

    .line 904
    const-string v0, "xi"

    const-string v1, "[ERROR_LISTENER] IllegalAccessError when accessing player (likely IjkPlayer), skipping error listener setup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50

    .line 905
    :catch_189
    move-exception v0

    .line 906
    const-string v1, "xi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ERROR_LISTENER] Failed to setup error listener in onPrepared: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50

    .line 933
    :cond_1a8
    const-string v0, "VideoShot"

    const-string v1, "onPrepared: params is null or incomplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17b
.end method

.method public r()V
    .locals 4

    .prologue
    .line 740
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    if-eqz v0, :cond_9

    .line 741
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 743
    :cond_9
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_1a

    .line 744
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->attachDanmakuView(Landroid/view/ViewGroup;ZI)V

    .line 746
    :try_start_15
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->release()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_23

    .line 750
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0}, Lbl/aaq;->a()V

    .line 751
    invoke-super {p0}, Lbl/xh;->r()V

    .line 752
    return-void

    .line 747
    :catch_23
    move-exception v0

    goto :goto_1a
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_10
    invoke-super {p0}, Lbl/xh;->s()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public t()V
    .locals 4

    .prologue
    .line 368
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xi;->a(Ljava/lang/Runnable;)V

    .line 369
    invoke-virtual {p0}, Lbl/xi;->P()V

    .line 370
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v0, v2, v3}, Lbl/xi;->a(Ljava/lang/Runnable;J)V

    .line 371
    :cond_13
    invoke-super {p0}, Lbl/xh;->t()V

    .line 372
    return-void
.end method

.method public tt()V
    .locals 4

    .prologue
    .line 375
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_15

    .line 376
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lbl/xi;->v()V

    .line 383
    :goto_d
    invoke-super {p0}, Lbl/xh;->t()V

    .line 384
    return-void

    .line 377
    :cond_11
    invoke-virtual {p0}, Lbl/xi;->P()V

    goto :goto_d

    .line 379
    :cond_15
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xi;->a(Ljava/lang/Runnable;)V

    .line 380
    invoke-virtual {p0}, Lbl/xi;->P()V

    .line 381
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v0, v2, v3}, Lbl/xi;->a(Ljava/lang/Runnable;J)V

    goto :goto_d
.end method

.method public u()V
    .locals 1

    .prologue
    .line 574
    invoke-super {p0}, Lbl/xh;->u()V

    .line 575
    invoke-virtual {p0}, Lbl/xi;->Q()V

    .line 576
    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 577
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 579
    :cond_10
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 395
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 396
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 399
    :cond_13
    invoke-super {p0}, Lbl/xh;->v()V

    .line 400
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 584
    invoke-super {p0}, Lbl/xh;->w()V

    .line 585
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 586
    return-void
.end method
