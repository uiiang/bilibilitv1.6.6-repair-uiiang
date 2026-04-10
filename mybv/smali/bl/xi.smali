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

.field private d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

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

.field private t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 55
    iput-boolean v0, p0, Lbl/xi;->isSliding:Z

    .line 56
    iput-boolean v0, p0, Lbl/xi;->r:Z

    .line 57
    iput-boolean v0, p0, Lbl/xi;->s:Z

    .line 58
    new-instance v0, Lbl/xi$1;

    invoke-direct {v0, p0}, Lbl/xi$1;-><init>(Lbl/xi;)V

    iput-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lbl/aaq;

    invoke-direct {v0, p0}, Lbl/aaq;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    .line 74
    return-void
.end method

.method private T()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lbl/xi;->D()V

    .line 191
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

    .line 193
    :cond_18
    :goto_18
    return-void

    .line 192
    :cond_19
    invoke-virtual {p0}, Lbl/xi;->P()V

    invoke-super {p0}, Lbl/xh;->t()V

    goto :goto_18
.end method

.method private U()V
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    .line 334
    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    iget-boolean v0, p0, Lbl/xi;->s:Z

    if-eqz v0, :cond_11

    .line 346
    :cond_10
    :goto_10
    return-void

    .line 337
    :cond_11
    new-instance v0, Lbl/xi$2;

    invoke-direct {v0, p0}, Lbl/xi$2;-><init>(Lbl/xi;)V

    invoke-interface {v1, v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->addPlayerEventListener(Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;)V

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xi;->s:Z

    goto :goto_10
.end method

.method private V()V
    .locals 7

    .prologue
    .line 453
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 454
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

    .line 455
    return-void
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-nez v0, :cond_5

    .line 467
    :cond_4
    :goto_4
    return-void

    .line 461
    :cond_5
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->setMax(I)V

    .line 462
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->setProgress(I)V

    .line 463
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_4

    .line 465
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

    .line 488
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v11

    .line 489
    if-nez v11, :cond_9

    .line 540
    :goto_8
    return-void

    .line 492
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_1a

    invoke-static {v11, v0}, Lbl/zs;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    move-object v10, v0

    .line 494
    :goto_14
    if-nez v10, :cond_1c

    .line 495
    invoke-virtual {v11}, Landroid/app/Activity;->finish()V

    goto :goto_8

    :cond_1a
    move-object v10, v9

    .line 493
    goto :goto_14

    .line 498
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

    .line 499
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 502
    :cond_41
    iget-object v0, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 503
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmybl/VideoViewParams;->setCurrentVideo(Ljava/lang/String;)V

    .line 505
    new-instance v2, Lbl/yh;

    invoke-direct {v2}, Lbl/yh;-><init>()V

    .line 506
    iput-object v10, v2, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 507
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

    .line 508
    new-instance v0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;

    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v3, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-virtual {p0}, Lbl/xi;->S()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;-><init>(Landroid/content/Context;Ltv/danmaku/videoplayer/core/videoview/IVideoParams;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;I)V

    iput-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    .line 509
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    iget-object v1, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-virtual {v0, v1}, Lbl/yd;->a(Ltv/danmaku/videoplayer/core/context/IPlayerContext;)V

    .line 510
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    new-instance v1, Lbl/xd;

    invoke-direct {v1}, Lbl/xd;-><init>()V

    invoke-virtual {v0, v1}, Lbl/yd;->a(Lbl/xd;)V

    .line 511
    invoke-virtual {p0}, Lbl/xi;->c()Lbl/yh;

    move-result-object v0

    iput-object v10, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 512
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v8

    .line 513
    if-nez v8, :cond_b5

    .line 514
    invoke-virtual {v11}, Landroid/app/Activity;->finish()V

    goto/16 :goto_8

    .line 517
    :cond_b5
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    iget-object v1, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v1}, Lbl/yd;->a(Lbl/aaq;)V

    .line 518
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lbl/yd;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 519
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->a()Ljava/util/concurrent/Future;

    .line 520
    invoke-virtual {p0}, Lbl/xi;->R()V

    .line 521
    invoke-static {v8}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-static {v8}, Lbl/yr;->d(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v2

    .line 523
    const-string v0, "CoverDebug"

    const-string v3, "========== xi.d() Cover Info =========="

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
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

    .line 526
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v0, :cond_168

    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_168

    .line 527
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_168

    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-le v0, v12, :cond_168

    .line 528
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 531
    :goto_114
    invoke-virtual {v8}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 532
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_146

    .line 533
    iget-object v1, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v1}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
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

    .line 539
    iget-object v1, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v1, v2, v0}, Lbl/aar;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 535
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
    .line 803
    if-nez p1, :cond_4

    .line 804
    sget-object p1, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_SCREEN:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    .line 806
    :cond_4
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setAspectRatio(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 807
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_14

    .line 809
    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setAspectRatio(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 811
    :cond_14
    return-void
.end method

.method static synthetic access$002(Lbl/xi;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lbl/xi;->s:Z

    return p1
.end method

.method static synthetic access$100(Lbl/xi;)Lcom/bilibili/tv/player/widget/PlayerBufferingView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    return-object v0
.end method

.method private b(II)V
    .locals 4

    .prologue
    .line 470
    const/4 v0, -0x1

    if-le p1, v0, :cond_5

    if-gtz p2, :cond_6

    .line 475
    :cond_5
    :goto_5
    return-void

    .line 473
    :cond_6
    iget-object v0, p0, Lbl/xi;->j:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
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
    .line 349
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/xh$a;

    .line 350
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v2

    .line 351
    if-eqz v0, :cond_18

    if-eqz v2, :cond_18

    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lbl/xi;->L()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 352
    :cond_18
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v1, 0x4e84

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 353
    invoke-virtual {p0}, Lbl/xi;->N()V

    .line 378
    :goto_22
    return-void

    .line 356
    :cond_23
    iget v3, v0, Lbl/xh$a;->b:I

    .line 357
    iget v1, v0, Lbl/xh$a;->a:I

    .line 358
    invoke-interface {v2}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getCurrentPosition()I

    move-result v2

    .line 359
    iget-wide v4, v0, Lbl/xh$a;->c:J

    .line 360
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

    .line 361
    if-ne v2, v1, :cond_66

    .line 371
    :goto_47
    iget-object v2, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v6, 0x4e84

    invoke-virtual {v2, v6}, Lbl/aaq;->removeMessages(I)V

    .line 372
    iget-object v2, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v6, 0x4e84

    invoke-virtual {v2, v6}, Lbl/aaq;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 373
    iput v1, v0, Lbl/xh$a;->a:I

    .line 374
    iput v3, v0, Lbl/xh$a;->b:I

    .line 375
    iput-wide v4, v0, Lbl/xh$a;->c:J

    .line 376
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Lbl/aaq;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_22

    .line 363
    :cond_66
    sub-int v6, v2, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x1388

    if-lt v6, v7, :cond_73

    const/4 v6, 0x3

    if-lt v3, v6, :cond_82

    .line 364
    :cond_73
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v1, 0x4e84

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 365
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    goto :goto_22

    .line 368
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

    .line 369
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    goto :goto_47
.end method

.method private c(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 381
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 382
    iget-object v1, p0, Lbl/xi;->b:Lbl/aaq;

    const v2, 0x4c4c0a

    invoke-virtual {v1, v2}, Lbl/aaq;->removeMessages(I)V

    .line 383
    const/4 v1, 0x0

    const/16 v2, 0x2bd

    invoke-virtual {p0, v1, v2, v3}, Lbl/xi;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 384
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 385
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 386
    :cond_24
    const v0, 0x7f0c0014

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    .line 397
    :goto_2a
    return-void

    .line 389
    :cond_2b
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 390
    invoke-virtual {p0, v4}, Lbl/xi;->c(Z)V

    .line 394
    :goto_36
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lbl/xi;->v()V

    .line 395
    :cond_3d
    invoke-virtual {p0}, Lbl/xi;->R()V

    .line 396
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lbl/xi;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    goto :goto_2a

    .line 392
    :cond_4e
    invoke-virtual {p0}, Lbl/xi;->A()V

    goto :goto_36
.end method

.method private d(Z)V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lbl/xi;->n:Landroid/view/View;

    if-nez v0, :cond_13

    .line 606
    const v0, 0x7f08013c

    invoke-virtual {p0, v0}, Lbl/xi;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbl/xi;->n:Landroid/view/View;

    .line 608
    :cond_13
    iget-object v1, p0, Lbl/xi;->n:Landroid/view/View;

    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 609
    return-void

    .line 608
    :cond_1c
    const/16 v0, 0x8

    goto :goto_18
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const v1, 0x4c4c0a

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 544
    invoke-virtual {p0}, Lbl/xi;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/bll;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 545
    const p1, 0x7f0c000e

    .line 547
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

    .line 548
    :cond_2b
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    if-eqz v0, :cond_36

    .line 549
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    sget-object v1, Lbl/xi;->error_message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbl/aar;->a(Ljava/lang/String;)V

    .line 551
    :cond_36
    const/4 v0, 0x0

    sput-object v0, Lbl/xi;->error_message:Ljava/lang/String;

    .line 552
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/xi;->c(Z)V

    .line 575
    return-void
.end method

.method public B()V
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-nez v0, :cond_7

    .line 589
    :goto_6
    return-void

    .line 588
    :cond_7
    invoke-super {p0}, Lbl/xh;->B()V

    goto :goto_6
.end method

.method public C()V
    .locals 1

    .prologue
    .line 593
    invoke-super {p0}, Lbl/xh;->C()V

    .line 594
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_c

    .line 596
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->release()V

    .line 598
    :cond_c
    invoke-virtual {p0}, Lbl/xi;->m()Lbl/yd;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_15

    .line 600
    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 602
    :cond_15
    return-void
.end method

.method public E()V
    .locals 1

    .prologue
    .line 418
    invoke-super {p0}, Lbl/xh;->E()V

    .line 419
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 420
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 422
    :cond_d
    return-void
.end method

.method public F()V
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-nez v0, :cond_7

    .line 620
    :goto_6
    return-void

    .line 616
    :cond_7
    invoke-virtual {p0}, Lbl/xi;->L()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 617
    invoke-virtual {p0}, Lbl/xi;->A()V

    .line 619
    :cond_10
    invoke-super {p0}, Lbl/xh;->F()V

    goto :goto_6
.end method

.method public G()V
    .locals 1

    .prologue
    .line 426
    invoke-super {p0}, Lbl/xh;->G()V

    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 428
    return-void
.end method

.method public M()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_12

    .line 706
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setText(I)V

    .line 707
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 709
    :cond_12
    return-void
.end method

.method public N()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->isShown()Z

    move-result v0

    if-nez v0, :cond_d

    .line 727
    :cond_c
    :goto_c
    return-void

    .line 726
    :cond_d
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    goto :goto_c
.end method

.method protected O()Z
    .locals 1

    .prologue
    .line 731
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

    .line 234
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    .line 239
    :cond_9
    :goto_9
    return-void

    .line 237
    :cond_a
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_9
.end method

.method protected Q()V
    .locals 7

    .prologue
    const v6, 0x4c4c08

    const-wide/16 v4, 0x0

    .line 431
    iget-wide v0, p0, Lbl/xi;->p:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    .line 432
    iput-wide v4, p0, Lbl/xi;->p:J

    .line 434
    :cond_12
    invoke-direct {p0}, Lbl/xi;->V()V

    .line 435
    iget-wide v0, p0, Lbl/xi;->p:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_21
    iget-boolean v0, p0, Lbl/xi;->isSliding:Z

    if-nez v0, :cond_38

    .line 436
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v0

    .line 437
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v1

    .line 438
    if-lez v0, :cond_38

    const/4 v2, -0x1

    if-le v1, v2, :cond_38

    .line 439
    invoke-direct {p0, v1, v0}, Lbl/xi;->b(II)V

    .line 440
    invoke-direct {p0, v1, v0}, Lbl/xi;->a(II)V

    .line 443
    :cond_38
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v6}, Lbl/aaq;->removeMessages(I)V

    .line 444
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 445
    iget-wide v0, p0, Lbl/xi;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbl/xi;->p:J

    .line 446
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v6, v2, v3}, Lbl/aaq;->sendEmptyMessageDelayed(IJ)Z

    .line 450
    :goto_51
    return-void

    .line 448
    :cond_52
    iput-wide v4, p0, Lbl/xi;->p:J

    goto :goto_51
.end method

.method protected R()V
    .locals 4

    .prologue
    .line 736
    iget-object v0, p0, Lbl/xi;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lbl/xi;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-nez v1, :cond_f

    .line 747
    :cond_e
    :goto_e
    return-void

    .line 739
    :cond_f
    iget-object v1, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 740
    invoke-static {v1}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 742
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

    .line 746
    :cond_42
    :goto_42
    iget-object v1, p0, Lbl/xi;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 743
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

    .line 744
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
    .line 814
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    .line 815
    if-eqz v0, :cond_b

    .line 816
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 818
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
    .line 244
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 245
    const/4 v0, 0x0

    .line 247
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
    .line 78
    const v0, 0x7f0a0021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Message;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 783
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 784
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    invoke-direct {p0, v0}, Lbl/xi;->a(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 786
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Lbl/xi;->a(Landroid/os/Message;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lbl/xf;)V
    .locals 1

    .prologue
    .line 776
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/app/Activity;Lbl/xf;)V

    .line 777
    const/4 v0, 0x4

    invoke-virtual {p2, v0, p0}, Lbl/xf;->a(ILbl/bbb;)V

    .line 778
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 479
    invoke-super {p0, p1}, Lbl/xh;->a(Landroid/content/Intent;)V

    .line 480
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 485
    :cond_13
    :goto_13
    return-void

    .line 483
    :cond_14
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 484
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lbl/xi;->a(Landroid/content/Intent;Z)V

    goto :goto_13
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    const v0, 0x7f0800f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    .line 84
    const v0, 0x7f08005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->o:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f080042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    .line 86
    const v0, 0x7f080136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    .line 87
    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->h:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f08012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->j:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f08012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->i:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f08010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    iput-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    .line 91
    const v0, 0x7f080044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    iput-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    .line 92
    new-instance v0, Lbl/aar;

    invoke-direct {v0}, Lbl/aar;-><init>()V

    iput-object v0, p0, Lbl/xi;->k:Lbl/aar;

    .line 93
    iget-object v1, p0, Lbl/xi;->k:Lbl/aar;

    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lbl/xi;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lbl/aar;->a(Landroid/view/ViewGroup;)V

    .line 94
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->b()V

    .line 95
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbl/xi;->a(Landroid/content/Intent;Z)V

    .line 96
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 792
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->NEW_RESOLVE_TASK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_1a

    .line 793
    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    if-eqz v0, :cond_16

    .line 794
    iget-object v1, p0, Lbl/xi;->c:Lbl/yd;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lbl/yd;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 799
    :cond_16
    :goto_16
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 800
    return-void

    .line 796
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

    .line 797
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
    .line 578
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_9

    .line 579
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->play(Z)V

    .line 581
    :cond_9
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_11

    .line 269
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;->getInstance()Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;->unregister(I)V

    .line 271
    :cond_11
    invoke-super {p0}, Lbl/xh;->d()V

    .line 272
    invoke-virtual {p0}, Lbl/xi;->r()V

    .line 273
    return-void
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_f

    .line 715
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setText(I)V

    .line 716
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 718
    :cond_f
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lbl/xh;->e()V

    .line 102
    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 103
    invoke-virtual {p0}, Lbl/xi;->B()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xi;->r:Z

    .line 106
    :cond_f
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lbl/xh;->f()V

    .line 111
    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lbl/xi;->r:Z

    if-eqz v0, :cond_10

    .line 112
    invoke-virtual {p0}, Lbl/xi;->F()V

    .line 114
    :cond_10
    return-void
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 126
    packed-switch p1, :pswitch_data_3a

    move v1, v0

    .line 139
    :goto_6
    return v1

    .line 129
    :pswitch_7
    iget-boolean v2, p0, Lbl/xi;->isSliding:Z

    if-nez v2, :cond_16

    .line 130
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Lbl/aal;->a(I)V

    .line 131
    iput-boolean v1, p0, Lbl/xi;->isSliding:Z

    .line 133
    :cond_16
    const/16 v2, 0x16

    if-ne p1, v2, :cond_1b

    move v0, v1

    :cond_1b
    invoke-static {v0}, Lbl/aal;->a(Z)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 134
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 135
    iget-object v2, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a(IZ)V

    .line 136
    invoke-virtual {p0}, Lbl/xi;->t()V

    goto :goto_6

    .line 126
    nop

    :pswitch_data_3a
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

    .line 146
    sparse-switch p1, :sswitch_data_aa

    move v0, v1

    .line 185
    :goto_8
    return v0

    .line 148
    :sswitch_9
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 149
    invoke-virtual {p0}, Lbl/xi;->v()V

    goto :goto_8

    :cond_13
    move v0, v1

    .line 152
    goto :goto_8

    .line 155
    :sswitch_15
    invoke-virtual {p0}, Lbl/xi;->tt()V

    goto :goto_8

    .line 158
    :sswitch_19
    iget-boolean v2, p0, Lbl/xi;->isSliding:Z

    if-eqz v2, :cond_5c

    .line 159
    invoke-static {v1}, Lbl/aal;->a(Z)I

    move-result v2

    .line 160
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    int-to-long v4, v3

    .line 161
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

    .line 162
    invoke-virtual {p0, v2}, Lbl/xi;->c(I)V

    .line 163
    invoke-static {}, Lbl/aal;->a()V

    .line 164
    iput-boolean v1, p0, Lbl/xi;->isSliding:Z

    .line 165
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

    .line 167
    goto :goto_8

    .line 169
    :sswitch_5e
    iget-boolean v2, p0, Lbl/xi;->isSliding:Z

    if-eqz v2, :cond_a1

    .line 170
    invoke-static {v0}, Lbl/aal;->a(Z)I

    move-result v2

    .line 171
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    int-to-long v4, v3

    .line 172
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

    .line 173
    invoke-virtual {p0, v2}, Lbl/xi;->c(I)V

    .line 174
    invoke-static {}, Lbl/aal;->a()V

    .line 175
    iput-boolean v1, p0, Lbl/xi;->isSliding:Z

    .line 176
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

    .line 178
    goto/16 :goto_8

    .line 182
    :sswitch_a4
    invoke-direct {p0}, Lbl/xi;->T()V

    goto/16 :goto_8

    .line 146
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
    .line 262
    invoke-super {p0}, Lbl/xh;->h()V

    .line 263
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

    .line 278
    .line 279
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_f

    .line 328
    :cond_e
    :goto_e
    return v2

    .line 282
    :cond_f
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_d0

    .line 323
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

    .line 327
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

    .line 328
    if-nez v0, :cond_4b

    invoke-super {p0, p1}, Lbl/xh;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_4b
    move v2, v1

    goto :goto_e

    .line 284
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

    .line 285
    goto :goto_2c

    .line 287
    :sswitch_62
    invoke-direct {p0}, Lbl/xi;->U()V

    .line 288
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_cc

    iget-object v3, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->isAttachedToView(Landroid/view/ViewGroup;)Z

    move-result v3

    if-nez v3, :cond_cc

    .line 290
    iget-object v3, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->attachVideoView(Landroid/view/ViewGroup;)V

    move v0, v1

    goto :goto_2c

    .line 294
    :sswitch_7a
    invoke-direct {p0, p1}, Lbl/xi;->b(Landroid/os/Message;)V

    move v0, v1

    .line 295
    goto :goto_2c

    .line 297
    :sswitch_7f
    invoke-virtual {p0}, Lbl/xi;->Q()V

    move v0, v1

    .line 298
    goto :goto_2c

    .line 300
    :sswitch_84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 301
    if-eqz v0, :cond_cc

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 303
    cmp-long v0, v4, v10

    if-ltz v0, :cond_a3

    const-wide/16 v6, 0x4650

    cmp-long v0, v4, v6

    if-gez v0, :cond_a3

    .line 304
    const v0, 0x7f0c0013

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    :cond_a3
    move v0, v1

    .line 306
    goto :goto_2c

    .line 309
    :sswitch_a5
    const-string v0, "PlaySpeed"

    const-string v3, "[XI_10201] RESOLVE_PREPARED received, calling c(message)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0, p1}, Lbl/xi;->c(Landroid/os/Message;)V

    move v0, v1

    .line 311
    goto/16 :goto_2c

    .line 313
    :sswitch_b2
    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 314
    invoke-virtual {p0}, Lbl/xi;->C()V

    .line 316
    :cond_bb
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v6}, Lbl/aaq;->removeMessages(I)V

    .line 317
    const v0, 0x7f0c0010

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    move v0, v1

    .line 318
    goto/16 :goto_2c

    :sswitch_c9
    move v0, v1

    .line 321
    goto/16 :goto_2c

    :cond_cc
    move v0, v1

    goto/16 :goto_2c

    .line 282
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
    .line 118
    invoke-virtual {p0}, Lbl/xi;->a()Lbl/xh;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 119
    invoke-virtual {p0}, Lbl/xi;->a()Lbl/xh;

    move-result-object v0

    invoke-virtual {v0}, Lbl/xh;->l()Landroid/view/ViewGroup;

    move-result-object v0

    .line 121
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    goto :goto_e
.end method

.method public m()Lbl/yd;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    return-object v0
.end method

.method public n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    return-object v0
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 672
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 674
    invoke-static {}, Lmybl/VideoViewParams;->reportPlaybackFailed()V

    .line 676
    invoke-virtual {p0}, Lbl/xi;->y()Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    move-result-object v0

    .line 677
    iget v1, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->d:I

    iget v2, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->e:I

    if-lt v1, v2, :cond_1b

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    sget-object v1, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->NONE:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    invoke-virtual {v0, v1}, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 681
    :cond_1b
    :goto_1b
    return v3

    .line 680
    :cond_1c
    const v0, 0x7f0c000f

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    goto :goto_1b
.end method

.method public varargs onExtraInfo(I[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 751
    invoke-super {p0, p1, p2}, Lbl/xh;->onExtraInfo(I[Ljava/lang/Object;)V

    .line 752
    const v0, 0x10018

    if-ne p1, v0, :cond_17

    .line 753
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_16

    .line 754
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    new-instance v1, Lbl/xi$4;

    invoke-direct {v1, p0}, Lbl/xi$4;-><init>(Lbl/xi;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->post(Ljava/lang/Runnable;)Z

    .line 772
    :cond_16
    :goto_16
    return-void

    .line 762
    :cond_17
    const v0, 0x10019

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_16

    .line 765
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    new-instance v1, Lbl/xi$5;

    invoke-direct {v1, p0}, Lbl/xi$5;-><init>(Lbl/xi;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->post(Ljava/lang/Runnable;)Z

    goto :goto_16
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 6

    .prologue
    const/16 v2, 0x4e84

    const/4 v1, 0x0

    .line 629
    .line 630
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 631
    const/16 v0, 0x321

    if-eq p2, v0, :cond_56

    .line 632
    packed-switch p2, :pswitch_data_60

    .line 663
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 666
    :goto_e
    return v0

    .line 634
    :pswitch_f
    invoke-virtual {p0}, Lbl/xi;->M()V

    .line 635
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    if-eqz v0, :cond_d

    .line 636
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->removeMessages(I)V

    .line 637
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 638
    const/4 v0, 0x0

    check-cast v0, Lbl/xh$a;

    invoke-static {}, Lbl/xh$a;->a()Lbl/xh$a;

    move-result-object v0

    .line 639
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    iput v3, v0, Lbl/xh$a;->a:I

    .line 640
    iput v1, v0, Lbl/xh$a;->b:I

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lbl/xh$a;->c:J

    .line 642
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 643
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d

    .line 647
    :pswitch_3e
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    if-eqz v0, :cond_47

    .line 648
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->removeMessages(I)V

    .line 650
    :cond_47
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_d

    .line 651
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    new-instance v1, Lbl/xi$3;

    invoke-direct {v1, p0}, Lbl/xi$3;-><init>(Lbl/xi;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->post(Ljava/lang/Runnable;)Z

    goto :goto_d

    .line 665
    :cond_56
    const-string v0, "BasicTVPlayerAdapter"

    const-string v2, "media not seekable"

    invoke-static {v0, v2}, Ltv/danmaku/android/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 666
    goto :goto_e

    .line 632
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
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .prologue
    .line 686
    const-string v0, "PlaySpeed"

    const-string v1, "[XI_ON_PREPARED] onPrepared() called, video ready to play"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-static {}, Lmybl/VideoViewParams;->reportPlaybackSuccess()V

    .line 689
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 690
    invoke-virtual {p0}, Lbl/xi;->F()V

    .line 692
    :cond_13
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 693
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->c()V

    .line 695
    :cond_20
    invoke-virtual {p0}, Lbl/xi;->O()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 696
    invoke-virtual {p0}, Lbl/xi;->N()V

    .line 698
    :cond_29
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const v1, 0x4c4c08

    invoke-virtual {v0, v1}, Lbl/aaq;->sendEmptyMessage(I)Z

    .line 699
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 700
    return-void
.end method

.method public r()V
    .locals 4

    .prologue
    .line 557
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    if-eqz v0, :cond_9

    .line 558
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 560
    :cond_9
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_1a

    .line 561
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->attachDanmakuView(Landroid/view/ViewGroup;ZI)V

    .line 563
    :try_start_15
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->release()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_23

    .line 567
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0}, Lbl/aaq;->a()V

    .line 568
    invoke-super {p0}, Lbl/xh;->r()V

    .line 569
    return-void

    .line 564
    :catch_23
    move-exception v0

    goto :goto_1a
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 220
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
    .line 199
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xi;->a(Ljava/lang/Runnable;)V

    .line 200
    invoke-virtual {p0}, Lbl/xi;->P()V

    .line 201
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v0, v2, v3}, Lbl/xi;->a(Ljava/lang/Runnable;J)V

    .line 202
    :cond_13
    invoke-super {p0}, Lbl/xh;->t()V

    .line 203
    return-void
.end method

.method public tt()V
    .locals 4

    .prologue
    .line 206
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_15

    .line 207
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lbl/xi;->v()V

    .line 214
    :goto_d
    invoke-super {p0}, Lbl/xh;->t()V

    .line 215
    return-void

    .line 208
    :cond_11
    invoke-virtual {p0}, Lbl/xi;->P()V

    goto :goto_d

    .line 210
    :cond_15
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xi;->a(Ljava/lang/Runnable;)V

    .line 211
    invoke-virtual {p0}, Lbl/xi;->P()V

    .line 212
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v0, v2, v3}, Lbl/xi;->a(Ljava/lang/Runnable;J)V

    goto :goto_d
.end method

.method public u()V
    .locals 1

    .prologue
    .line 402
    invoke-super {p0}, Lbl/xh;->u()V

    .line 403
    invoke-virtual {p0}, Lbl/xi;->Q()V

    .line 404
    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 405
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 407
    :cond_10
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 226
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 227
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 230
    :cond_13
    invoke-super {p0}, Lbl/xh;->v()V

    .line 231
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 412
    invoke-super {p0}, Lbl/xh;->w()V

    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 414
    return-void
.end method
