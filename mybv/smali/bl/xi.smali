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
.field public static error_message:Ljava/lang/String;


# instance fields
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

    .line 105
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 71
    iput-boolean v0, p0, Lbl/xi;->isSliding:Z

    .line 72
    iput-boolean v0, p0, Lbl/xi;->isLongPress:Z

    .line 73
    iput-boolean v0, p0, Lbl/xi;->r:Z

    .line 74
    iput-boolean v0, p0, Lbl/xi;->s:Z

    .line 85
    new-instance v0, Lbl/xi$1;

    invoke-direct {v0, p0}, Lbl/xi$1;-><init>(Lbl/xi;)V

    iput-object v0, p0, Lbl/xi;->hideSeekPreviewRunnable:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lbl/xi$2;

    invoke-direct {v0, p0}, Lbl/xi$2;-><init>(Lbl/xi;)V

    iput-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lbl/aaq;

    invoke-direct {v0, p0}, Lbl/aaq;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    .line 107
    return-void
.end method

.method private T()V
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lbl/xi;->D()V

    .line 328
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

    .line 330
    :cond_18
    :goto_18
    return-void

    .line 329
    :cond_19
    invoke-virtual {p0}, Lbl/xi;->P()V

    invoke-super {p0}, Lbl/xh;->t()V

    goto :goto_18
.end method

.method private U()V
    .locals 2

    .prologue
    .line 472
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 473
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    .line 474
    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    iget-boolean v0, p0, Lbl/xi;->s:Z

    if-eqz v0, :cond_11

    .line 486
    :cond_10
    :goto_10
    return-void

    .line 477
    :cond_11
    new-instance v0, Lbl/xi$4;

    invoke-direct {v0, p0}, Lbl/xi$4;-><init>(Lbl/xi;)V

    invoke-interface {v1, v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->addPlayerEventListener(Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;)V

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xi;->s:Z

    goto :goto_10
.end method

.method private V()V
    .locals 7

    .prologue
    .line 593
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 594
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

    .line 595
    return-void
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-nez v0, :cond_5

    .line 607
    :cond_4
    :goto_4
    return-void

    .line 601
    :cond_5
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->setMax(I)V

    .line 602
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->setProgress(I)V

    .line 603
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 604
    if-eqz v0, :cond_4

    .line 605
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

    .line 628
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v11

    .line 629
    if-nez v11, :cond_9

    .line 680
    :goto_8
    return-void

    .line 632
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 633
    if-eqz v0, :cond_1a

    invoke-static {v11, v0}, Lbl/zs;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    move-object v10, v0

    .line 634
    :goto_14
    if-nez v10, :cond_1c

    .line 635
    invoke-virtual {v11}, Landroid/app/Activity;->finish()V

    goto :goto_8

    :cond_1a
    move-object v10, v9

    .line 633
    goto :goto_14

    .line 638
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

    .line 639
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 642
    :cond_41
    iget-object v0, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 643
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmybl/VideoViewParams;->setCurrentVideo(Ljava/lang/String;)V

    .line 645
    new-instance v2, Lbl/yh;

    invoke-direct {v2}, Lbl/yh;-><init>()V

    .line 646
    iput-object v10, v2, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 647
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

    .line 648
    new-instance v0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;

    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v3, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-virtual {p0}, Lbl/xi;->S()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;-><init>(Landroid/content/Context;Ltv/danmaku/videoplayer/core/videoview/IVideoParams;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;I)V

    iput-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    .line 649
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    iget-object v1, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-virtual {v0, v1}, Lbl/yd;->a(Ltv/danmaku/videoplayer/core/context/IPlayerContext;)V

    .line 650
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    new-instance v1, Lbl/xd;

    invoke-direct {v1}, Lbl/xd;-><init>()V

    invoke-virtual {v0, v1}, Lbl/yd;->a(Lbl/xd;)V

    .line 651
    invoke-virtual {p0}, Lbl/xi;->c()Lbl/yh;

    move-result-object v0

    iput-object v10, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 652
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v8

    .line 653
    if-nez v8, :cond_b5

    .line 654
    invoke-virtual {v11}, Landroid/app/Activity;->finish()V

    goto/16 :goto_8

    .line 657
    :cond_b5
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    iget-object v1, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v1}, Lbl/yd;->a(Lbl/aaq;)V

    .line 658
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lbl/yd;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 659
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->a()Ljava/util/concurrent/Future;

    .line 660
    invoke-virtual {p0}, Lbl/xi;->R()V

    .line 661
    invoke-static {v8}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v1

    .line 662
    invoke-static {v8}, Lbl/yr;->d(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v2

    .line 663
    const-string v0, "CoverDebug"

    const-string v3, "========== xi.d() Cover Info =========="

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
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

    .line 666
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v0, :cond_168

    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_168

    .line 667
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_168

    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-le v0, v12, :cond_168

    .line 668
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 671
    :goto_114
    invoke-virtual {v8}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 672
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_146

    .line 673
    iget-object v1, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v1}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 678
    :cond_12a
    :goto_12a
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

    .line 679
    iget-object v1, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v1, v2, v0}, Lbl/aar;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 675
    :cond_146
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

    goto :goto_12a

    :cond_168
    move-object v0, v9

    goto :goto_114
.end method

.method private a(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V
    .locals 1

    .prologue
    .line 1105
    if-nez p1, :cond_4

    .line 1106
    sget-object p1, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_SCREEN:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    .line 1108
    :cond_4
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setAspectRatio(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 1109
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 1110
    if-eqz v0, :cond_14

    .line 1111
    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setAspectRatio(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 1113
    :cond_14
    return-void
.end method

.method static synthetic access$000(Lbl/xi;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lbl/xi;->hideSeekPreview()V

    return-void
.end method

.method static synthetic access$100(Lbl/xi;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lbl/xi;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lbl/xi;->s:Z

    return p1
.end method

.method static synthetic access$300(Lbl/xi;)Lcom/bilibili/tv/player/widget/PlayerBufferingView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    return-object v0
.end method

.method static synthetic access$400(Lbl/xi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lbl/xi;)J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lbl/xi;->currentCid:J

    return-wide v0
.end method

.method static synthetic access$600(Lbl/xi;)J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lbl/xi;->currentAid:J

    return-wide v0
.end method

.method static synthetic access$700(Lbl/xi;)Lcom/bilibili/tv/player/widget/PlayerSeekBar;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    return-object v0
.end method

.method private b(II)V
    .locals 4

    .prologue
    .line 610
    const/4 v0, -0x1

    if-le p1, v0, :cond_5

    if-gtz p2, :cond_6

    .line 615
    :cond_5
    :goto_5
    return-void

    .line 613
    :cond_6
    iget-object v0, p0, Lbl/xi;->j:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
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
    .line 489
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/xh$a;

    .line 490
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v2

    .line 491
    if-eqz v0, :cond_18

    if-eqz v2, :cond_18

    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lbl/xi;->L()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 492
    :cond_18
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v1, 0x4e84

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 493
    invoke-virtual {p0}, Lbl/xi;->N()V

    .line 518
    :goto_22
    return-void

    .line 496
    :cond_23
    iget v3, v0, Lbl/xh$a;->b:I

    .line 497
    iget v1, v0, Lbl/xh$a;->a:I

    .line 498
    invoke-interface {v2}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getCurrentPosition()I

    move-result v2

    .line 499
    iget-wide v4, v0, Lbl/xh$a;->c:J

    .line 500
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

    .line 501
    if-ne v2, v1, :cond_66

    .line 511
    :goto_47
    iget-object v2, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v6, 0x4e84

    invoke-virtual {v2, v6}, Lbl/aaq;->removeMessages(I)V

    .line 512
    iget-object v2, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v6, 0x4e84

    invoke-virtual {v2, v6}, Lbl/aaq;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 513
    iput v1, v0, Lbl/xh$a;->a:I

    .line 514
    iput v3, v0, Lbl/xh$a;->b:I

    .line 515
    iput-wide v4, v0, Lbl/xh$a;->c:J

    .line 516
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 517
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Lbl/aaq;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_22

    .line 503
    :cond_66
    sub-int v6, v2, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x1388

    if-lt v6, v7, :cond_73

    const/4 v6, 0x3

    if-lt v3, v6, :cond_82

    .line 504
    :cond_73
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v1, 0x4e84

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 505
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    goto :goto_22

    .line 508
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

    .line 509
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    goto :goto_47
.end method

.method private c(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 521
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 522
    iget-object v1, p0, Lbl/xi;->b:Lbl/aaq;

    const v2, 0x4c4c0a

    invoke-virtual {v1, v2}, Lbl/aaq;->removeMessages(I)V

    .line 523
    const/4 v1, 0x0

    const/16 v2, 0x2bd

    invoke-virtual {p0, v1, v2, v3}, Lbl/xi;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 524
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 525
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 526
    :cond_24
    const v0, 0x7f0c0014

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    .line 537
    :goto_2a
    return-void

    .line 529
    :cond_2b
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 530
    invoke-virtual {p0, v4}, Lbl/xi;->c(Z)V

    .line 534
    :goto_36
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lbl/xi;->v()V

    .line 535
    :cond_3d
    invoke-virtual {p0}, Lbl/xi;->R()V

    .line 536
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lbl/xi;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    goto :goto_2a

    .line 532
    :cond_4e
    invoke-virtual {p0}, Lbl/xi;->A()V

    goto :goto_36
.end method

.method private d(Z)V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lbl/xi;->n:Landroid/view/View;

    if-nez v0, :cond_13

    .line 746
    const v0, 0x7f08013c

    invoke-virtual {p0, v0}, Lbl/xi;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbl/xi;->n:Landroid/view/View;

    .line 748
    :cond_13
    iget-object v1, p0, Lbl/xi;->n:Landroid/view/View;

    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 749
    return-void

    .line 748
    :cond_1c
    const/16 v0, 0x8

    goto :goto_18
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const v1, 0x4c4c0a

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 684
    invoke-virtual {p0}, Lbl/xi;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/bll;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 685
    const p1, 0x7f0c000e

    .line 687
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

    .line 688
    :cond_2b
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    if-eqz v0, :cond_36

    .line 689
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    sget-object v1, Lbl/xi;->error_message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbl/aar;->a(Ljava/lang/String;)V

    .line 691
    :cond_36
    const/4 v0, 0x0

    sput-object v0, Lbl/xi;->error_message:Ljava/lang/String;

    .line 692
    return-void
.end method

.method private hideSeekPreview()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 160
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 161
    const-string v0, "SeekPreview"

    const-string v1, "hideSeekPreview: gone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_12
    return-void
.end method

.method private initSeekPreview(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 134
    const v0, 0x7f0801f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 135
    if-eqz v0, :cond_56

    .line 136
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    .line 137
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    .line 138
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->seekPreviewTimeCurrent:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->seekPreviewTimeTotal:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    .line 141
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 142
    const-string v0, "SeekPreview"

    const-string v1, "initSeekPreview: initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_55
    return-void

    .line 144
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

    .line 869
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

    .line 870
    iget-wide v0, p0, Lbl/xi;->currentCid:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_42

    .line 871
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: invalid cid, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :goto_41
    return-void

    .line 875
    :cond_42
    iget-object v0, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 876
    :cond_4e
    iget-wide v0, p0, Lbl/xi;->currentAid:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_5c

    .line 877
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: invalid aid and bvid, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 882
    :cond_5c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbl/xi$6;

    invoke-direct {v1, p0}, Lbl/xi$6;-><init>(Lbl/xi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1001
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_41
.end method

.method private removeHideSeekPreviewCallback()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 167
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xi;->hideSeekPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 169
    :cond_b
    return-void
.end method

.method private showSeekPreview()V
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    .line 150
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 152
    const-string v0, "SeekPreview"

    const-string v1, "showSeekPreview: visible"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_16
    invoke-direct {p0}, Lbl/xi;->removeHideSeekPreviewCallback()V

    .line 155
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xi;->hideSeekPreviewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    return-void
.end method

.method private updateSeekPreview(II)V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lbl/xi;->updateSeekPreview(IIZ)V

    .line 173
    return-void
.end method

.method private updateSeekPreview(IIZ)V
    .locals 4

    .prologue
    .line 176
    const-string v0, "SeekPreview"

    const-string v1, "=== updateSeekPreview called ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
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

    .line 178
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

    .line 180
    iget-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_69

    .line 181
    iget-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 182
    iget-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 184
    :cond_69
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeCurrent:Landroid/widget/TextView;

    if-eqz v0, :cond_77

    .line 185
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeCurrent:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_77
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeTotal:Landroid/widget/TextView;

    if-eqz v0, :cond_85

    .line 188
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeTotal:Landroid/widget/TextView;

    int-to-long v2, p2

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_85
    if-nez p3, :cond_9a

    .line 192
    iget-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    if-eqz v0, :cond_99

    .line 193
    iget-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    const-string v0, "SeekPreview"

    const-string v1, "updateSeekPreview: snapshot hidden (long press)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_99
    :goto_99
    return-void

    .line 199
    :cond_9a
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    if-eqz v0, :cond_99

    .line 200
    div-int/lit16 v0, p1, 0x3e8

    .line 201
    const-string v1, "SeekPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snapshot calculation: progress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms, timeSeconds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    new-instance v2, Lbl/xi$3;

    invoke-direct {v2, p0}, Lbl/xi$3;-><init>(Lbl/xi;)V

    invoke-virtual {v1, v0, v2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->loadSnapshotAsync(ILcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;)V

    goto :goto_99
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/xi;->c(Z)V

    .line 715
    return-void
.end method

.method public B()V
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-nez v0, :cond_7

    .line 729
    :goto_6
    return-void

    .line 728
    :cond_7
    invoke-super {p0}, Lbl/xh;->B()V

    goto :goto_6
.end method

.method public C()V
    .locals 1

    .prologue
    .line 733
    invoke-super {p0}, Lbl/xh;->C()V

    .line 734
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 735
    if-eqz v0, :cond_c

    .line 736
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->release()V

    .line 738
    :cond_c
    invoke-virtual {p0}, Lbl/xi;->m()Lbl/yd;

    move-result-object v0

    .line 739
    if-eqz v0, :cond_15

    .line 740
    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 742
    :cond_15
    return-void
.end method

.method public E()V
    .locals 1

    .prologue
    .line 558
    invoke-super {p0}, Lbl/xh;->E()V

    .line 559
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 560
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 562
    :cond_d
    return-void
.end method

.method public F()V
    .locals 1

    .prologue
    .line 753
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-nez v0, :cond_7

    .line 760
    :goto_6
    return-void

    .line 756
    :cond_7
    invoke-virtual {p0}, Lbl/xi;->L()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 757
    invoke-virtual {p0}, Lbl/xi;->A()V

    .line 759
    :cond_10
    invoke-super {p0}, Lbl/xh;->F()V

    goto :goto_6
.end method

.method public G()V
    .locals 1

    .prologue
    .line 566
    invoke-super {p0}, Lbl/xh;->G()V

    .line 567
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 568
    return-void
.end method

.method public M()V
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_12

    .line 1008
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setText(I)V

    .line 1009
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 1011
    :cond_12
    return-void
.end method

.method public N()V
    .locals 2

    .prologue
    .line 1025
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->isShown()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1029
    :cond_c
    :goto_c
    return-void

    .line 1028
    :cond_d
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    goto :goto_c
.end method

.method protected O()Z
    .locals 1

    .prologue
    .line 1033
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

    .line 371
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    .line 376
    :cond_9
    :goto_9
    return-void

    .line 374
    :cond_a
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_9
.end method

.method protected Q()V
    .locals 7

    .prologue
    const v6, 0x4c4c08

    const-wide/16 v4, 0x0

    .line 571
    iget-wide v0, p0, Lbl/xi;->p:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    .line 572
    iput-wide v4, p0, Lbl/xi;->p:J

    .line 574
    :cond_12
    invoke-direct {p0}, Lbl/xi;->V()V

    .line 575
    iget-wide v0, p0, Lbl/xi;->p:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_21
    iget-boolean v0, p0, Lbl/xi;->isSliding:Z

    if-nez v0, :cond_38

    .line 576
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v0

    .line 577
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v1

    .line 578
    if-lez v0, :cond_38

    const/4 v2, -0x1

    if-le v1, v2, :cond_38

    .line 579
    invoke-direct {p0, v1, v0}, Lbl/xi;->b(II)V

    .line 580
    invoke-direct {p0, v1, v0}, Lbl/xi;->a(II)V

    .line 583
    :cond_38
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v6}, Lbl/aaq;->removeMessages(I)V

    .line 584
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 585
    iget-wide v0, p0, Lbl/xi;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbl/xi;->p:J

    .line 586
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v6, v2, v3}, Lbl/aaq;->sendEmptyMessageDelayed(IJ)Z

    .line 590
    :goto_51
    return-void

    .line 588
    :cond_52
    iput-wide v4, p0, Lbl/xi;->p:J

    goto :goto_51
.end method

.method protected R()V
    .locals 4

    .prologue
    .line 1038
    iget-object v0, p0, Lbl/xi;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lbl/xi;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-nez v1, :cond_f

    .line 1049
    :cond_e
    :goto_e
    return-void

    .line 1041
    :cond_f
    iget-object v1, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 1042
    invoke-static {v1}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v0

    .line 1043
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v2}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1048
    :cond_42
    :goto_42
    iget-object v1, p0, Lbl/xi;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1045
    :cond_48
    iget-object v2, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v2, :cond_42

    iget-object v2, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    if-eqz v2, :cond_42

    iget-object v2, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v2, :cond_42

    iget-object v2, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_42

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_42
.end method

.method protected S()I
    .locals 1

    .prologue
    .line 1116
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    .line 1117
    if-eqz v0, :cond_b

    .line 1118
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1120
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
    .line 381
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 382
    const/4 v0, 0x0

    .line 384
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
    .line 111
    const v0, 0x7f0a0021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Message;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 1085
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 1086
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    invoke-direct {p0, v0}, Lbl/xi;->a(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 1088
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Lbl/xi;->a(Landroid/os/Message;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lbl/xf;)V
    .locals 1

    .prologue
    .line 1078
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/app/Activity;Lbl/xf;)V

    .line 1079
    const/4 v0, 0x4

    invoke-virtual {p2, v0, p0}, Lbl/xf;->a(ILbl/bbb;)V

    .line 1080
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 619
    invoke-super {p0, p1}, Lbl/xh;->a(Landroid/content/Intent;)V

    .line 620
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 625
    :cond_13
    :goto_13
    return-void

    .line 623
    :cond_14
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 624
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lbl/xi;->a(Landroid/content/Intent;Z)V

    goto :goto_13
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 116
    const v0, 0x7f0800f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    .line 117
    const v0, 0x7f08005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->o:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f080042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    .line 119
    const v0, 0x7f080136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    .line 120
    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->h:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f08012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->j:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f08012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->i:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f08010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    iput-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    .line 124
    const v0, 0x7f080044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    iput-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    .line 125
    new-instance v0, Lbl/aar;

    invoke-direct {v0}, Lbl/aar;-><init>()V

    iput-object v0, p0, Lbl/xi;->k:Lbl/aar;

    .line 126
    iget-object v1, p0, Lbl/xi;->k:Lbl/aar;

    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lbl/xi;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lbl/aar;->a(Landroid/view/ViewGroup;)V

    .line 127
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->b()V

    .line 128
    invoke-direct {p0, p1}, Lbl/xi;->initSeekPreview(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbl/xi;->a(Landroid/content/Intent;Z)V

    .line 130
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 131
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1094
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->NEW_RESOLVE_TASK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_1a

    .line 1095
    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    if-eqz v0, :cond_16

    .line 1096
    iget-object v1, p0, Lbl/xi;->c:Lbl/yd;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lbl/yd;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1101
    :cond_16
    :goto_16
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 1102
    return-void

    .line 1098
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

    .line 1099
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
    .line 718
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_9

    .line 719
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->play(Z)V

    .line 721
    :cond_9
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 404
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_11

    .line 406
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;->getInstance()Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;->unregister(I)V

    .line 408
    :cond_11
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-eqz v0, :cond_1a

    .line 409
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->clearCache()V

    .line 411
    :cond_1a
    invoke-super {p0}, Lbl/xh;->d()V

    .line 412
    invoke-virtual {p0}, Lbl/xi;->r()V

    .line 413
    return-void
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_f

    .line 1017
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setText(I)V

    .line 1018
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 1020
    :cond_f
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lbl/xh;->e()V

    .line 227
    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 228
    invoke-virtual {p0}, Lbl/xi;->B()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xi;->r:Z

    .line 231
    :cond_f
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Lbl/xh;->f()V

    .line 236
    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lbl/xi;->r:Z

    if-eqz v0, :cond_10

    .line 237
    invoke-virtual {p0}, Lbl/xi;->F()V

    .line 239
    :cond_10
    return-void
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 251
    packed-switch p1, :pswitch_data_106

    move v1, v2

    .line 276
    :goto_6
    return v1

    .line 254
    :pswitch_7
    iget-boolean v0, p0, Lbl/xi;->isSliding:Z

    if-nez v0, :cond_18

    .line 255
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lbl/aal;->a(I)V

    .line 256
    iput-boolean v1, p0, Lbl/xi;->isSliding:Z

    .line 257
    iput-boolean v2, p0, Lbl/xi;->isLongPress:Z

    .line 259
    :cond_18
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_20

    .line 260
    iput-boolean v1, p0, Lbl/xi;->isLongPress:Z

    .line 262
    :cond_20
    const/16 v0, 0x16

    if-ne p1, v0, :cond_fc

    move v0, v1

    :goto_25
    invoke-static {v0}, Lbl/aal;->a(Z)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 263
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 264
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v4

    .line 265
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getDuration()I

    move-result v0

    .line 266
    :goto_41
    const-string v5, "SeekPreview"

    const-string v6, "=== f() called ==="

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
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

    .line 268
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

    .line 269
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

    .line 270
    const-string v4, "SeekPreview"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bottomSeekBar duration="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-eqz v0, :cond_102

    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_db
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0, v3, v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a(IZ)V

    .line 272
    invoke-direct {p0}, Lbl/xi;->showSeekPreview()V

    .line 273
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v0

    iget-boolean v4, p0, Lbl/xi;->isLongPress:Z

    if-nez v4, :cond_f7

    move v2, v1

    :cond_f7
    invoke-direct {p0, v3, v0, v2}, Lbl/xi;->updateSeekPreview(IIZ)V

    goto/16 :goto_6

    :cond_fc
    move v0, v2

    .line 262
    goto/16 :goto_25

    :cond_ff
    move v0, v2

    .line 265
    goto/16 :goto_41

    .line 270
    :cond_102
    const-string v0, "null"

    goto :goto_db

    .line 251
    nop

    :pswitch_data_106
    .packed-switch 0x15
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    sparse-switch p1, :sswitch_data_aa

    move v0, v1

    .line 322
    :goto_8
    return v0

    .line 285
    :sswitch_9
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 286
    invoke-virtual {p0}, Lbl/xi;->v()V

    goto :goto_8

    :cond_13
    move v0, v1

    .line 289
    goto :goto_8

    .line 292
    :sswitch_15
    invoke-virtual {p0}, Lbl/xi;->tt()V

    goto :goto_8

    .line 295
    :sswitch_19
    iget-boolean v2, p0, Lbl/xi;->isSliding:Z

    if-eqz v2, :cond_5c

    .line 296
    invoke-static {v1}, Lbl/aal;->a(Z)I

    move-result v2

    .line 297
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    int-to-long v4, v3

    .line 298
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

    .line 299
    invoke-virtual {p0, v2}, Lbl/xi;->c(I)V

    .line 300
    invoke-static {}, Lbl/aal;->a()V

    .line 301
    iput-boolean v1, p0, Lbl/xi;->isSliding:Z

    .line 302
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

    :cond_5c
    move v0, v1

    .line 304
    goto :goto_8

    .line 306
    :sswitch_5e
    iget-boolean v2, p0, Lbl/xi;->isSliding:Z

    if-eqz v2, :cond_a1

    .line 307
    invoke-static {v0}, Lbl/aal;->a(Z)I

    move-result v2

    .line 308
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    int-to-long v4, v3

    .line 309
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

    .line 310
    invoke-virtual {p0, v2}, Lbl/xi;->c(I)V

    .line 311
    invoke-static {}, Lbl/aal;->a()V

    .line 312
    iput-boolean v1, p0, Lbl/xi;->isSliding:Z

    .line 313
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

    :cond_a1
    move v0, v1

    .line 315
    goto/16 :goto_8

    .line 319
    :sswitch_a4
    invoke-direct {p0}, Lbl/xi;->T()V

    goto/16 :goto_8

    .line 283
    nop

    :sswitch_data_aa
    .sparse-switch
        0x4 -> :sswitch_9
        0x13 -> :sswitch_15
        0x14 -> :sswitch_15
        0x15 -> :sswitch_19
        0x16 -> :sswitch_5e
        0x17 -> :sswitch_a4
        0x42 -> :sswitch_a4
        0xa0 -> :sswitch_a4
    .end sparse-switch
.end method

.method public h()V
    .locals 0

    .prologue
    .line 399
    invoke-super {p0}, Lbl/xh;->h()V

    .line 400
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

    .line 418
    .line 419
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_f

    .line 468
    :cond_e
    :goto_e
    return v2

    .line 422
    :cond_f
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_d0

    .line 463
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

    .line 467
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

    .line 468
    if-nez v0, :cond_4b

    invoke-super {p0, p1}, Lbl/xh;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_4b
    move v2, v1

    goto :goto_e

    .line 424
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

    .line 425
    goto :goto_2c

    .line 427
    :sswitch_62
    invoke-direct {p0}, Lbl/xi;->U()V

    .line 428
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_cc

    iget-object v3, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->isAttachedToView(Landroid/view/ViewGroup;)Z

    move-result v3

    if-nez v3, :cond_cc

    .line 430
    iget-object v3, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->attachVideoView(Landroid/view/ViewGroup;)V

    move v0, v1

    goto :goto_2c

    .line 434
    :sswitch_7a
    invoke-direct {p0, p1}, Lbl/xi;->b(Landroid/os/Message;)V

    move v0, v1

    .line 435
    goto :goto_2c

    .line 437
    :sswitch_7f
    invoke-virtual {p0}, Lbl/xi;->Q()V

    move v0, v1

    .line 438
    goto :goto_2c

    .line 440
    :sswitch_84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 441
    if-eqz v0, :cond_cc

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 443
    cmp-long v0, v4, v10

    if-ltz v0, :cond_a3

    const-wide/16 v6, 0x4650

    cmp-long v0, v4, v6

    if-gez v0, :cond_a3

    .line 444
    const v0, 0x7f0c0013

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    :cond_a3
    move v0, v1

    .line 446
    goto :goto_2c

    .line 449
    :sswitch_a5
    const-string v0, "PlaySpeed"

    const-string v3, "[XI_10201] RESOLVE_PREPARED received, calling c(message)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0, p1}, Lbl/xi;->c(Landroid/os/Message;)V

    move v0, v1

    .line 451
    goto/16 :goto_2c

    .line 453
    :sswitch_b2
    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 454
    invoke-virtual {p0}, Lbl/xi;->C()V

    .line 456
    :cond_bb
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v6}, Lbl/aaq;->removeMessages(I)V

    .line 457
    const v0, 0x7f0c0010

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    move v0, v1

    .line 458
    goto/16 :goto_2c

    :sswitch_c9
    move v0, v1

    .line 461
    goto/16 :goto_2c

    :cond_cc
    move v0, v1

    goto/16 :goto_2c

    .line 422
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
    .line 243
    invoke-virtual {p0}, Lbl/xi;->a()Lbl/xh;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 244
    invoke-virtual {p0}, Lbl/xi;->a()Lbl/xh;

    move-result-object v0

    invoke-virtual {v0}, Lbl/xh;->l()Landroid/view/ViewGroup;

    move-result-object v0

    .line 246
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    goto :goto_e
.end method

.method public m()Lbl/yd;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    return-object v0
.end method

.method public n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    return-object v0
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 812
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 814
    invoke-static {}, Lmybl/VideoViewParams;->reportPlaybackFailed()V

    .line 816
    invoke-virtual {p0}, Lbl/xi;->y()Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    move-result-object v0

    .line 817
    iget v1, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->d:I

    iget v2, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->e:I

    if-lt v1, v2, :cond_1b

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    sget-object v1, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->NONE:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    invoke-virtual {v0, v1}, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 821
    :cond_1b
    :goto_1b
    return v3

    .line 820
    :cond_1c
    const v0, 0x7f0c000f

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    goto :goto_1b
.end method

.method public varargs onExtraInfo(I[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1053
    invoke-super {p0, p1, p2}, Lbl/xh;->onExtraInfo(I[Ljava/lang/Object;)V

    .line 1054
    const v0, 0x10018

    if-ne p1, v0, :cond_17

    .line 1055
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_16

    .line 1056
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    new-instance v1, Lbl/xi$7;

    invoke-direct {v1, p0}, Lbl/xi$7;-><init>(Lbl/xi;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->post(Ljava/lang/Runnable;)Z

    .line 1074
    :cond_16
    :goto_16
    return-void

    .line 1064
    :cond_17
    const v0, 0x10019

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_16

    .line 1067
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

    .line 769
    .line 770
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 771
    const/16 v0, 0x321

    if-eq p2, v0, :cond_56

    .line 772
    packed-switch p2, :pswitch_data_60

    .line 803
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 806
    :goto_e
    return v0

    .line 774
    :pswitch_f
    invoke-virtual {p0}, Lbl/xi;->M()V

    .line 775
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    if-eqz v0, :cond_d

    .line 776
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->removeMessages(I)V

    .line 777
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 778
    const/4 v0, 0x0

    check-cast v0, Lbl/xh$a;

    invoke-static {}, Lbl/xh$a;->a()Lbl/xh$a;

    move-result-object v0

    .line 779
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    iput v3, v0, Lbl/xh$a;->a:I

    .line 780
    iput v1, v0, Lbl/xh$a;->b:I

    .line 781
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lbl/xh$a;->c:J

    .line 782
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 783
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d

    .line 787
    :pswitch_3e
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    if-eqz v0, :cond_47

    .line 788
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->removeMessages(I)V

    .line 790
    :cond_47
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_d

    .line 791
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    new-instance v1, Lbl/xi$5;

    invoke-direct {v1, p0}, Lbl/xi$5;-><init>(Lbl/xi;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->post(Ljava/lang/Runnable;)Z

    goto :goto_d

    .line 805
    :cond_56
    const-string v0, "BasicTVPlayerAdapter"

    const-string v2, "media not seekable"

    invoke-static {v0, v2}, Ltv/danmaku/android/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 806
    goto :goto_e

    .line 772
    nop

    :pswitch_data_60
    .packed-switch 0x2bd
        :pswitch_f
        :pswitch_3e
    .end packed-switch
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 6

    .prologue
    .line 826
    const-string v0, "PlaySpeed"

    const-string v1, "[XI_ON_PREPARED] onPrepared() called, video ready to play"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-static {}, Lmybl/VideoViewParams;->reportPlaybackSuccess()V

    .line 829
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 830
    invoke-virtual {p0}, Lbl/xi;->F()V

    .line 832
    :cond_13
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 833
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->c()V

    .line 835
    :cond_20
    invoke-virtual {p0}, Lbl/xi;->O()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 836
    invoke-virtual {p0}, Lbl/xi;->N()V

    .line 838
    :cond_29
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const v1, 0x4c4c08

    invoke-virtual {v0, v1}, Lbl/aaq;->sendEmptyMessage(I)Z

    .line 840
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 841
    if-eqz v0, :cond_158

    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v1, :cond_158

    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    if-eqz v1, :cond_158

    .line 842
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 843
    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    iput-wide v2, p0, Lbl/xi;->currentAid:J

    .line 844
    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iput-wide v2, p0, Lbl/xi;->currentCid:J

    .line 845
    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    iput-object v1, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    .line 846
    iget v1, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    iput v1, p0, Lbl/xi;->currentPage:I

    .line 848
    const-string v1, "VideoShot"

    const-string v2, "========== ResolveParams Details =========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
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

    .line 850
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

    .line 851
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

    .line 852
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

    .line 853
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

    .line 854
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

    .line 855
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

    .line 856
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

    .line 857
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

    .line 858
    const-string v0, "VideoShot"

    const-string v1, "========== End ResolveParams =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-direct {p0}, Lbl/xi;->loadVideoShot()V

    .line 865
    :goto_154
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 866
    return-void

    .line 862
    :cond_158
    const-string v0, "VideoShot"

    const-string v1, "onPrepared: params is null or incomplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_154
.end method

.method public r()V
    .locals 4

    .prologue
    .line 697
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    if-eqz v0, :cond_9

    .line 698
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 700
    :cond_9
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_1a

    .line 701
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->attachDanmakuView(Landroid/view/ViewGroup;ZI)V

    .line 703
    :try_start_15
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->release()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_23

    .line 707
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0}, Lbl/aaq;->a()V

    .line 708
    invoke-super {p0}, Lbl/xh;->r()V

    .line 709
    return-void

    .line 704
    :catch_23
    move-exception v0

    goto :goto_1a
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 357
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
    .line 336
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xi;->a(Ljava/lang/Runnable;)V

    .line 337
    invoke-virtual {p0}, Lbl/xi;->P()V

    .line 338
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v0, v2, v3}, Lbl/xi;->a(Ljava/lang/Runnable;J)V

    .line 339
    :cond_13
    invoke-super {p0}, Lbl/xh;->t()V

    .line 340
    return-void
.end method

.method public tt()V
    .locals 4

    .prologue
    .line 343
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_15

    .line 344
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lbl/xi;->v()V

    .line 351
    :goto_d
    invoke-super {p0}, Lbl/xh;->t()V

    .line 352
    return-void

    .line 345
    :cond_11
    invoke-virtual {p0}, Lbl/xi;->P()V

    goto :goto_d

    .line 347
    :cond_15
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xi;->a(Ljava/lang/Runnable;)V

    .line 348
    invoke-virtual {p0}, Lbl/xi;->P()V

    .line 349
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v0, v2, v3}, Lbl/xi;->a(Ljava/lang/Runnable;J)V

    goto :goto_d
.end method

.method public u()V
    .locals 1

    .prologue
    .line 542
    invoke-super {p0}, Lbl/xh;->u()V

    .line 543
    invoke-virtual {p0}, Lbl/xi;->Q()V

    .line 544
    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 545
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 547
    :cond_10
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 363
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 364
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 367
    :cond_13
    invoke-super {p0}, Lbl/xh;->v()V

    .line 368
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 552
    invoke-super {p0}, Lbl/xh;->w()V

    .line 553
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 554
    return-void
.end method
