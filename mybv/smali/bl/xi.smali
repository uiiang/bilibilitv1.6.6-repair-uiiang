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
.field private static final ENABLE_SEEK_PREVIEW_SNAPSHOT:Z = false

.field private static final SEEK_IDLE_RESET_MS:J = 0x7d0L

.field private static final SEEK_MIN_DELTA_MS:I = 0x2710

.field private static final SEEK_POST_REFRESH_DELAY_MS:J = 0x96L

.field private static final SEEK_STEP_GROW_INTERVAL_MS:I = 0x1f4

.field private static final SEEK_STEP_MAX_SEC:I = 0x78

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

.field private final moreActionHandler:Landroid/os/Handler;

.field private moreActionOkLongFired:Z

.field private final moreActionOkLongRunnable:Ljava/lang/Runnable;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private volatile p:J

.field private r:Z

.field private s:Z

.field private seekBaseMs:I

.field private seekDirectionForward:Z

.field private seekLastEventMs:J

.field private seekLastStepGrowMs:J

.field private seekPreviewGroup:Landroid/view/ViewGroup;

.field private seekPreviewSeekbar:Landroid/widget/SeekBar;

.field private seekPreviewSnapshot:Landroid/widget/ImageView;

.field private seekPreviewTimeCurrent:Landroid/widget/TextView;

.field private seekPreviewTimeTotal:Landroid/widget/TextView;

.field private seekRawMs:I

.field private seekRefreshRunnable:Ljava/lang/Runnable;

.field private seekStepInc:I

.field private seekStepSec:I

.field private seekTargetMs:I

.field private t:Ljava/lang/Runnable;

.field private videoShot:Lcom/bilibili/tv/api/video/VideoShot;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 76
    iput-boolean v2, p0, Lbl/xi;->isSliding:Z

    .line 77
    iput-boolean v2, p0, Lbl/xi;->isLongPress:Z

    .line 78
    iput-boolean v2, p0, Lbl/xi;->r:Z

    .line 79
    iput-boolean v2, p0, Lbl/xi;->s:Z

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbl/xi;->moreActionHandler:Landroid/os/Handler;

    .line 85
    iput-boolean v2, p0, Lbl/xi;->moreActionOkLongFired:Z

    .line 86
    new-instance v0, Lbl/xi$1;

    invoke-direct {v0, p0}, Lbl/xi$1;-><init>(Lbl/xi;)V

    iput-object v0, p0, Lbl/xi;->moreActionOkLongRunnable:Ljava/lang/Runnable;

    .line 107
    iput v2, p0, Lbl/xi;->seekBaseMs:I

    .line 108
    iput v2, p0, Lbl/xi;->seekRawMs:I

    .line 109
    iput v2, p0, Lbl/xi;->seekTargetMs:I

    .line 110
    iput v3, p0, Lbl/xi;->seekStepSec:I

    .line 111
    iput v3, p0, Lbl/xi;->seekStepInc:I

    .line 112
    iput-wide v4, p0, Lbl/xi;->seekLastStepGrowMs:J

    .line 113
    iput-wide v4, p0, Lbl/xi;->seekLastEventMs:J

    .line 114
    iput-boolean v3, p0, Lbl/xi;->seekDirectionForward:Z

    .line 122
    new-instance v0, Lbl/xi$2;

    invoke-direct {v0, p0}, Lbl/xi$2;-><init>(Lbl/xi;)V

    iput-object v0, p0, Lbl/xi;->hideSeekPreviewRunnable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Lbl/xi$3;

    invoke-direct {v0, p0}, Lbl/xi$3;-><init>(Lbl/xi;)V

    iput-object v0, p0, Lbl/xi;->seekRefreshRunnable:Ljava/lang/Runnable;

    .line 137
    new-instance v0, Lbl/xi$4;

    invoke-direct {v0, p0}, Lbl/xi$4;-><init>(Lbl/xi;)V

    iput-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lbl/aaq;

    invoke-direct {v0, p0}, Lbl/aaq;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    .line 156
    return-void
.end method

.method private T()V
    .locals 1

    .prologue
    .line 706
    invoke-virtual {p0}, Lbl/xi;->D()V

    .line 707
    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 709
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lbl/xi;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_18

    .line 710
    invoke-virtual {p0}, Lbl/xi;->v()V

    .line 712
    :cond_18
    invoke-direct {p0}, Lbl/xi;->closeShotMenu()Z

    .line 713
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 724
    :goto_1f
    return-void

    .line 716
    :cond_20
    invoke-direct {p0}, Lbl/xi;->toggleSimpleShotMenu()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 717
    invoke-super {p0}, Lbl/xh;->t()V

    .line 718
    invoke-virtual {p0}, Lbl/xi;->refreshTvToggleIcon()V

    goto :goto_1f

    .line 721
    :cond_2d
    invoke-virtual {p0}, Lbl/xi;->P()V

    .line 722
    invoke-super {p0}, Lbl/xh;->t()V

    goto :goto_1f
.end method

.method private U()V
    .locals 2

    .prologue
    .line 894
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 895
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    .line 896
    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    iget-boolean v0, p0, Lbl/xi;->s:Z

    if-eqz v0, :cond_11

    .line 908
    :cond_10
    :goto_10
    return-void

    .line 899
    :cond_11
    new-instance v0, Lbl/xi$6;

    invoke-direct {v0, p0}, Lbl/xi$6;-><init>(Lbl/xi;)V

    invoke-interface {v1, v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->addPlayerEventListener(Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;)V

    .line 907
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xi;->s:Z

    goto :goto_10
.end method

.method private V()V
    .locals 7

    .prologue
    .line 1011
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1012
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

    .line 1013
    return-void
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-nez v0, :cond_5

    .line 1025
    :cond_4
    :goto_4
    return-void

    .line 1019
    :cond_5
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->setMax(I)V

    .line 1020
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->setProgress(I)V

    .line 1021
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 1022
    if-eqz v0, :cond_4

    .line 1023
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

    .line 1046
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v11

    .line 1047
    if-nez v11, :cond_9

    .line 1109
    :goto_8
    return-void

    .line 1050
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1051
    if-eqz v0, :cond_1a

    invoke-static {v11, v0}, Lbl/zs;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    move-object v10, v0

    .line 1052
    :goto_14
    if-nez v10, :cond_1c

    .line 1053
    invoke-virtual {v11}, Landroid/app/Activity;->finish()V

    goto :goto_8

    :cond_1a
    move-object v10, v9

    .line 1051
    goto :goto_14

    .line 1056
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

    .line 1057
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 1060
    :cond_41
    iget-object v0, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 1061
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmybl/VideoViewParams;->setCurrentVideo(Ljava/lang/String;)V

    .line 1063
    new-instance v2, Lbl/yh;

    invoke-direct {v2}, Lbl/yh;-><init>()V

    .line 1064
    iput-object v10, v2, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 1065
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

    .line 1066
    new-instance v0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;

    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v3, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-virtual {p0}, Lbl/xi;->S()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;-><init>(Landroid/content/Context;Ltv/danmaku/videoplayer/core/videoview/IVideoParams;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;I)V

    iput-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    .line 1067
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    iget-object v1, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-virtual {v0, v1}, Lbl/yd;->a(Ltv/danmaku/videoplayer/core/context/IPlayerContext;)V

    .line 1068
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    new-instance v1, Lbl/xd;

    invoke-direct {v1}, Lbl/xd;-><init>()V

    invoke-virtual {v0, v1}, Lbl/yd;->a(Lbl/xd;)V

    .line 1069
    invoke-virtual {p0}, Lbl/xi;->c()Lbl/yh;

    move-result-object v0

    iput-object v10, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 1070
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v8

    .line 1071
    if-nez v8, :cond_b5

    .line 1072
    invoke-virtual {v11}, Landroid/app/Activity;->finish()V

    goto/16 :goto_8

    .line 1075
    :cond_b5
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    iget-object v1, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v1}, Lbl/yd;->a(Lbl/aaq;)V

    .line 1076
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lbl/yd;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 1077
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->a()Ljava/util/concurrent/Future;

    .line 1078
    invoke-virtual {p0}, Lbl/xi;->R()V

    .line 1079
    invoke-static {v8}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v1

    .line 1080
    invoke-static {v8}, Lbl/yr;->d(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v2

    .line 1081
    const-string v0, "CoverDebug"

    const-string v3, "========== xi.d() Cover Info =========="

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
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

    .line 1084
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v0, :cond_201

    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_201

    .line 1085
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_201

    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-le v0, v12, :cond_201

    .line 1086
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 1089
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

    .line 1090
    invoke-virtual {v8}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 1091
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_198

    .line 1092
    iget-object v1, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v1}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1106
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

    .line 1107
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

    .line 1108
    iget-object v1, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v1, v2, v0}, Lbl/aar;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1094
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

    .line 1096
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

    .line 1099
    if-eqz v1, :cond_1e7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e7

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e7

    .line 1100
    const-string v0, "LoadingTitle"

    const-string v3, "mainTitle equals pageTitle, hide tv_loading_page"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 1101
    goto/16 :goto_15a

    .line 1103
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
    .line 1721
    if-nez p1, :cond_4

    .line 1722
    sget-object p1, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_SCREEN:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    .line 1724
    :cond_4
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setAspectRatio(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 1725
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 1726
    if-eqz v0, :cond_14

    .line 1727
    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setAspectRatio(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 1729
    :cond_14
    return-void
.end method

.method static synthetic access$002(Lbl/xi;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lbl/xi;->moreActionOkLongFired:Z

    return p1
.end method

.method static synthetic access$100(Lbl/xi;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lbl/xi;->showPlayerRightMenu()V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, Lbl/xi;->loadIndexFromPvdata(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lbl/xi;)Lcom/bilibili/tv/player/widget/PlayerSeekBar;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lbl/xi;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lbl/xi;->hideSeekPreview()V

    return-void
.end method

.method static synthetic access$300(Lbl/xi;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lbl/xi;->isSliding:Z

    return v0
.end method

.method static synthetic access$400(Lbl/xi;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lbl/xi;->syncProgressUiWithPlayer()V

    return-void
.end method

.method static synthetic access$500(Lbl/xi;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lbl/xi;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lbl/xi;->s:Z

    return p1
.end method

.method static synthetic access$700(Lbl/xi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lbl/xi;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lbl/xi;->currentCid:J

    return-wide v0
.end method

.method static synthetic access$900(Lbl/xi;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lbl/xi;->currentAid:J

    return-wide v0
.end method

.method private b(II)V
    .locals 4

    .prologue
    .line 1028
    const/4 v0, -0x1

    if-le p1, v0, :cond_5

    if-gtz p2, :cond_6

    .line 1033
    :cond_5
    :goto_5
    return-void

    .line 1031
    :cond_6
    iget-object v0, p0, Lbl/xi;->j:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
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
    .line 911
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/xh$a;

    .line 912
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v2

    .line 913
    if-eqz v0, :cond_18

    if-eqz v2, :cond_18

    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lbl/xi;->L()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 914
    :cond_18
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v1, 0x4e84

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 915
    invoke-virtual {p0}, Lbl/xi;->N()V

    .line 940
    :goto_22
    return-void

    .line 918
    :cond_23
    iget v3, v0, Lbl/xh$a;->b:I

    .line 919
    iget v1, v0, Lbl/xh$a;->a:I

    .line 920
    invoke-interface {v2}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getCurrentPosition()I

    move-result v2

    .line 921
    iget-wide v4, v0, Lbl/xh$a;->c:J

    .line 922
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

    .line 923
    if-ne v2, v1, :cond_66

    .line 933
    :goto_47
    iget-object v2, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v6, 0x4e84

    invoke-virtual {v2, v6}, Lbl/aaq;->removeMessages(I)V

    .line 934
    iget-object v2, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v6, 0x4e84

    invoke-virtual {v2, v6}, Lbl/aaq;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 935
    iput v1, v0, Lbl/xh$a;->a:I

    .line 936
    iput v3, v0, Lbl/xh$a;->b:I

    .line 937
    iput-wide v4, v0, Lbl/xh$a;->c:J

    .line 938
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 939
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Lbl/aaq;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_22

    .line 925
    :cond_66
    sub-int v6, v2, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x1388

    if-lt v6, v7, :cond_73

    const/4 v6, 0x3

    if-lt v3, v6, :cond_82

    .line 926
    :cond_73
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v1, 0x4e84

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 927
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    goto :goto_22

    .line 930
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

    .line 931
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    goto :goto_47
.end method

.method private c(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 943
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 944
    iget-object v1, p0, Lbl/xi;->b:Lbl/aaq;

    const v2, 0x4c4c0a

    invoke-virtual {v1, v2}, Lbl/aaq;->removeMessages(I)V

    .line 945
    const/4 v1, 0x0

    const/16 v2, 0x2bd

    invoke-virtual {p0, v1, v2, v3}, Lbl/xi;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 946
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 947
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 948
    :cond_24
    const v0, 0x7f0c0014

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    .line 959
    :goto_2a
    return-void

    .line 951
    :cond_2b
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 952
    invoke-virtual {p0, v4}, Lbl/xi;->c(Z)V

    .line 956
    :goto_36
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lbl/xi;->v()V

    .line 957
    :cond_3d
    invoke-virtual {p0}, Lbl/xi;->R()V

    .line 958
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lbl/xi;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    goto :goto_2a

    .line 954
    :cond_4e
    invoke-virtual {p0}, Lbl/xi;->A()V

    goto :goto_36
.end method

.method private closeShotMenu()Z
    .locals 2

    .prologue
    .line 681
    invoke-direct {p0}, Lbl/xi;->findShotMenuHandler()Lbl/xl;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 683
    invoke-virtual {v0}, Lbl/xl;->hideShotMenu()V

    .line 684
    const/4 v0, 0x1

    .line 686
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private commitSeek(Z)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 287
    iget-boolean v0, p0, Lbl/xi;->isSliding:Z

    if-nez v0, :cond_6

    .line 299
    :goto_5
    return-void

    .line 290
    :cond_6
    iget v0, p0, Lbl/xi;->seekTargetMs:I

    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 291
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v1

    int-to-long v2, v1

    .line 292
    const-string v1, "SeekPreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "commitSeek: forward="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-long v6, v0

    .line 293
    invoke-static {v6, v7}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 292
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0, v0}, Lbl/xi;->c(I)V

    .line 295
    invoke-direct {p0}, Lbl/xi;->resetSeekState()V

    .line 296
    sget-object v1, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SEEK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    .line 297
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    .line 296
    invoke-virtual {p0, v1, v4}, Lbl/xi;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 298
    invoke-direct {p0}, Lbl/xi;->refreshProgressAfterSeek()V

    goto :goto_5
.end method

.method private computeSeekTarget(I)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 237
    const/16 v0, 0x16

    if-ne p1, v0, :cond_7d

    move v0, v1

    .line 238
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 239
    iget-wide v6, p0, Lbl/xi;->seekLastEventMs:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7d0

    cmp-long v3, v6, v8

    if-ltz v3, :cond_7f

    move v3, v1

    .line 240
    :goto_16
    iput-wide v4, p0, Lbl/xi;->seekLastEventMs:J

    .line 242
    iget-boolean v6, p0, Lbl/xi;->isSliding:Z

    if-eqz v6, :cond_1e

    if-eqz v3, :cond_81

    .line 244
    :cond_1e
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lbl/xi;->seekBaseMs:I

    .line 245
    iget v3, p0, Lbl/xi;->seekBaseMs:I

    iput v3, p0, Lbl/xi;->seekRawMs:I

    .line 246
    iput v1, p0, Lbl/xi;->seekStepSec:I

    .line 247
    iput v1, p0, Lbl/xi;->seekStepInc:I

    .line 248
    iput-wide v4, p0, Lbl/xi;->seekLastStepGrowMs:J

    .line 249
    iput-boolean v0, p0, Lbl/xi;->seekDirectionForward:Z

    .line 250
    iput-boolean v1, p0, Lbl/xi;->isSliding:Z

    .line 251
    iput-boolean v2, p0, Lbl/xi;->isLongPress:Z

    .line 263
    :cond_38
    :goto_38
    iget-wide v6, p0, Lbl/xi;->seekLastStepGrowMs:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1f4

    cmp-long v1, v6, v8

    if-ltz v1, :cond_57

    .line 264
    iput-wide v4, p0, Lbl/xi;->seekLastStepGrowMs:J

    .line 265
    const/16 v1, 0x78

    iget v3, p0, Lbl/xi;->seekStepSec:I

    iget v4, p0, Lbl/xi;->seekStepInc:I

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lbl/xi;->seekStepSec:I

    .line 266
    iget v1, p0, Lbl/xi;->seekStepInc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbl/xi;->seekStepInc:I

    .line 269
    :cond_57
    iget v1, p0, Lbl/xi;->seekStepSec:I

    mul-int/lit16 v1, v1, 0x3e8

    .line 270
    if-eqz v0, :cond_96

    iget v3, p0, Lbl/xi;->seekRawMs:I

    add-int/2addr v1, v3

    .line 271
    :goto_60
    iput v1, p0, Lbl/xi;->seekRawMs:I

    .line 275
    if-eqz v0, :cond_9b

    .line 276
    iget v0, p0, Lbl/xi;->seekBaseMs:I

    add-int/lit16 v0, v0, 0x2710

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 281
    :goto_6c
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lbl/xi;->seekTargetMs:I

    .line 282
    iget v0, p0, Lbl/xi;->seekTargetMs:I

    return v0

    :cond_7d
    move v0, v2

    .line 237
    goto :goto_7

    :cond_7f
    move v3, v2

    .line 239
    goto :goto_16

    .line 252
    :cond_81
    iget-boolean v3, p0, Lbl/xi;->seekDirectionForward:Z

    if-eq v0, v3, :cond_38

    .line 254
    iget v3, p0, Lbl/xi;->seekTargetMs:I

    iput v3, p0, Lbl/xi;->seekBaseMs:I

    .line 255
    iget v3, p0, Lbl/xi;->seekTargetMs:I

    iput v3, p0, Lbl/xi;->seekRawMs:I

    .line 256
    iput v1, p0, Lbl/xi;->seekStepSec:I

    .line 257
    iput v1, p0, Lbl/xi;->seekStepInc:I

    .line 258
    iput-wide v4, p0, Lbl/xi;->seekLastStepGrowMs:J

    .line 259
    iput-boolean v0, p0, Lbl/xi;->seekDirectionForward:Z

    goto :goto_38

    .line 270
    :cond_96
    iget v3, p0, Lbl/xi;->seekRawMs:I

    sub-int v1, v3, v1

    goto :goto_60

    .line 278
    :cond_9b
    iget v0, p0, Lbl/xi;->seekBaseMs:I

    add-int/lit16 v0, v0, -0x2710

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_6c
.end method

.method private d(Z)V
    .locals 2

    .prologue
    .line 1174
    iget-object v0, p0, Lbl/xi;->n:Landroid/view/View;

    if-nez v0, :cond_13

    .line 1175
    const v0, 0x7f08013c

    invoke-virtual {p0, v0}, Lbl/xi;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbl/xi;->n:Landroid/view/View;

    .line 1177
    :cond_13
    iget-object v1, p0, Lbl/xi;->n:Landroid/view/View;

    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    return-void

    .line 1177
    :cond_1c
    const/16 v0, 0x8

    goto :goto_18
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const v1, 0x4c4c0a

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 1113
    invoke-virtual {p0}, Lbl/xi;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/bll;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1114
    const p1, 0x7f0c000e

    .line 1116
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

    .line 1117
    :cond_2b
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    if-eqz v0, :cond_36

    .line 1118
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    sget-object v1, Lbl/xi;->error_message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbl/aar;->a(Ljava/lang/String;)V

    .line 1120
    :cond_36
    const/4 v0, 0x0

    sput-object v0, Lbl/xi;->error_message:Ljava/lang/String;

    .line 1121
    return-void
.end method

.method private findShotMenuHandler()Lbl/xl;
    .locals 2

    .prologue
    .line 641
    invoke-virtual {p0}, Lbl/xi;->next()Lbl/xh;

    move-result-object v0

    .line 642
    :goto_4
    if-eqz v0, :cond_12

    .line 643
    instance-of v1, v0, Lbl/xl;

    if-eqz v1, :cond_d

    .line 644
    check-cast v0, Lbl/xl;

    .line 648
    :goto_c
    return-object v0

    .line 646
    :cond_d
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_4

    .line 648
    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private hideSeekPreview()V
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 209
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 210
    const-string v0, "SeekPreview"

    const-string v1, "hideSeekPreview: gone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbl/xi;->seekLastEventMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2d

    const/4 v0, 0x1

    .line 215
    :goto_20
    iget-boolean v1, p0, Lbl/xi;->isSliding:Z

    if-eqz v1, :cond_26

    if-eqz v0, :cond_29

    .line 216
    :cond_26
    invoke-direct {p0}, Lbl/xi;->resetSeekState()V

    .line 218
    :cond_29
    invoke-direct {p0}, Lbl/xi;->removeSeekRefreshCallback()V

    .line 219
    return-void

    .line 214
    :cond_2d
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private initSeekPreview(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 183
    const v0, 0x7f0801f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 184
    if-eqz v0, :cond_56

    .line 185
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    .line 186
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    .line 187
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->seekPreviewTimeCurrent:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->seekPreviewTimeTotal:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    .line 190
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 191
    const-string v0, "SeekPreview"

    const-string v1, "initSeekPreview: initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_55
    return-void

    .line 193
    :cond_56
    const-string v0, "SeekPreview"

    const-string v1, "initSeekPreview: seek_preview_group not found"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method private isShotMenuShowing()Z
    .locals 1

    .prologue
    .line 675
    invoke-direct {p0}, Lbl/xi;->findShotMenuHandler()Lbl/xl;

    move-result-object v0

    .line 676
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static loadIndexFromPvdata(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 1495
    .line 1496
    :try_start_2
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1503
    :cond_1d
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 1504
    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36"

    .line 1505
    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "Referer"

    const-string v3, "https://www.bilibili.com"

    .line 1506
    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 1507
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 1508
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_45} :catch_18a

    move-result-object v4

    .line 1510
    :try_start_46
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_95

    .line 1511
    :cond_52
    const-string v0, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadIndexFromPvdata: http failed, code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_46 .. :try_end_6e} :catchall_185

    .line 1537
    :try_start_6e
    invoke-virtual {v4}, Lokhttp3/Response;->close()V

    move-object v0, v1

    .line 1541
    :goto_72
    return-object v0

    .line 1498
    :cond_73
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1499
    const-string v0, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadIndexFromPvdata: invalid url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_93} :catch_18a

    move-object v0, v1

    .line 1500
    goto :goto_72

    .line 1514
    :cond_95
    :try_start_95
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v5

    .line 1515
    if-eqz v5, :cond_a2

    array-length v0, v5

    if-ge v0, v7, :cond_ae

    .line 1516
    :cond_a2
    const-string v0, "VideoShot"

    const-string v2, "loadIndexFromPvdata: empty body"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_95 .. :try_end_a9} :catchall_185

    .line 1537
    :try_start_a9
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_18a

    move-object v0, v1

    .line 1517
    goto :goto_72

    .line 1519
    :cond_ae
    :try_start_ae
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1520
    const/4 v0, 0x0

    :goto_b4
    add-int/lit8 v3, v0, 0x1

    array-length v6, v5

    if-ge v3, v6, :cond_d0

    .line 1521
    aget-byte v3, v5, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1520
    add-int/lit8 v0, v0, 0x2

    goto :goto_b4

    .line 1524
    :cond_d0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_f8

    .line 1525
    const-string v0, "VideoShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadIndexFromPvdata: too few points, size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catchall {:try_start_ae .. :try_end_f2} :catchall_185

    .line 1537
    :try_start_f2
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f5} :catch_18a

    move-object v0, v1

    .line 1526
    goto/16 :goto_72

    .line 1528
    :cond_f8
    const/4 v0, 0x1

    move v3, v0

    :goto_fa
    :try_start_fa
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_158

    .line 1529
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v0, v3, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v6, v0, :cond_154

    .line 1530
    const-string v0, "VideoShot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadIndexFromPvdata: not ascending at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catchall {:try_start_fa .. :try_end_14e} :catchall_185

    .line 1537
    :try_start_14e
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_151} :catch_18a

    move-object v0, v1

    .line 1531
    goto/16 :goto_72

    .line 1528
    :cond_154
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_fa

    .line 1534
    :cond_158
    :try_start_158
    const-string v0, "VideoShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadIndexFromPvdata: bytes="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", indexSize="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17f
    .catchall {:try_start_158 .. :try_end_17f} :catchall_185

    .line 1537
    :try_start_17f
    invoke-virtual {v4}, Lokhttp3/Response;->close()V

    move-object v0, v2

    .line 1535
    goto/16 :goto_72

    .line 1537
    :catchall_185
    move-exception v0

    invoke-virtual {v4}, Lokhttp3/Response;->close()V

    .line 1538
    throw v0
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_18a} :catch_18a

    .line 1539
    :catch_18a
    move-exception v0

    .line 1540
    const-string v2, "VideoShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadIndexFromPvdata error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1541
    goto/16 :goto_72
.end method

.method private loadVideoShot()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1338
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

    .line 1339
    iget-wide v0, p0, Lbl/xi;->currentCid:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_42

    .line 1340
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: invalid cid, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :goto_41
    return-void

    .line 1344
    :cond_42
    iget-object v0, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1345
    :cond_4e
    iget-wide v0, p0, Lbl/xi;->currentAid:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_5c

    .line 1346
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: invalid aid and bvid, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 1351
    :cond_5c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbl/xi$8;

    invoke-direct {v1, p0}, Lbl/xi$8;-><init>(Lbl/xi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1486
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_41
.end method

.method private refreshProgressAfterSeek()V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 338
    :goto_4
    return-void

    .line 336
    :cond_5
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xi;->seekRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 337
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xi;->seekRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method private removeHideSeekPreviewCallback()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 223
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xi;->hideSeekPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 225
    :cond_b
    return-void
.end method

.method private removeSeekRefreshCallback()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 342
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xi;->seekRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 344
    :cond_b
    return-void
.end method

.method private resetSeekState()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lbl/xi;->isSliding:Z

    .line 303
    iput-boolean v0, p0, Lbl/xi;->isLongPress:Z

    .line 304
    iput v0, p0, Lbl/xi;->seekBaseMs:I

    .line 305
    iput v0, p0, Lbl/xi;->seekRawMs:I

    .line 306
    iput v0, p0, Lbl/xi;->seekTargetMs:I

    .line 307
    iput v1, p0, Lbl/xi;->seekStepSec:I

    .line 308
    iput v1, p0, Lbl/xi;->seekStepInc:I

    .line 309
    iput-wide v2, p0, Lbl/xi;->seekLastStepGrowMs:J

    .line 310
    iput-wide v2, p0, Lbl/xi;->seekLastEventMs:J

    .line 311
    iput-boolean v1, p0, Lbl/xi;->seekDirectionForward:Z

    .line 312
    return-void
.end method

.method private showPlayerRightMenu()V
    .locals 2

    .prologue
    .line 627
    move-object v0, p0

    .line 628
    :goto_1
    if-eqz v0, :cond_d

    .line 629
    instance-of v1, v0, Lbl/xw;

    if-eqz v1, :cond_e

    .line 630
    check-cast v0, Lbl/xw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbl/xw;->d(Z)V

    .line 635
    :cond_d
    return-void

    .line 633
    :cond_e
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_1
.end method

.method private showSeekPreview()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    .line 199
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 201
    const-string v0, "SeekPreview"

    const-string v1, "showSeekPreview: visible"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_16
    invoke-direct {p0}, Lbl/xi;->removeHideSeekPreviewCallback()V

    .line 204
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xi;->hideSeekPreviewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    return-void
.end method

.method private syncProgressUiWithPlayer()V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v0

    .line 320
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v1

    .line 321
    if-lez v0, :cond_d

    const/4 v2, -0x1

    if-gt v1, v2, :cond_e

    .line 330
    :cond_d
    :goto_d
    return-void

    .line 324
    :cond_e
    invoke-direct {p0, v1, v0}, Lbl/xi;->b(II)V

    .line 325
    invoke-direct {p0, v1, v0}, Lbl/xi;->a(II)V

    .line 326
    iget-object v2, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    .line 327
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d

    .line 328
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lbl/xi;->updateSeekPreview(IIZ)V

    goto :goto_d
.end method

.method private toggleSimpleShotMenu()Z
    .locals 4

    .prologue
    .line 659
    invoke-direct {p0}, Lbl/xi;->findShotMenuHandler()Lbl/xl;

    move-result-object v0

    .line 660
    if-nez v0, :cond_8

    .line 661
    const/4 v0, 0x0

    .line 670
    :goto_7
    return v0

    .line 663
    :cond_8
    invoke-virtual {v0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 664
    const-string v1, "BottomUi"

    const-string v2, "[toggleSimpleShotMenu] menu showing -> hide"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {v0}, Lbl/xl;->hideShotMenu()V

    .line 666
    const/4 v0, 0x1

    goto :goto_7

    .line 668
    :cond_1a
    invoke-virtual {v0}, Lbl/xl;->showSimpleShotMenu()Z

    move-result v0

    .line 669
    const-string v1, "BottomUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[toggleSimpleShotMenu] showSimpleShotMenu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private updateSeekPreview(II)V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lbl/xi;->updateSeekPreview(IIZ)V

    .line 349
    return-void
.end method

.method private updateSeekPreview(IIZ)V
    .locals 4

    .prologue
    .line 352
    const-string v0, "SeekPreview"

    const-string v1, "=== updateSeekPreview called ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
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

    .line 354
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

    .line 356
    iget-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_69

    .line 357
    iget-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 358
    iget-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 360
    :cond_69
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeCurrent:Landroid/widget/TextView;

    if-eqz v0, :cond_77

    .line 361
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeCurrent:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_77
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeTotal:Landroid/widget/TextView;

    if-eqz v0, :cond_85

    .line 364
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeTotal:Landroid/widget/TextView;

    int-to-long v2, p2

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_85
    iget-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    if-eqz v0, :cond_97

    .line 370
    iget-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    const-string v0, "SeekPreview"

    const-string v1, "updateSeekPreview: snapshot disabled by constant"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_97
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/xi;->c(Z)V

    .line 1144
    return-void
.end method

.method public B()V
    .locals 1

    .prologue
    .line 1154
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1158
    :goto_6
    return-void

    .line 1157
    :cond_7
    invoke-super {p0}, Lbl/xh;->B()V

    goto :goto_6
.end method

.method public C()V
    .locals 1

    .prologue
    .line 1162
    invoke-super {p0}, Lbl/xh;->C()V

    .line 1163
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 1164
    if-eqz v0, :cond_c

    .line 1165
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->release()V

    .line 1167
    :cond_c
    invoke-virtual {p0}, Lbl/xi;->m()Lbl/yd;

    move-result-object v0

    .line 1168
    if-eqz v0, :cond_15

    .line 1169
    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 1171
    :cond_15
    return-void
.end method

.method public E()V
    .locals 1

    .prologue
    .line 980
    invoke-super {p0}, Lbl/xh;->E()V

    .line 981
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 982
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 984
    :cond_d
    return-void
.end method

.method public F()V
    .locals 1

    .prologue
    .line 1182
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1189
    :goto_6
    return-void

    .line 1185
    :cond_7
    invoke-virtual {p0}, Lbl/xi;->L()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1186
    invoke-virtual {p0}, Lbl/xi;->A()V

    .line 1188
    :cond_10
    invoke-super {p0}, Lbl/xh;->F()V

    goto :goto_6
.end method

.method public G()V
    .locals 1

    .prologue
    .line 988
    invoke-super {p0}, Lbl/xh;->G()V

    .line 989
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 990
    return-void
.end method

.method public M()V
    .locals 2

    .prologue
    .line 1548
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    if-nez v0, :cond_1e

    .line 1549
    new-instance v0, Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-direct {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;-><init>()V

    iput-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    .line 1550
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    iget-object v1, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/BufferingOverlayController;->setBufferingView(Lcom/bilibili/tv/player/widget/PlayerBufferingView;)V

    .line 1551
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-static {v0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->setBufferingOverlayController(Lcom/bilibili/tv/player/BufferingOverlayController;)V

    .line 1552
    const-string v0, "xi"

    const-string v1, "[M] BufferingOverlayController initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_1e
    invoke-static {}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->shouldSuppressBufferingOverlay()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1556
    const-string v0, "xi"

    const-string v1, "[M] Buffering overlay is suppressed, skip showing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :goto_2b
    return-void

    .line 1560
    :cond_2c
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;->onBufferingStarted()V

    goto :goto_2b
.end method

.method public N()V
    .locals 2

    .prologue
    .line 1575
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    if-eqz v0, :cond_11

    .line 1576
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;->onBufferingEnded()V

    .line 1580
    :cond_9
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 1581
    :cond_10
    :goto_10
    return-void

    .line 1577
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
    .line 1585
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

    .line 793
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    .line 798
    :cond_9
    :goto_9
    return-void

    .line 796
    :cond_a
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_9
.end method

.method protected Q()V
    .locals 7

    .prologue
    const v6, 0x4c4c08

    const-wide/16 v4, 0x0

    .line 993
    iget-wide v0, p0, Lbl/xi;->p:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    .line 994
    iput-wide v4, p0, Lbl/xi;->p:J

    .line 996
    :cond_12
    invoke-direct {p0}, Lbl/xi;->V()V

    .line 997
    iget-wide v0, p0, Lbl/xi;->p:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_21
    iget-boolean v0, p0, Lbl/xi;->isSliding:Z

    if-nez v0, :cond_28

    .line 999
    invoke-direct {p0}, Lbl/xi;->syncProgressUiWithPlayer()V

    .line 1001
    :cond_28
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v6}, Lbl/aaq;->removeMessages(I)V

    .line 1002
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1003
    iget-wide v0, p0, Lbl/xi;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbl/xi;->p:J

    .line 1004
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v6, v2, v3}, Lbl/aaq;->sendEmptyMessageDelayed(IJ)Z

    .line 1008
    :goto_41
    return-void

    .line 1006
    :cond_42
    iput-wide v4, p0, Lbl/xi;->p:J

    goto :goto_41
.end method

.method protected R()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1590
    iget-object v0, p0, Lbl/xi;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lbl/xi;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-nez v1, :cond_11

    .line 1638
    :cond_10
    :goto_10
    return-void

    .line 1593
    :cond_11
    iget-object v2, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 1594
    invoke-static {v2}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 1598
    iget-object v1, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v1}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1599
    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 1600
    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7a

    move v6, v3

    .line 1601
    :goto_36
    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7c

    move v5, v3

    .line 1602
    :goto_3f
    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7e

    .line 1604
    :goto_47
    if-eqz v6, :cond_b2

    .line 1605
    if-eqz v5, :cond_98

    .line 1606
    if-eqz v3, :cond_80

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 1607
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

    .line 1637
    :cond_74
    :goto_74
    iget-object v1, p0, Lbl/xi;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_7a
    move v6, v4

    .line 1600
    goto :goto_36

    :cond_7c
    move v5, v4

    .line 1601
    goto :goto_3f

    :cond_7e
    move v3, v4

    .line 1602
    goto :goto_47

    .line 1609
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

    .line 1612
    :cond_98
    if-eqz v3, :cond_74

    .line 1613
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

    .line 1617
    :cond_b2
    if-eqz v5, :cond_d6

    .line 1618
    if-eqz v3, :cond_d4

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 1619
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

    .line 1621
    goto :goto_74

    .line 1624
    :cond_d6
    if-eqz v3, :cond_74

    move-object v0, v2

    .line 1625
    goto :goto_74

    .line 1629
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

    .line 1630
    iget-object v1, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 1631
    if-eqz v0, :cond_122

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_122

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_122

    .line 1632
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

    .line 1634
    goto/16 :goto_74
.end method

.method protected S()I
    .locals 1

    .prologue
    .line 1732
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    .line 1733
    if-eqz v0, :cond_b

    .line 1734
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1736
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
    .line 803
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 804
    const/4 v0, 0x0

    .line 806
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
    .line 160
    const v0, 0x7f0a0021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Message;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 1701
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 1702
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    invoke-direct {p0, v0}, Lbl/xi;->a(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 1704
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Lbl/xi;->a(Landroid/os/Message;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lbl/xf;)V
    .locals 1

    .prologue
    .line 1694
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/app/Activity;Lbl/xf;)V

    .line 1695
    const/4 v0, 0x4

    invoke-virtual {p2, v0, p0}, Lbl/xf;->a(ILbl/bbb;)V

    .line 1696
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1037
    invoke-super {p0, p1}, Lbl/xh;->a(Landroid/content/Intent;)V

    .line 1038
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1043
    :cond_13
    :goto_13
    return-void

    .line 1041
    :cond_14
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1042
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lbl/xi;->a(Landroid/content/Intent;Z)V

    goto :goto_13
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 165
    const v0, 0x7f0800f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    .line 166
    const v0, 0x7f08005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->o:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f080042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    .line 168
    const v0, 0x7f080136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    .line 169
    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->h:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f08012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->j:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f08012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->i:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f08010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    iput-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    .line 173
    const v0, 0x7f080044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    iput-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    .line 174
    new-instance v0, Lbl/aar;

    invoke-direct {v0}, Lbl/aar;-><init>()V

    iput-object v0, p0, Lbl/xi;->k:Lbl/aar;

    .line 175
    iget-object v1, p0, Lbl/xi;->k:Lbl/aar;

    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lbl/xi;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lbl/aar;->a(Landroid/view/ViewGroup;)V

    .line 176
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->b()V

    .line 177
    invoke-direct {p0, p1}, Lbl/xi;->initSeekPreview(Landroid/view/View;)V

    .line 178
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbl/xi;->a(Landroid/content/Intent;Z)V

    .line 179
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 180
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1710
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->NEW_RESOLVE_TASK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_1a

    .line 1711
    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    if-eqz v0, :cond_16

    .line 1712
    iget-object v1, p0, Lbl/xi;->c:Lbl/yd;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lbl/yd;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1717
    :cond_16
    :goto_16
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 1718
    return-void

    .line 1714
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

    .line 1715
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
    .line 1147
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_9

    .line 1148
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->play(Z)V

    .line 1150
    :cond_9
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 826
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    .line 827
    if-eqz v0, :cond_11

    .line 828
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;->getInstance()Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;->unregister(I)V

    .line 830
    :cond_11
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-eqz v0, :cond_1a

    .line 831
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->clearCache()V

    .line 833
    :cond_1a
    invoke-super {p0}, Lbl/xh;->d()V

    .line 834
    invoke-virtual {p0}, Lbl/xi;->r()V

    .line 835
    return-void
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 1566
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_f

    .line 1567
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setText(I)V

    .line 1568
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 1570
    :cond_f
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 411
    invoke-super {p0}, Lbl/xh;->e()V

    .line 412
    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 413
    invoke-virtual {p0}, Lbl/xi;->B()V

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xi;->r:Z

    .line 416
    :cond_f
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 420
    invoke-super {p0}, Lbl/xh;->f()V

    .line 421
    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lbl/xi;->r:Z

    if-eqz v0, :cond_10

    .line 422
    invoke-virtual {p0}, Lbl/xi;->F()V

    .line 424
    :cond_10
    return-void
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/16 v8, 0x15

    const/16 v7, 0x14

    const/16 v6, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 436
    const-string v0, "EbookReader"

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

    .line 440
    const/16 v0, 0x17

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3a

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_5c

    .line 441
    :cond_3a
    invoke-virtual {p0}, Lbl/xi;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_more_action_key(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_5c

    .line 442
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5c

    .line 443
    iget-object v0, p0, Lbl/xi;->moreActionHandler:Landroid/os/Handler;

    iget-object v3, p0, Lbl/xi;->moreActionOkLongRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 444
    iput-boolean v1, p0, Lbl/xi;->moreActionOkLongFired:Z

    .line 445
    iget-object v0, p0, Lbl/xi;->moreActionHandler:Landroid/os/Handler;

    iget-object v3, p0, Lbl/xi;->moreActionOkLongRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5c
    move-object v0, p0

    .line 452
    :goto_5d
    if-eqz v0, :cond_155

    .line 453
    instance-of v3, v0, Lbl/xw;

    if-eqz v3, :cond_14f

    .line 454
    check-cast v0, Lbl/xw;

    .line 455
    const-string v3, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xi.f: \u627e\u5230xw, isEbookMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lbl/xw;->isEbookMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isControlEbook="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lbl/xw;->isControlEbook()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isMenuShown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lbl/xw;->isMenuShown()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v0}, Lbl/xw;->isControlEbook()Z

    move-result v3

    if-eqz v3, :cond_155

    invoke-virtual {v0}, Lbl/xw;->isMenuShown()Z

    move-result v3

    if-nez v3, :cond_155

    .line 459
    const-string v3, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xi.f: isEbookReadingContent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lbl/xw;->isEbookReadingContent()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v0}, Lbl/xw;->isEbookReadingContent()Z

    move-result v3

    if-nez v3, :cond_d1

    invoke-virtual {v0}, Lbl/xw;->isOrganizingShelf()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 463
    :cond_d1
    const-string v0, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xi.f: \u7535\u5b50\u4e66\u9605\u8bfb/\u6574\u7406\u4e66\u67b6\u9875\u9762\uff0c\u68c0\u67e5\u65b9\u5411\u952e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-eq p1, v6, :cond_f3

    if-eq p1, v7, :cond_f3

    if-eq p1, v8, :cond_f3

    const/16 v0, 0x16

    if-ne p1, v0, :cond_11d

    .line 469
    :cond_f3
    const-string v0, "EbookReader"

    const-string v3, "xi.f: \u65b9\u5411\u952e\u4e0d\u62e6\u622a\uff0c\u4f20\u9012\u5230\u4e0b\u4e00\u5c42"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0}, Lbl/xi;->next()Lbl/xh;

    move-result-object v0

    .line 472
    if-eqz v0, :cond_11d

    .line 473
    invoke-virtual {v0, p1, p2}, Lbl/xh;->f(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 474
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xi.f: next().f() \u8fd4\u56de "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_11c
    return v2

    .line 480
    :cond_11d
    const-string v0, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xi.f: \u7535\u5b50\u4e66\u6a21\u5f0f\uff0c\u62e6\u622a\u6309\u952e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/16 v0, 0x17

    if-eq p1, v0, :cond_147

    const/16 v0, 0x42

    if-eq p1, v0, :cond_147

    if-eq p1, v6, :cond_147

    if-eq p1, v7, :cond_147

    if-eq p1, v8, :cond_147

    const/16 v0, 0x16

    if-ne p1, v0, :cond_155

    .line 488
    :cond_147
    const-string v0, "EbookReader"

    const-string v1, "xi.f: \u62e6\u622a\u65b9\u5411\u952e/\u786e\u8ba4\u952e\uff0c\u907f\u514d\u89e6\u53d1\u89c6\u9891\u903b\u8f91"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11c

    .line 494
    :cond_14f
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto/16 :goto_5d

    .line 497
    :cond_155
    packed-switch p1, :pswitch_data_26a

    move v2, v1

    .line 534
    goto :goto_11c

    :pswitch_15a
    move-object v0, p0

    .line 501
    :cond_15b
    if-eqz v0, :cond_18e

    .line 502
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    .line 503
    instance-of v3, v0, Lbl/xl;

    if-eqz v3, :cond_15b

    .line 504
    check-cast v0, Lbl/xl;

    .line 505
    invoke-virtual {v0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v0

    .line 506
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

    .line 507
    if-eqz v0, :cond_18e

    .line 508
    const-string v0, "ShotMenuBug"

    const-string v2, "xi.f: shot menu showing, ignoring LEFT/RIGHT key"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 509
    goto :goto_11c

    .line 515
    :cond_18e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_196

    .line 516
    iput-boolean v2, p0, Lbl/xi;->isLongPress:Z

    .line 519
    :cond_196
    invoke-direct {p0, p1}, Lbl/xi;->computeSeekTarget(I)I

    move-result v3

    .line 520
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v4

    .line 521
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-eqz v0, :cond_263

    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getDuration()I

    move-result v0

    .line 522
    :goto_1a8
    const-string v5, "SeekPreview"

    const-string v6, "=== f() called ==="

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
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

    .line 524
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

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v5, "SeekPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "videoDuration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "s"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v5, "SeekPreview"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bottomSeekBar duration="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-eqz v0, :cond_266

    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_242
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-eqz v0, :cond_256

    .line 528
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0, v3, v2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a(IZ)V

    .line 530
    :cond_256
    invoke-direct {p0}, Lbl/xi;->showSeekPreview()V

    .line 531
    iget-boolean v0, p0, Lbl/xi;->isLongPress:Z

    if-nez v0, :cond_25e

    move v1, v2

    :cond_25e
    invoke-direct {p0, v3, v4, v1}, Lbl/xi;->updateSeekPreview(IIZ)V

    goto/16 :goto_11c

    :cond_263
    move v0, v1

    .line 521
    goto/16 :goto_1a8

    .line 526
    :cond_266
    const-string v0, "null"

    goto :goto_242

    .line 497
    nop

    :pswitch_data_26a
    .packed-switch 0x15
        :pswitch_15a
        :pswitch_15a
    .end packed-switch
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 541
    const-string v0, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xi.g: \u6536\u5230\u6309\u952e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 546
    :goto_1b
    if-eqz v0, :cond_108

    .line 547
    instance-of v3, v0, Lbl/xw;

    if-eqz v3, :cond_102

    .line 548
    check-cast v0, Lbl/xw;

    .line 549
    const-string v3, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xi.g: \u627e\u5230xw, isEbookMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lbl/xw;->isEbookMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isControlEbook="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lbl/xw;->isControlEbook()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isMenuShown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lbl/xw;->isMenuShown()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {v0}, Lbl/xw;->isControlEbook()Z

    move-result v3

    if-eqz v3, :cond_108

    invoke-virtual {v0}, Lbl/xw;->isMenuShown()Z

    move-result v3

    if-nez v3, :cond_108

    .line 553
    const-string v3, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xi.g: isEbookReadingContent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lbl/xw;->isEbookReadingContent()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {v0}, Lbl/xw;->isEbookReadingContent()Z

    move-result v3

    if-nez v3, :cond_8f

    invoke-virtual {v0}, Lbl/xw;->isOrganizingShelf()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 557
    :cond_8f
    const-string v0, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xi.g: \u7535\u5b50\u4e66\u9605\u8bfb/\u6574\u7406\u4e66\u67b6\u9875\u9762\uff0c\u68c0\u67e5\u65b9\u5411\u952e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/16 v0, 0x13

    if-eq p1, v0, :cond_b7

    const/16 v0, 0x14

    if-eq p1, v0, :cond_b7

    const/16 v0, 0x15

    if-eq p1, v0, :cond_b7

    const/16 v0, 0x16

    if-ne p1, v0, :cond_e1

    .line 563
    :cond_b7
    const-string v0, "EbookReader"

    const-string v3, "xi.g: \u65b9\u5411\u952e\u4e0d\u62e6\u622a\uff0c\u4f20\u9012\u5230\u4e0b\u4e00\u5c42"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {p0}, Lbl/xi;->next()Lbl/xh;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_e1

    .line 567
    invoke-virtual {v0, p1, p2}, Lbl/xh;->g(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 568
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xi.g: next().g() \u8fd4\u56de "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :goto_e0
    return v0

    .line 574
    :cond_e1
    const-string v0, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xi.g: \u7535\u5b50\u4e66\u6a21\u5f0f\uff0c\u62e6\u622a\u6309\u952e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/16 v0, 0x52

    if-eq p1, v0, :cond_108

    const/4 v0, 0x4

    if-eq p1, v0, :cond_108

    move v0, v1

    .line 577
    goto :goto_e0

    .line 582
    :cond_102
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto/16 :goto_1b

    .line 587
    :cond_108
    const/16 v0, 0x17

    if-eq p1, v0, :cond_114

    const/16 v0, 0x42

    if-eq p1, v0, :cond_114

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_12d

    .line 588
    :cond_114
    invoke-virtual {p0}, Lbl/xi;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_more_action_key(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_12d

    .line 589
    iget-object v0, p0, Lbl/xi;->moreActionHandler:Landroid/os/Handler;

    iget-object v3, p0, Lbl/xi;->moreActionOkLongRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 590
    iget-boolean v0, p0, Lbl/xi;->moreActionOkLongFired:Z

    if-eqz v0, :cond_12d

    .line 591
    iput-boolean v2, p0, Lbl/xi;->moreActionOkLongFired:Z

    move v0, v1

    .line 592
    goto :goto_e0

    .line 597
    :cond_12d
    sparse-switch p1, :sswitch_data_156

    move v0, v2

    .line 622
    goto :goto_e0

    .line 599
    :sswitch_132
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 600
    invoke-virtual {p0}, Lbl/xi;->v()V

    move v0, v1

    .line 601
    goto :goto_e0

    :cond_13d
    move v0, v2

    .line 603
    goto :goto_e0

    .line 605
    :sswitch_13f
    invoke-virtual {p0}, Lbl/xi;->tt()V

    move v0, v1

    .line 606
    goto :goto_e0

    :sswitch_144
    move v0, v2

    .line 608
    goto :goto_e0

    .line 611
    :sswitch_146
    invoke-direct {p0, v2}, Lbl/xi;->commitSeek(Z)V

    move v0, v2

    .line 612
    goto :goto_e0

    .line 614
    :sswitch_14b
    invoke-direct {p0, v1}, Lbl/xi;->commitSeek(Z)V

    move v0, v2

    .line 615
    goto :goto_e0

    .line 619
    :sswitch_150
    invoke-direct {p0}, Lbl/xi;->T()V

    move v0, v1

    .line 620
    goto :goto_e0

    .line 597
    nop

    :sswitch_data_156
    .sparse-switch
        0x4 -> :sswitch_132
        0x13 -> :sswitch_13f
        0x14 -> :sswitch_144
        0x15 -> :sswitch_146
        0x16 -> :sswitch_14b
        0x17 -> :sswitch_150
        0x42 -> :sswitch_150
        0xa0 -> :sswitch_150
    .end sparse-switch
.end method

.method public h()V
    .locals 0

    .prologue
    .line 821
    invoke-super {p0}, Lbl/xh;->h()V

    .line 822
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

    .line 840
    .line 841
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_f

    .line 890
    :cond_e
    :goto_e
    return v2

    .line 844
    :cond_f
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_d0

    .line 885
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

    .line 889
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

    .line 890
    if-nez v0, :cond_4b

    invoke-super {p0, p1}, Lbl/xh;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_4b
    move v2, v1

    goto :goto_e

    .line 846
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

    .line 847
    goto :goto_2c

    .line 849
    :sswitch_62
    invoke-direct {p0}, Lbl/xi;->U()V

    .line 850
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 851
    if-eqz v0, :cond_cc

    iget-object v3, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->isAttachedToView(Landroid/view/ViewGroup;)Z

    move-result v3

    if-nez v3, :cond_cc

    .line 852
    iget-object v3, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->attachVideoView(Landroid/view/ViewGroup;)V

    move v0, v1

    goto :goto_2c

    .line 856
    :sswitch_7a
    invoke-direct {p0, p1}, Lbl/xi;->b(Landroid/os/Message;)V

    move v0, v1

    .line 857
    goto :goto_2c

    .line 859
    :sswitch_7f
    invoke-virtual {p0}, Lbl/xi;->Q()V

    move v0, v1

    .line 860
    goto :goto_2c

    .line 862
    :sswitch_84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 863
    if-eqz v0, :cond_cc

    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 865
    cmp-long v0, v4, v10

    if-ltz v0, :cond_a3

    const-wide/16 v6, 0x4650

    cmp-long v0, v4, v6

    if-gez v0, :cond_a3

    .line 866
    const v0, 0x7f0c0013

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    :cond_a3
    move v0, v1

    .line 868
    goto :goto_2c

    .line 871
    :sswitch_a5
    const-string v0, "PlaySpeed"

    const-string v3, "[XI_10201] RESOLVE_PREPARED received, calling c(message)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-direct {p0, p1}, Lbl/xi;->c(Landroid/os/Message;)V

    move v0, v1

    .line 873
    goto/16 :goto_2c

    .line 875
    :sswitch_b2
    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 876
    invoke-virtual {p0}, Lbl/xi;->C()V

    .line 878
    :cond_bb
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v6}, Lbl/aaq;->removeMessages(I)V

    .line 879
    const v0, 0x7f0c0010

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    move v0, v1

    .line 880
    goto/16 :goto_2c

    :sswitch_c9
    move v0, v1

    .line 883
    goto/16 :goto_2c

    :cond_cc
    move v0, v1

    goto/16 :goto_2c

    .line 844
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
    .line 428
    invoke-virtual {p0}, Lbl/xi;->a()Lbl/xh;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 429
    invoke-virtual {p0}, Lbl/xi;->a()Lbl/xh;

    move-result-object v0

    invoke-virtual {v0}, Lbl/xh;->l()Landroid/view/ViewGroup;

    move-result-object v0

    .line 431
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    goto :goto_e
.end method

.method public m()Lbl/yd;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    return-object v0
.end method

.method public n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    return-object v0
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1233
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 1235
    invoke-static {}, Lmybl/VideoViewParams;->reportPlaybackFailed()V

    .line 1237
    invoke-virtual {p0}, Lbl/xi;->y()Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    move-result-object v0

    .line 1238
    iget v1, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->d:I

    iget v2, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->e:I

    if-lt v1, v2, :cond_1b

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    sget-object v1, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->NONE:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    invoke-virtual {v0, v1}, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1242
    :cond_1b
    :goto_1b
    return v3

    .line 1241
    :cond_1c
    const v0, 0x7f0c000f

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    goto :goto_1b
.end method

.method public varargs onExtraInfo(I[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1642
    invoke-super {p0, p1, p2}, Lbl/xh;->onExtraInfo(I[Ljava/lang/Object;)V

    .line 1643
    const v0, 0x10018

    if-ne p1, v0, :cond_17

    .line 1644
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_16

    .line 1645
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    new-instance v1, Lbl/xi$9;

    invoke-direct {v1, p0}, Lbl/xi$9;-><init>(Lbl/xi;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->post(Ljava/lang/Runnable;)Z

    .line 1663
    :cond_16
    :goto_16
    return-void

    .line 1652
    :cond_17
    const v0, 0x10019

    if-ne p1, v0, :cond_16

    .line 1653
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_16

    .line 1656
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    new-instance v1, Lbl/xi$10;

    invoke-direct {v1, p0}, Lbl/xi$10;-><init>(Lbl/xi;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->post(Ljava/lang/Runnable;)Z

    goto :goto_16
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 6

    .prologue
    const/16 v2, 0x4e84

    const/4 v1, 0x0

    .line 1198
    .line 1199
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 1200
    const/16 v0, 0x321

    if-eq p2, v0, :cond_4b

    .line 1201
    packed-switch p2, :pswitch_data_54

    .line 1224
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 1227
    :goto_e
    return v0

    .line 1203
    :pswitch_f
    invoke-virtual {p0}, Lbl/xi;->M()V

    .line 1204
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    if-eqz v0, :cond_d

    .line 1205
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->removeMessages(I)V

    .line 1206
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1207
    const/4 v0, 0x0

    check-cast v0, Lbl/xh$a;

    invoke-static {}, Lbl/xh$a;->a()Lbl/xh$a;

    move-result-object v0

    .line 1208
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    iput v3, v0, Lbl/xh$a;->a:I

    .line 1209
    iput v1, v0, Lbl/xh$a;->b:I

    .line 1210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lbl/xh$a;->c:J

    .line 1211
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1212
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d

    .line 1216
    :pswitch_3e
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    if-eqz v0, :cond_47

    .line 1217
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->removeMessages(I)V

    .line 1219
    :cond_47
    invoke-virtual {p0}, Lbl/xi;->N()V

    goto :goto_d

    .line 1226
    :cond_4b
    const-string v0, "BasicTVPlayerAdapter"

    const-string v2, "media not seekable"

    invoke-static {v0, v2}, Ltv/danmaku/android/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1227
    goto :goto_e

    .line 1201
    :pswitch_data_54
    .packed-switch 0x2bd
        :pswitch_f
        :pswitch_3e
    .end packed-switch
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public onNativeInvoke(ILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1667
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

    .line 1669
    if-eqz p2, :cond_be

    .line 1670
    const-string v0, "url"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1671
    const-string v2, "http_code"

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1672
    const-string v3, "error"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1674
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

    .line 1676
    const/16 v0, 0x193

    if-eq v2, v0, :cond_78

    const/16 v0, 0x194

    if-eq v2, v0, :cond_78

    const/16 v0, 0x19a

    if-ne v2, v0, :cond_ac

    .line 1677
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

    .line 1678
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

    .line 1689
    :goto_a7
    return v0

    .line 1667
    :cond_a8
    const-string v0, "null"

    goto/16 :goto_1f

    .line 1682
    :cond_ac
    if-nez v3, :cond_b0

    if-nez v2, :cond_be

    .line 1683
    :cond_b0
    const-string v0, "xi"

    const-string v2, "[IJK_NATIVE_INVOKE] Network error detected, triggering URL refresh"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const-string v0, "Network error"

    invoke-static {v3, v0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->triggerErrorRefresh(ILjava/lang/String;)V

    move v0, v1

    .line 1685
    goto :goto_a7

    .line 1689
    :cond_be
    invoke-super {p0, p1, p2}, Lbl/xh;->onNativeInvoke(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_a7
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 6

    .prologue
    .line 1247
    const-string v0, "PlaySpeed"

    const-string v1, "[XI_ON_PREPARED] onPrepared() called, video ready to play"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-static {}, Lmybl/VideoViewParams;->reportPlaybackSuccess()V

    .line 1250
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1251
    invoke-virtual {p0}, Lbl/xi;->F()V

    .line 1253
    :cond_13
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1254
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->c()V

    .line 1256
    :cond_20
    invoke-virtual {p0}, Lbl/xi;->O()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1257
    invoke-virtual {p0}, Lbl/xi;->N()V

    .line 1273
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 1274
    if-eqz v0, :cond_50

    .line 1275
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    .line 1276
    if-eqz v0, :cond_50

    .line 1277
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 1278
    if-eqz v0, :cond_50

    instance-of v1, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v1, :cond_50

    .line 1279
    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    .line 1281
    new-instance v1, Lbl/xi$7;

    invoke-direct {v1, p0}, Lbl/xi$7;-><init>(Lbl/xi;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setErrorListener(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;)V

    .line 1297
    const-string v0, "xi"

    const-string v1, "[ERROR_LISTENER] Error listener setup successfully in onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/IllegalAccessError; {:try_start_29 .. :try_end_50} :catch_17f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_50} :catch_189

    .line 1307
    :cond_50
    :goto_50
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const v1, 0x4c4c08

    invoke-virtual {v0, v1}, Lbl/aaq;->sendEmptyMessage(I)Z

    .line 1309
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 1310
    if-eqz v0, :cond_1a8

    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v1, :cond_1a8

    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    if-eqz v1, :cond_1a8

    .line 1311
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 1312
    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    iput-wide v2, p0, Lbl/xi;->currentAid:J

    .line 1313
    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iput-wide v2, p0, Lbl/xi;->currentCid:J

    .line 1314
    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    iput-object v1, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    .line 1315
    iget v1, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    iput v1, p0, Lbl/xi;->currentPage:I

    .line 1317
    const-string v1, "VideoShot"

    const-string v2, "========== ResolveParams Details =========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
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

    .line 1319
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

    .line 1320
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

    .line 1321
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

    .line 1322
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

    .line 1323
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

    .line 1324
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

    .line 1325
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

    .line 1326
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

    .line 1327
    const-string v0, "VideoShot"

    const-string v1, "========== End ResolveParams =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    invoke-direct {p0}, Lbl/xi;->loadVideoShot()V

    .line 1334
    :goto_17b
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 1335
    return-void

    .line 1301
    :catch_17f
    move-exception v0

    .line 1302
    const-string v0, "xi"

    const-string v1, "[ERROR_LISTENER] IllegalAccessError when accessing player (likely IjkPlayer), skipping error listener setup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50

    .line 1303
    :catch_189
    move-exception v0

    .line 1304
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

    .line 1331
    :cond_1a8
    const-string v0, "VideoShot"

    const-string v1, "onPrepared: params is null or incomplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17b
.end method

.method public r()V
    .locals 4

    .prologue
    .line 1126
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    if-eqz v0, :cond_9

    .line 1127
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 1129
    :cond_9
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_1a

    .line 1130
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->attachDanmakuView(Landroid/view/ViewGroup;ZI)V

    .line 1132
    :try_start_15
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->release()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_23

    .line 1136
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0}, Lbl/aaq;->a()V

    .line 1137
    invoke-super {p0}, Lbl/xh;->r()V

    .line 1138
    return-void

    .line 1133
    :catch_23
    move-exception v0

    goto :goto_1a
.end method

.method public refreshTvToggleIcon()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 697
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    .line 698
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_20

    .line 699
    :cond_1a
    invoke-direct {p0}, Lbl/xi;->isShotMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_20
    move v0, v2

    .line 700
    :goto_21
    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v3

    .line 701
    const-string v4, "BottomUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[refreshTvToggleIcon] bottomUiShowing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", paused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-eqz v3, :cond_51

    if-eqz v0, :cond_51

    :goto_4b
    invoke-direct {p0, v2}, Lbl/xi;->d(Z)V

    .line 703
    return-void

    :cond_4f
    move v0, v1

    .line 699
    goto :goto_21

    :cond_51
    move v2, v1

    .line 702
    goto :goto_4b
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 779
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
    .line 730
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xi;->a(Ljava/lang/Runnable;)V

    .line 732
    invoke-direct {p0}, Lbl/xi;->toggleSimpleShotMenu()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 733
    invoke-super {p0}, Lbl/xh;->t()V

    .line 734
    invoke-virtual {p0}, Lbl/xi;->refreshTvToggleIcon()V

    .line 740
    :goto_11
    return-void

    .line 737
    :cond_12
    invoke-virtual {p0}, Lbl/xi;->P()V

    .line 738
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v0, v2, v3}, Lbl/xi;->a(Ljava/lang/Runnable;J)V

    .line 739
    :cond_20
    invoke-super {p0}, Lbl/xh;->t()V

    goto :goto_11
.end method

.method public tt()V
    .locals 4

    .prologue
    .line 744
    move-object v0, p0

    .line 745
    :goto_1
    if-eqz v0, :cond_22

    .line 746
    instance-of v1, v0, Lbl/xw;

    if-eqz v1, :cond_1d

    .line 747
    check-cast v0, Lbl/xw;

    .line 749
    invoke-virtual {v0}, Lbl/xw;->isControlEbook()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lbl/xw;->isMenuShown()Z

    move-result v0

    if-nez v0, :cond_22

    .line 750
    const-string v0, "ShotMenuBug"

    const-string v1, "tt: \u7535\u5b50\u4e66\u6a21\u5f0f\uff0c\u4e0d\u663e\u793a\u8fdb\u5ea6\u9884\u89c8\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :goto_1c
    return-void

    .line 755
    :cond_1d
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_1

    .line 759
    :cond_22
    invoke-direct {p0}, Lbl/xi;->toggleSimpleShotMenu()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 760
    invoke-super {p0}, Lbl/xh;->t()V

    .line 761
    invoke-virtual {p0}, Lbl/xi;->refreshTvToggleIcon()V

    goto :goto_1c

    .line 765
    :cond_2f
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_44

    .line 766
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lbl/xi;->v()V

    .line 773
    :goto_3c
    invoke-super {p0}, Lbl/xh;->t()V

    goto :goto_1c

    .line 767
    :cond_40
    invoke-virtual {p0}, Lbl/xi;->P()V

    goto :goto_3c

    .line 769
    :cond_44
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xi;->a(Ljava/lang/Runnable;)V

    .line 770
    invoke-virtual {p0}, Lbl/xi;->P()V

    .line 771
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v0, v2, v3}, Lbl/xi;->a(Ljava/lang/Runnable;J)V

    goto :goto_3c
.end method

.method public u()V
    .locals 1

    .prologue
    .line 964
    invoke-super {p0}, Lbl/xh;->u()V

    .line 965
    invoke-virtual {p0}, Lbl/xi;->Q()V

    .line 966
    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 967
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 969
    :cond_10
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 785
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 786
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 789
    :cond_13
    invoke-super {p0}, Lbl/xh;->v()V

    .line 790
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 974
    invoke-super {p0}, Lbl/xh;->w()V

    .line 975
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 976
    return-void
.end method
