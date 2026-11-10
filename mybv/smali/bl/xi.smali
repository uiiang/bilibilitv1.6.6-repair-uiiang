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

.field private static final TAG_BG:Ljava/lang/String; = "PlayerBackground"

.field public static error_message:Ljava/lang/String;


# instance fields
.field private bgMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private bgNeedResync:Z

.field private bgPosition:I

.field private bgSurfaceDetached:Z

.field private bgVideoSurface:Landroid/view/Surface;

.field private bgWasPlaying:Z

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

.field private prefetchProvider:Lbl/PlayUrlPrefetch$StateProvider;

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

    .line 173
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 76
    iput-boolean v2, p0, Lbl/xi;->isSliding:Z

    .line 77
    iput-boolean v2, p0, Lbl/xi;->isLongPress:Z

    .line 78
    iput-boolean v2, p0, Lbl/xi;->r:Z

    .line 85
    iput-boolean v2, p0, Lbl/xi;->bgSurfaceDetached:Z

    .line 86
    iput-boolean v2, p0, Lbl/xi;->bgWasPlaying:Z

    .line 87
    iput v2, p0, Lbl/xi;->bgPosition:I

    .line 89
    iput-boolean v2, p0, Lbl/xi;->bgNeedResync:Z

    .line 91
    iput-boolean v2, p0, Lbl/xi;->s:Z

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbl/xi;->moreActionHandler:Landroid/os/Handler;

    .line 97
    iput-boolean v2, p0, Lbl/xi;->moreActionOkLongFired:Z

    .line 98
    new-instance v0, Lbl/xi$1;

    invoke-direct {v0, p0}, Lbl/xi$1;-><init>(Lbl/xi;)V

    iput-object v0, p0, Lbl/xi;->moreActionOkLongRunnable:Ljava/lang/Runnable;

    .line 119
    iput v2, p0, Lbl/xi;->seekBaseMs:I

    .line 120
    iput v2, p0, Lbl/xi;->seekRawMs:I

    .line 121
    iput v2, p0, Lbl/xi;->seekTargetMs:I

    .line 122
    iput v3, p0, Lbl/xi;->seekStepSec:I

    .line 123
    iput v3, p0, Lbl/xi;->seekStepInc:I

    .line 124
    iput-wide v4, p0, Lbl/xi;->seekLastStepGrowMs:J

    .line 125
    iput-wide v4, p0, Lbl/xi;->seekLastEventMs:J

    .line 126
    iput-boolean v3, p0, Lbl/xi;->seekDirectionForward:Z

    .line 141
    new-instance v0, Lbl/xi$2;

    invoke-direct {v0, p0}, Lbl/xi$2;-><init>(Lbl/xi;)V

    iput-object v0, p0, Lbl/xi;->hideSeekPreviewRunnable:Ljava/lang/Runnable;

    .line 148
    new-instance v0, Lbl/xi$3;

    invoke-direct {v0, p0}, Lbl/xi$3;-><init>(Lbl/xi;)V

    iput-object v0, p0, Lbl/xi;->seekRefreshRunnable:Ljava/lang/Runnable;

    .line 156
    new-instance v0, Lbl/xi$4;

    invoke-direct {v0, p0}, Lbl/xi$4;-><init>(Lbl/xi;)V

    iput-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    .line 174
    new-instance v0, Lbl/aaq;

    invoke-direct {v0, p0}, Lbl/aaq;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    .line 175
    return-void
.end method

.method private T()V
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lbl/xi;->D()V

    .line 869
    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 871
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lbl/xi;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_18

    .line 872
    invoke-virtual {p0}, Lbl/xi;->v()V

    .line 874
    :cond_18
    invoke-direct {p0}, Lbl/xi;->closeShotMenu()Z

    .line 875
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 886
    :goto_1f
    return-void

    .line 878
    :cond_20
    invoke-direct {p0}, Lbl/xi;->ensureSimpleShotMenu()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 879
    invoke-super {p0}, Lbl/xh;->t()V

    .line 880
    invoke-virtual {p0}, Lbl/xi;->refreshTvToggleIcon()V

    goto :goto_1f

    .line 883
    :cond_2d
    invoke-virtual {p0}, Lbl/xi;->P()V

    .line 884
    invoke-super {p0}, Lbl/xh;->t()V

    goto :goto_1f
.end method

.method private U()V
    .locals 2

    .prologue
    .line 1051
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 1052
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    .line 1053
    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    iget-boolean v0, p0, Lbl/xi;->s:Z

    if-eqz v0, :cond_11

    .line 1065
    :cond_10
    :goto_10
    return-void

    .line 1056
    :cond_11
    new-instance v0, Lbl/xi$6;

    invoke-direct {v0, p0}, Lbl/xi$6;-><init>(Lbl/xi;)V

    invoke-interface {v1, v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->addPlayerEventListener(Ltv/danmaku/videoplayer/core/context/IPlayerContext$PlayerEventListener;)V

    .line 1064
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xi;->s:Z

    goto :goto_10
.end method

.method private V()V
    .locals 7

    .prologue
    .line 1168
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1169
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

    .line 1170
    return-void
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 1173
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-nez v0, :cond_5

    .line 1182
    :cond_4
    :goto_4
    return-void

    .line 1176
    :cond_5
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->setMax(I)V

    .line 1177
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->setProgress(I)V

    .line 1178
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 1179
    if-eqz v0, :cond_4

    .line 1180
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

    .line 1203
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v11

    .line 1204
    if-nez v11, :cond_9

    .line 1266
    :goto_8
    return-void

    .line 1207
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1208
    if-eqz v0, :cond_1a

    invoke-static {v11, v0}, Lbl/zs;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    move-object v10, v0

    .line 1209
    :goto_14
    if-nez v10, :cond_1c

    .line 1210
    invoke-virtual {v11}, Landroid/app/Activity;->finish()V

    goto :goto_8

    :cond_1a
    move-object v10, v9

    .line 1208
    goto :goto_14

    .line 1213
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

    .line 1214
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 1217
    :cond_41
    iget-object v0, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 1218
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmybl/VideoViewParams;->setCurrentVideo(Ljava/lang/String;)V

    .line 1220
    new-instance v2, Lbl/yh;

    invoke-direct {v2}, Lbl/yh;-><init>()V

    .line 1221
    iput-object v10, v2, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 1222
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

    .line 1223
    new-instance v0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;

    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v3, v10, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-virtual {p0}, Lbl/xi;->S()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;-><init>(Landroid/content/Context;Ltv/danmaku/videoplayer/core/videoview/IVideoParams;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;I)V

    iput-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    .line 1224
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    iget-object v1, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-virtual {v0, v1}, Lbl/yd;->a(Ltv/danmaku/videoplayer/core/context/IPlayerContext;)V

    .line 1225
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    new-instance v1, Lbl/xd;

    invoke-direct {v1}, Lbl/xd;-><init>()V

    invoke-virtual {v0, v1}, Lbl/yd;->a(Lbl/xd;)V

    .line 1226
    invoke-virtual {p0}, Lbl/xi;->c()Lbl/yh;

    move-result-object v0

    iput-object v10, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 1227
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v8

    .line 1228
    if-nez v8, :cond_b5

    .line 1229
    invoke-virtual {v11}, Landroid/app/Activity;->finish()V

    goto/16 :goto_8

    .line 1232
    :cond_b5
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    iget-object v1, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v1}, Lbl/yd;->a(Lbl/aaq;)V

    .line 1233
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lbl/yd;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnVideoDefnChangedListener;Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 1234
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->a()Ljava/util/concurrent/Future;

    .line 1235
    invoke-virtual {p0}, Lbl/xi;->R()V

    .line 1236
    invoke-static {v8}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v1

    .line 1237
    invoke-static {v8}, Lbl/yr;->d(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v2

    .line 1238
    const-string v0, "CoverDebug"

    const-string v3, "========== xi.d() Cover Info =========="

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
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

    .line 1241
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v0, :cond_201

    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_201

    .line 1242
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_201

    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-le v0, v12, :cond_201

    .line 1243
    iget-object v0, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 1246
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

    .line 1247
    invoke-virtual {v8}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 1248
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_198

    .line 1249
    iget-object v1, v8, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v1}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1263
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

    .line 1264
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

    .line 1265
    iget-object v1, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v1, v2, v0}, Lbl/aar;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1251
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

    .line 1253
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

    .line 1256
    if-eqz v1, :cond_1e7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e7

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e7

    .line 1257
    const-string v0, "LoadingTitle"

    const-string v3, "mainTitle equals pageTitle, hide tv_loading_page"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 1258
    goto/16 :goto_15a

    .line 1260
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
    .line 1975
    if-nez p1, :cond_4

    .line 1976
    sget-object p1, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_SCREEN:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    .line 1978
    :cond_4
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setAspectRatio(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 1979
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 1980
    if-eqz v0, :cond_14

    .line 1981
    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setAspectRatio(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 1983
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
    .line 1185
    const/4 v0, -0x1

    if-le p1, v0, :cond_5

    if-gtz p2, :cond_6

    .line 1190
    :cond_5
    :goto_5
    return-void

    .line 1188
    :cond_6
    iget-object v0, p0, Lbl/xi;->j:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1189
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
    .line 1068
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/xh$a;

    .line 1069
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v2

    .line 1070
    if-eqz v0, :cond_18

    if-eqz v2, :cond_18

    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lbl/xi;->L()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1071
    :cond_18
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v1, 0x4e84

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 1072
    invoke-virtual {p0}, Lbl/xi;->N()V

    .line 1097
    :goto_22
    return-void

    .line 1075
    :cond_23
    iget v3, v0, Lbl/xh$a;->b:I

    .line 1076
    iget v1, v0, Lbl/xh$a;->a:I

    .line 1077
    invoke-interface {v2}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getCurrentPosition()I

    move-result v2

    .line 1078
    iget-wide v4, v0, Lbl/xh$a;->c:J

    .line 1079
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

    .line 1080
    if-ne v2, v1, :cond_66

    .line 1090
    :goto_47
    iget-object v2, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v6, 0x4e84

    invoke-virtual {v2, v6}, Lbl/aaq;->removeMessages(I)V

    .line 1091
    iget-object v2, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v6, 0x4e84

    invoke-virtual {v2, v6}, Lbl/aaq;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1092
    iput v1, v0, Lbl/xh$a;->a:I

    .line 1093
    iput v3, v0, Lbl/xh$a;->b:I

    .line 1094
    iput-wide v4, v0, Lbl/xh$a;->c:J

    .line 1095
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1096
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Lbl/aaq;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_22

    .line 1082
    :cond_66
    sub-int v6, v2, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x1388

    if-lt v6, v7, :cond_73

    const/4 v6, 0x3

    if-lt v3, v6, :cond_82

    .line 1083
    :cond_73
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const/16 v1, 0x4e84

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 1084
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    goto :goto_22

    .line 1087
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

    .line 1088
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    goto :goto_47
.end method

.method private c(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1100
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 1101
    iget-object v1, p0, Lbl/xi;->b:Lbl/aaq;

    const v2, 0x4c4c0a

    invoke-virtual {v1, v2}, Lbl/aaq;->removeMessages(I)V

    .line 1102
    const/4 v1, 0x0

    const/16 v2, 0x2bd

    invoke-virtual {p0, v1, v2, v3}, Lbl/xi;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 1103
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 1104
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 1105
    :cond_24
    const v0, 0x7f0c0014

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    .line 1116
    :goto_2a
    return-void

    .line 1108
    :cond_2b
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1109
    invoke-virtual {p0, v4}, Lbl/xi;->c(Z)V

    .line 1113
    :goto_36
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lbl/xi;->v()V

    .line 1114
    :cond_3d
    invoke-virtual {p0}, Lbl/xi;->R()V

    .line 1115
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lbl/xi;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    goto :goto_2a

    .line 1111
    :cond_4e
    invoke-virtual {p0}, Lbl/xi;->A()V

    goto :goto_36
.end method

.method private closeShotMenu()Z
    .locals 2

    .prologue
    .line 843
    invoke-direct {p0}, Lbl/xi;->findShotMenuHandler()Lbl/xl;

    move-result-object v0

    .line 844
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 845
    invoke-virtual {v0}, Lbl/xl;->hideShotMenu()V

    .line 846
    const/4 v0, 0x1

    .line 848
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

    .line 306
    iget-boolean v0, p0, Lbl/xi;->isSliding:Z

    if-nez v0, :cond_6

    .line 318
    :goto_5
    return-void

    .line 309
    :cond_6
    iget v0, p0, Lbl/xi;->seekTargetMs:I

    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 310
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v1

    int-to-long v2, v1

    .line 311
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

    .line 312
    invoke-static {v6, v7}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0, v0}, Lbl/xi;->c(I)V

    .line 314
    invoke-direct {p0}, Lbl/xi;->resetSeekState()V

    .line 315
    sget-object v1, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SEEK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    .line 316
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    .line 315
    invoke-virtual {p0, v1, v4}, Lbl/xi;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 317
    invoke-direct {p0}, Lbl/xi;->refreshProgressAfterSeek()V

    goto :goto_5
.end method

.method private computeSeekTarget(I)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 256
    const/16 v0, 0x16

    if-ne p1, v0, :cond_7d

    move v0, v1

    .line 257
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 258
    iget-wide v6, p0, Lbl/xi;->seekLastEventMs:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7d0

    cmp-long v3, v6, v8

    if-ltz v3, :cond_7f

    move v3, v1

    .line 259
    :goto_16
    iput-wide v4, p0, Lbl/xi;->seekLastEventMs:J

    .line 261
    iget-boolean v6, p0, Lbl/xi;->isSliding:Z

    if-eqz v6, :cond_1e

    if-eqz v3, :cond_81

    .line 263
    :cond_1e
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lbl/xi;->seekBaseMs:I

    .line 264
    iget v3, p0, Lbl/xi;->seekBaseMs:I

    iput v3, p0, Lbl/xi;->seekRawMs:I

    .line 265
    iput v1, p0, Lbl/xi;->seekStepSec:I

    .line 266
    iput v1, p0, Lbl/xi;->seekStepInc:I

    .line 267
    iput-wide v4, p0, Lbl/xi;->seekLastStepGrowMs:J

    .line 268
    iput-boolean v0, p0, Lbl/xi;->seekDirectionForward:Z

    .line 269
    iput-boolean v1, p0, Lbl/xi;->isSliding:Z

    .line 270
    iput-boolean v2, p0, Lbl/xi;->isLongPress:Z

    .line 282
    :cond_38
    :goto_38
    iget-wide v6, p0, Lbl/xi;->seekLastStepGrowMs:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1f4

    cmp-long v1, v6, v8

    if-ltz v1, :cond_57

    .line 283
    iput-wide v4, p0, Lbl/xi;->seekLastStepGrowMs:J

    .line 284
    const/16 v1, 0x78

    iget v3, p0, Lbl/xi;->seekStepSec:I

    iget v4, p0, Lbl/xi;->seekStepInc:I

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lbl/xi;->seekStepSec:I

    .line 285
    iget v1, p0, Lbl/xi;->seekStepInc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbl/xi;->seekStepInc:I

    .line 288
    :cond_57
    iget v1, p0, Lbl/xi;->seekStepSec:I

    mul-int/lit16 v1, v1, 0x3e8

    .line 289
    if-eqz v0, :cond_96

    iget v3, p0, Lbl/xi;->seekRawMs:I

    add-int/2addr v1, v3

    .line 290
    :goto_60
    iput v1, p0, Lbl/xi;->seekRawMs:I

    .line 294
    if-eqz v0, :cond_9b

    .line 295
    iget v0, p0, Lbl/xi;->seekBaseMs:I

    add-int/lit16 v0, v0, 0x2710

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 300
    :goto_6c
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lbl/xi;->seekTargetMs:I

    .line 301
    iget v0, p0, Lbl/xi;->seekTargetMs:I

    return v0

    :cond_7d
    move v0, v2

    .line 256
    goto :goto_7

    :cond_7f
    move v3, v2

    .line 258
    goto :goto_16

    .line 271
    :cond_81
    iget-boolean v3, p0, Lbl/xi;->seekDirectionForward:Z

    if-eq v0, v3, :cond_38

    .line 273
    iget v3, p0, Lbl/xi;->seekTargetMs:I

    iput v3, p0, Lbl/xi;->seekBaseMs:I

    .line 274
    iget v3, p0, Lbl/xi;->seekTargetMs:I

    iput v3, p0, Lbl/xi;->seekRawMs:I

    .line 275
    iput v1, p0, Lbl/xi;->seekStepSec:I

    .line 276
    iput v1, p0, Lbl/xi;->seekStepInc:I

    .line 277
    iput-wide v4, p0, Lbl/xi;->seekLastStepGrowMs:J

    .line 278
    iput-boolean v0, p0, Lbl/xi;->seekDirectionForward:Z

    goto :goto_38

    .line 289
    :cond_96
    iget v3, p0, Lbl/xi;->seekRawMs:I

    sub-int v1, v3, v1

    goto :goto_60

    .line 297
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
    .line 1341
    iget-object v0, p0, Lbl/xi;->n:Landroid/view/View;

    if-nez v0, :cond_13

    .line 1342
    const v0, 0x7f08013c

    invoke-virtual {p0, v0}, Lbl/xi;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbl/xi;->n:Landroid/view/View;

    .line 1344
    :cond_13
    iget-object v1, p0, Lbl/xi;->n:Landroid/view/View;

    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    return-void

    .line 1344
    :cond_1c
    const/16 v0, 0x8

    goto :goto_18
.end method

.method private detachSurfaceForBackground()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 499
    iget-object v1, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lbl/xi;->bgSurfaceDetached:Z

    if-eqz v1, :cond_a

    .line 522
    :cond_9
    :goto_9
    return-void

    .line 503
    :cond_a
    :try_start_a
    iget-object v1, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v1

    .line 504
    if-eqz v1, :cond_9

    .line 507
    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    .line 508
    if-eqz v2, :cond_9

    .line 511
    iget-object v3, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getCurrentPosition()I

    move-result v3

    iput v3, p0, Lbl/xi;->bgPosition:I

    .line 512
    iget-boolean v3, p0, Lbl/xi;->r:Z

    if-nez v3, :cond_2c

    iget-object v3, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_8a

    :cond_2c
    :goto_2c
    iput-boolean v0, p0, Lbl/xi;->bgWasPlaying:Z

    .line 513
    iput-object v2, p0, Lbl/xi;->bgMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 514
    invoke-static {v1}, Lbl/xi;->obtainVideoSurface(Ltv/danmaku/videoplayer/core/videoview/IVideoView;)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lbl/xi;->bgVideoSurface:Landroid/view/Surface;

    .line 515
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xi;->bgSurfaceDetached:Z

    .line 517
    const-string v0, "PlayerBackground"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ONSTOP] \u91ca\u653e\u89c6\u9891\u8f93\u51faSurface, pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbl/xi;->bgPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wasPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lbl/xi;->bgWasPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xi;->bgVideoSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_6f} :catch_70

    goto :goto_9

    .line 519
    :catch_70
    move-exception v0

    .line 520
    const-string v1, "PlayerBackground"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ONSTOP] \u91ca\u653e\u89c6\u9891\u8f93\u51faSurface\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 512
    :cond_8a
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 1269
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const v1, 0x4c4c0a

    invoke-virtual {v0, v1}, Lbl/aaq;->removeMessages(I)V

    .line 1270
    invoke-virtual {p0}, Lbl/xi;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/bll;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1271
    const p1, 0x7f0c000e

    .line 1273
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

    .line 1274
    :cond_2b
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    if-eqz v0, :cond_36

    .line 1275
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    sget-object v1, Lbl/xi;->error_message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbl/aar;->a(Ljava/lang/String;)V

    .line 1277
    :cond_36
    const/4 v0, 0x0

    sput-object v0, Lbl/xi;->error_message:Ljava/lang/String;

    .line 1278
    return-void
.end method

.method private ensureSimpleShotMenu()Z
    .locals 1

    .prologue
    .line 837
    invoke-direct {p0}, Lbl/xi;->findShotMenuHandler()Lbl/xl;

    move-result-object v0

    .line 838
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lbl/xl;->showSimpleShotMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private findShotMenuHandler()Lbl/xl;
    .locals 2

    .prologue
    .line 793
    invoke-virtual {p0}, Lbl/xi;->next()Lbl/xh;

    move-result-object v0

    .line 794
    :goto_4
    if-eqz v0, :cond_12

    .line 795
    instance-of v1, v0, Lbl/xl;

    if-eqz v1, :cond_d

    .line 796
    check-cast v0, Lbl/xl;

    .line 800
    :goto_c
    return-object v0

    .line 798
    :cond_d
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_4

    .line 800
    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private hideSeekPreview()V
    .locals 4

    .prologue
    .line 227
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 228
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 229
    const-string v0, "SeekPreview"

    const-string v1, "hideSeekPreview: gone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbl/xi;->seekLastEventMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2d

    const/4 v0, 0x1

    .line 234
    :goto_20
    iget-boolean v1, p0, Lbl/xi;->isSliding:Z

    if-eqz v1, :cond_26

    if-eqz v0, :cond_29

    .line 235
    :cond_26
    invoke-direct {p0}, Lbl/xi;->resetSeekState()V

    .line 237
    :cond_29
    invoke-direct {p0}, Lbl/xi;->removeSeekRefreshCallback()V

    .line 238
    return-void

    .line 233
    :cond_2d
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private initSeekPreview(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 202
    const v0, 0x7f0801f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 203
    if-eqz v0, :cond_56

    .line 204
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    .line 205
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    .line 206
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->seekPreviewTimeCurrent:Landroid/widget/TextView;

    .line 207
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->seekPreviewTimeTotal:Landroid/widget/TextView;

    .line 208
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0801f7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    .line 209
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 210
    const-string v0, "SeekPreview"

    const-string v1, "initSeekPreview: initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_55
    return-void

    .line 212
    :cond_56
    const-string v0, "SeekPreview"

    const-string v1, "initSeekPreview: seek_preview_group not found"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method private isBackgroundPlayerAlive()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 468
    iget-object v1, p0, Lbl/xi;->bgMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-nez v1, :cond_a

    .line 473
    :cond_9
    :goto_9
    return v0

    .line 471
    :cond_a
    iget-object v1, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v1

    .line 472
    if-eqz v1, :cond_1e

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    .line 473
    :goto_16
    if-eqz v1, :cond_9

    iget-object v2, p0, Lbl/xi;->bgMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-ne v1, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    .line 472
    :cond_1e
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private isShotMenuShowing()Z
    .locals 1

    .prologue
    .line 827
    invoke-direct {p0}, Lbl/xi;->findShotMenuHandler()Lbl/xl;

    move-result-object v0

    .line 828
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

    .line 1745
    .line 1746
    :try_start_2
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1753
    :cond_1d
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 1754
    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36"

    .line 1755
    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "Referer"

    const-string v3, "https://www.bilibili.com"

    .line 1756
    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 1757
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 1758
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_45} :catch_18a

    move-result-object v4

    .line 1760
    :try_start_46
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_95

    .line 1761
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

    .line 1787
    :try_start_6e
    invoke-virtual {v4}, Lokhttp3/Response;->close()V

    move-object v0, v1

    .line 1791
    :goto_72
    return-object v0

    .line 1748
    :cond_73
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1749
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

    .line 1750
    goto :goto_72

    .line 1764
    :cond_95
    :try_start_95
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v5

    .line 1765
    if-eqz v5, :cond_a2

    array-length v0, v5

    if-ge v0, v7, :cond_ae

    .line 1766
    :cond_a2
    const-string v0, "VideoShot"

    const-string v2, "loadIndexFromPvdata: empty body"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_95 .. :try_end_a9} :catchall_185

    .line 1787
    :try_start_a9
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_18a

    move-object v0, v1

    .line 1767
    goto :goto_72

    .line 1769
    :cond_ae
    :try_start_ae
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1770
    const/4 v0, 0x0

    :goto_b4
    add-int/lit8 v3, v0, 0x1

    array-length v6, v5

    if-ge v3, v6, :cond_d0

    .line 1771
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

    .line 1770
    add-int/lit8 v0, v0, 0x2

    goto :goto_b4

    .line 1774
    :cond_d0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_f8

    .line 1775
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

    .line 1787
    :try_start_f2
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f5} :catch_18a

    move-object v0, v1

    .line 1776
    goto/16 :goto_72

    .line 1778
    :cond_f8
    const/4 v0, 0x1

    move v3, v0

    :goto_fa
    :try_start_fa
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_158

    .line 1779
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

    .line 1780
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

    .line 1787
    :try_start_14e
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_151} :catch_18a

    move-object v0, v1

    .line 1781
    goto/16 :goto_72

    .line 1778
    :cond_154
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_fa

    .line 1784
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

    .line 1787
    :try_start_17f
    invoke-virtual {v4}, Lokhttp3/Response;->close()V

    move-object v0, v2

    .line 1785
    goto/16 :goto_72

    .line 1787
    :catchall_185
    move-exception v0

    invoke-virtual {v4}, Lokhttp3/Response;->close()V

    .line 1788
    throw v0
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_18a} :catch_18a

    .line 1789
    :catch_18a
    move-exception v0

    .line 1790
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

    .line 1791
    goto/16 :goto_72
.end method

.method private loadVideoShot()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1588
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

    .line 1589
    iget-wide v0, p0, Lbl/xi;->currentCid:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_42

    .line 1590
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: invalid cid, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :goto_41
    return-void

    .line 1594
    :cond_42
    iget-object v0, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1595
    :cond_4e
    iget-wide v0, p0, Lbl/xi;->currentAid:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_5c

    .line 1596
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: invalid aid and bvid, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 1601
    :cond_5c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbl/xi$9;

    invoke-direct {v1, p0}, Lbl/xi$9;-><init>(Lbl/xi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1736
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_41
.end method

.method private static obtainVideoSurface(Ltv/danmaku/videoplayer/core/videoview/IVideoView;)Landroid/view/Surface;
    .locals 2

    .prologue
    .line 566
    invoke-interface {p0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getView()Landroid/view/View;

    move-result-object v0

    .line 567
    instance-of v1, v0, Landroid/view/TextureView;

    if-eqz v1, :cond_16

    .line 568
    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 569
    if-eqz v1, :cond_25

    .line 570
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 575
    :goto_15
    return-object v0

    .line 572
    :cond_16
    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_25

    .line 573
    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_15

    .line 575
    :cond_25
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private refreshProgressAfterSeek()V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 357
    :goto_4
    return-void

    .line 355
    :cond_5
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xi;->seekRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 356
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xi;->seekRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method private removeHideSeekPreviewCallback()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 242
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xi;->hideSeekPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 244
    :cond_b
    return-void
.end method

.method private removeSeekRefreshCallback()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 361
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xi;->seekRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 363
    :cond_b
    return-void
.end method

.method private resetSeekState()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lbl/xi;->isSliding:Z

    .line 322
    iput-boolean v0, p0, Lbl/xi;->isLongPress:Z

    .line 323
    iput v0, p0, Lbl/xi;->seekBaseMs:I

    .line 324
    iput v0, p0, Lbl/xi;->seekRawMs:I

    .line 325
    iput v0, p0, Lbl/xi;->seekTargetMs:I

    .line 326
    iput v1, p0, Lbl/xi;->seekStepSec:I

    .line 327
    iput v1, p0, Lbl/xi;->seekStepInc:I

    .line 328
    iput-wide v2, p0, Lbl/xi;->seekLastStepGrowMs:J

    .line 329
    iput-wide v2, p0, Lbl/xi;->seekLastEventMs:J

    .line 330
    iput-boolean v1, p0, Lbl/xi;->seekDirectionForward:Z

    .line 331
    return-void
.end method

.method private restoreSurfaceAfterBackground()V
    .locals 4

    .prologue
    .line 529
    iget-boolean v0, p0, Lbl/xi;->bgSurfaceDetached:Z

    if-nez v0, :cond_5

    .line 560
    :cond_4
    :goto_4
    return-void

    .line 532
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xi;->bgSurfaceDetached:Z

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xi;->bgNeedResync:Z

    .line 536
    :try_start_b
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_4

    .line 539
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v2

    .line 540
    if-eqz v2, :cond_94

    invoke-interface {v2}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    move-object v1, v0

    .line 541
    :goto_1c
    if-eqz v1, :cond_4

    .line 544
    invoke-static {v2}, Lbl/xi;->obtainVideoSurface(Ltv/danmaku/videoplayer/core/videoview/IVideoView;)Landroid/view/Surface;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 546
    :cond_2a
    iget-object v0, p0, Lbl/xi;->bgVideoSurface:Landroid/view/Surface;

    .line 548
    :cond_2c
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 549
    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 550
    iput-object v0, p0, Lbl/xi;->bgVideoSurface:Landroid/view/Surface;

    .line 552
    :cond_39
    iget-boolean v1, p0, Lbl/xi;->bgWasPlaying:Z

    if-nez v1, :cond_48

    iget v1, p0, Lbl/xi;->bgPosition:I

    if-lez v1, :cond_48

    .line 553
    iget-object v1, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    iget v2, p0, Lbl/xi;->bgPosition:I

    invoke-interface {v1, v2}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->seekTo(I)V

    .line 555
    :cond_48
    const-string v1, "PlayerBackground"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ONSTART] \u6062\u590d\u89c6\u9891\u8f93\u51faSurface, pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lbl/xi;->bgPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wasPlaying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lbl/xi;->bgWasPlaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_78} :catch_79

    goto :goto_4

    .line 557
    :catch_79
    move-exception v0

    .line 558
    const-string v1, "PlayerBackground"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ONSTART] \u6062\u590d\u89c6\u9891\u8f93\u51faSurface\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 540
    :cond_94
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1c
.end method

.method private showPlayerRightMenu()V
    .locals 2

    .prologue
    .line 779
    move-object v0, p0

    .line 780
    :goto_1
    if-eqz v0, :cond_d

    .line 781
    instance-of v1, v0, Lbl/xw;

    if-eqz v1, :cond_e

    .line 782
    check-cast v0, Lbl/xw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbl/xw;->d(Z)V

    .line 787
    :cond_d
    return-void

    .line 785
    :cond_e
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_1
.end method

.method private showSeekPreview()V
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    .line 218
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 220
    const-string v0, "SeekPreview"

    const-string v1, "showSeekPreview: visible"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_16
    invoke-direct {p0}, Lbl/xi;->removeHideSeekPreviewCallback()V

    .line 223
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xi;->hideSeekPreviewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    return-void
.end method

.method private syncProgressUiWithPlayer()V
    .locals 3

    .prologue
    .line 338
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v0

    .line 339
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v1

    .line 340
    if-lez v0, :cond_d

    const/4 v2, -0x1

    if-gt v1, v2, :cond_e

    .line 349
    :cond_d
    :goto_d
    return-void

    .line 343
    :cond_e
    invoke-direct {p0, v1, v0}, Lbl/xi;->b(II)V

    .line 344
    invoke-direct {p0, v1, v0}, Lbl/xi;->a(II)V

    .line 345
    iget-object v2, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lbl/xi;->seekPreviewGroup:Landroid/view/ViewGroup;

    .line 346
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d

    .line 347
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lbl/xi;->updateSeekPreview(IIZ)V

    goto :goto_d
.end method

.method private toggleSimpleShotMenu()Z
    .locals 4

    .prologue
    .line 811
    invoke-direct {p0}, Lbl/xi;->findShotMenuHandler()Lbl/xl;

    move-result-object v0

    .line 812
    if-nez v0, :cond_8

    .line 813
    const/4 v0, 0x0

    .line 822
    :goto_7
    return v0

    .line 815
    :cond_8
    invoke-virtual {v0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 816
    const-string v1, "BottomUi"

    const-string v2, "[toggleSimpleShotMenu] menu showing -> hide"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {v0}, Lbl/xl;->hideShotMenu()V

    .line 818
    const/4 v0, 0x1

    goto :goto_7

    .line 820
    :cond_1a
    invoke-virtual {v0}, Lbl/xl;->showSimpleShotMenu()Z

    move-result v0

    .line 821
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
    .line 367
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lbl/xi;->updateSeekPreview(IIZ)V

    .line 368
    return-void
.end method

.method private updateSeekPreview(IIZ)V
    .locals 4

    .prologue
    .line 371
    const-string v0, "SeekPreview"

    const-string v1, "=== updateSeekPreview called ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
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

    .line 373
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

    .line 375
    iget-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_69

    .line 376
    iget-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 377
    iget-object v0, p0, Lbl/xi;->seekPreviewSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 379
    :cond_69
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeCurrent:Landroid/widget/TextView;

    if-eqz v0, :cond_77

    .line 380
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeCurrent:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_77
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeTotal:Landroid/widget/TextView;

    if-eqz v0, :cond_85

    .line 383
    iget-object v0, p0, Lbl/xi;->seekPreviewTimeTotal:Landroid/widget/TextView;

    int-to-long v2, p2

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :cond_85
    iget-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    if-eqz v0, :cond_97

    .line 389
    iget-object v0, p0, Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    const-string v0, "SeekPreview"

    const-string v1, "updateSeekPreview: snapshot disabled by constant"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_97
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 1300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/xi;->c(Z)V

    .line 1301
    return-void
.end method

.method public B()V
    .locals 1

    .prologue
    .line 1311
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1315
    :goto_6
    return-void

    .line 1314
    :cond_7
    invoke-super {p0}, Lbl/xh;->B()V

    goto :goto_6
.end method

.method public C()V
    .locals 1

    .prologue
    .line 1319
    invoke-super {p0}, Lbl/xh;->C()V

    .line 1320
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 1321
    if-eqz v0, :cond_c

    .line 1322
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->release()V

    .line 1324
    :cond_c
    invoke-virtual {p0}, Lbl/xi;->m()Lbl/yd;

    move-result-object v0

    .line 1325
    if-eqz v0, :cond_15

    .line 1326
    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 1334
    :cond_15
    :try_start_15
    invoke-static {}, Lbl/PlayUrlPrefetch;->release()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_1c

    .line 1337
    :goto_18
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xi;->prefetchProvider:Lbl/PlayUrlPrefetch$StateProvider;

    .line 1338
    return-void

    .line 1335
    :catch_1c
    move-exception v0

    goto :goto_18
.end method

.method public E()V
    .locals 1

    .prologue
    .line 1137
    invoke-super {p0}, Lbl/xh;->E()V

    .line 1138
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1139
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 1141
    :cond_d
    return-void
.end method

.method public F()V
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1356
    :goto_6
    return-void

    .line 1352
    :cond_7
    invoke-virtual {p0}, Lbl/xi;->L()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1353
    invoke-virtual {p0}, Lbl/xi;->A()V

    .line 1355
    :cond_10
    invoke-super {p0}, Lbl/xh;->F()V

    goto :goto_6
.end method

.method public G()V
    .locals 1

    .prologue
    .line 1145
    invoke-super {p0}, Lbl/xh;->G()V

    .line 1146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 1147
    return-void
.end method

.method public M()V
    .locals 2

    .prologue
    .line 1798
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    if-nez v0, :cond_17

    .line 1799
    new-instance v0, Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-direct {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;-><init>()V

    iput-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    .line 1800
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-static {v0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->setBufferingOverlayController(Lcom/bilibili/tv/player/BufferingOverlayController;)V

    .line 1801
    const-string v0, "xi"

    const-string v1, "[M] BufferingOverlayController initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :cond_17
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_22

    .line 1806
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    iget-object v1, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/BufferingOverlayController;->setBufferingView(Lcom/bilibili/tv/player/widget/PlayerBufferingView;)V

    .line 1809
    :cond_22
    invoke-static {}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->shouldSuppressBufferingOverlay()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1810
    const-string v0, "xi"

    const-string v1, "[M] Buffering overlay is suppressed, skip showing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :goto_2f
    return-void

    .line 1814
    :cond_30
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;->onBufferingStarted()V

    goto :goto_2f
.end method

.method public N()V
    .locals 2

    .prologue
    .line 1829
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    if-eqz v0, :cond_11

    .line 1830
    iget-object v0, p0, Lbl/xi;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;->onBufferingEnded()V

    .line 1834
    :cond_9
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 1835
    :cond_10
    :goto_10
    return-void

    .line 1831
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
    .line 1839
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

    .line 955
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    .line 960
    :cond_9
    :goto_9
    return-void

    .line 958
    :cond_a
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_9
.end method

.method protected Q()V
    .locals 7

    .prologue
    const v6, 0x4c4c08

    const-wide/16 v4, 0x0

    .line 1150
    iget-wide v0, p0, Lbl/xi;->p:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    .line 1151
    iput-wide v4, p0, Lbl/xi;->p:J

    .line 1153
    :cond_12
    invoke-direct {p0}, Lbl/xi;->V()V

    .line 1154
    iget-wide v0, p0, Lbl/xi;->p:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_21
    iget-boolean v0, p0, Lbl/xi;->isSliding:Z

    if-nez v0, :cond_28

    .line 1156
    invoke-direct {p0}, Lbl/xi;->syncProgressUiWithPlayer()V

    .line 1158
    :cond_28
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v6}, Lbl/aaq;->removeMessages(I)V

    .line 1159
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1160
    iget-wide v0, p0, Lbl/xi;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbl/xi;->p:J

    .line 1161
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v6, v2, v3}, Lbl/aaq;->sendEmptyMessageDelayed(IJ)Z

    .line 1165
    :goto_41
    return-void

    .line 1163
    :cond_42
    iput-wide v4, p0, Lbl/xi;->p:J

    goto :goto_41
.end method

.method protected R()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1844
    iget-object v0, p0, Lbl/xi;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lbl/xi;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-nez v1, :cond_11

    .line 1892
    :cond_10
    :goto_10
    return-void

    .line 1847
    :cond_11
    iget-object v2, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 1848
    invoke-static {v2}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v0

    .line 1851
    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 1852
    iget-object v1, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v1}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1853
    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 1854
    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7a

    move v6, v3

    .line 1855
    :goto_36
    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7c

    move v5, v3

    .line 1856
    :goto_3f
    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7e

    .line 1858
    :goto_47
    if-eqz v6, :cond_b2

    .line 1859
    if-eqz v5, :cond_98

    .line 1860
    if-eqz v3, :cond_80

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 1861
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

    .line 1891
    :cond_74
    :goto_74
    iget-object v1, p0, Lbl/xi;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_7a
    move v6, v4

    .line 1854
    goto :goto_36

    :cond_7c
    move v5, v4

    .line 1855
    goto :goto_3f

    :cond_7e
    move v3, v4

    .line 1856
    goto :goto_47

    .line 1863
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

    .line 1866
    :cond_98
    if-eqz v3, :cond_74

    .line 1867
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

    .line 1871
    :cond_b2
    if-eqz v5, :cond_d6

    .line 1872
    if-eqz v3, :cond_d4

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 1873
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

    .line 1875
    goto :goto_74

    .line 1878
    :cond_d6
    if-eqz v3, :cond_74

    move-object v0, v2

    .line 1879
    goto :goto_74

    .line 1883
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

    .line 1884
    iget-object v1, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 1885
    if-eqz v0, :cond_122

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_122

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_122

    .line 1886
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

    .line 1888
    goto/16 :goto_74
.end method

.method protected S()I
    .locals 1

    .prologue
    .line 1986
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    .line 1987
    if-eqz v0, :cond_b

    .line 1988
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1990
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
    .line 965
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 966
    const/4 v0, 0x0

    .line 968
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
    .line 179
    const v0, 0x7f0a0021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Message;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 1955
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 1956
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    invoke-direct {p0, v0}, Lbl/xi;->a(Ltv/danmaku/videoplayer/core/videoview/AspectRatio;)V

    .line 1958
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
    .line 1948
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/app/Activity;Lbl/xf;)V

    .line 1949
    const/4 v0, 0x4

    invoke-virtual {p2, v0, p0}, Lbl/xf;->a(ILbl/bbb;)V

    .line 1950
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1194
    invoke-super {p0, p1}, Lbl/xh;->a(Landroid/content/Intent;)V

    .line 1195
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1200
    :cond_13
    :goto_13
    return-void

    .line 1198
    :cond_14
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1199
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lbl/xi;->a(Landroid/content/Intent;Z)V

    goto :goto_13
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 184
    const v0, 0x7f0800f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    .line 185
    const v0, 0x7f08005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->o:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f080042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    .line 187
    const v0, 0x7f080136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    .line 188
    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->h:Landroid/widget/TextView;

    .line 189
    const v0, 0x7f08012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->j:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f08012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xi;->i:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f08010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    iput-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    .line 192
    const v0, 0x7f080044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    iput-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    .line 193
    new-instance v0, Lbl/aar;

    invoke-direct {v0}, Lbl/aar;-><init>()V

    iput-object v0, p0, Lbl/xi;->k:Lbl/aar;

    .line 194
    iget-object v1, p0, Lbl/xi;->k:Lbl/aar;

    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lbl/xi;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lbl/aar;->a(Landroid/view/ViewGroup;)V

    .line 195
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->b()V

    .line 196
    invoke-direct {p0, p1}, Lbl/xi;->initSeekPreview(Landroid/view/View;)V

    .line 197
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbl/xi;->a(Landroid/content/Intent;Z)V

    .line 198
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 199
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1964
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->NEW_RESOLVE_TASK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_1a

    .line 1965
    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    if-eqz v0, :cond_16

    .line 1966
    iget-object v1, p0, Lbl/xi;->c:Lbl/yd;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lbl/yd;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1971
    :cond_16
    :goto_16
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 1972
    return-void

    .line 1968
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

    .line 1969
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
    .line 1304
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_9

    .line 1305
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0, p1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->play(Z)V

    .line 1307
    :cond_9
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 983
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    .line 984
    if-eqz v0, :cond_11

    .line 985
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;->getInstance()Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/PlayerReleaseEventManager;->unregister(I)V

    .line 987
    :cond_11
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-eqz v0, :cond_1a

    .line 988
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->clearCache()V

    .line 990
    :cond_1a
    invoke-super {p0}, Lbl/xh;->d()V

    .line 991
    invoke-virtual {p0}, Lbl/xi;->r()V

    .line 992
    return-void
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 1820
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_f

    .line 1821
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setText(I)V

    .line 1822
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 1824
    :cond_f
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Lbl/xh;->e()V

    .line 431
    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 432
    invoke-virtual {p0}, Lbl/xi;->B()V

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xi;->r:Z

    .line 435
    :cond_f
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 439
    invoke-super {p0}, Lbl/xh;->f()V

    .line 442
    iget-boolean v0, p0, Lbl/xi;->r:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lbl/xi;->bgWasPlaying:Z

    if-eqz v0, :cond_15

    .line 443
    :cond_12
    invoke-virtual {p0}, Lbl/xi;->F()V

    .line 446
    :cond_15
    iput-boolean v3, p0, Lbl/xi;->r:Z

    .line 449
    iget-boolean v0, p0, Lbl/xi;->bgNeedResync:Z

    if-eqz v0, :cond_51

    .line 450
    iput-boolean v3, p0, Lbl/xi;->bgNeedResync:Z

    .line 451
    invoke-direct {p0}, Lbl/xi;->isBackgroundPlayerAlive()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 452
    const-string v0, "PlayerBackground"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ONRESUME] \u56de\u5230\u524d\u53f0\uff0c\u91cd\u65b0\u6302\u8f7d\u5f39\u5e55\u4e0e\u7535\u5b50\u4e66\u5e03\u5c40, playing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lbl/xi;->bgWasPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xi;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 454
    iget-boolean v0, p0, Lbl/xi;->bgWasPlaying:Z

    if-nez v0, :cond_51

    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_51

    .line 456
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->pauseDanmakuPlayer()V

    .line 462
    :cond_51
    :goto_51
    return-void

    .line 459
    :cond_52
    const-string v0, "PlayerBackground"

    const-string v1, "[ONRESUME] \u64ad\u653e\u5668\u5df2\u88ab\u7cfb\u7edf\u56de\u6536\uff0c\u7b49\u5f85 onPrepared \u91cd\u5efa\u540e\u518d\u91cd\u65b0\u6302\u8f7d"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/16 v8, 0x15

    const/16 v7, 0x14

    const/16 v6, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 588
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

    .line 592
    const/16 v0, 0x17

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3a

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_5c

    .line 593
    :cond_3a
    invoke-virtual {p0}, Lbl/xi;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_more_action_key(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_5c

    .line 594
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5c

    .line 595
    iget-object v0, p0, Lbl/xi;->moreActionHandler:Landroid/os/Handler;

    iget-object v3, p0, Lbl/xi;->moreActionOkLongRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    iput-boolean v1, p0, Lbl/xi;->moreActionOkLongFired:Z

    .line 597
    iget-object v0, p0, Lbl/xi;->moreActionHandler:Landroid/os/Handler;

    iget-object v3, p0, Lbl/xi;->moreActionOkLongRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5c
    move-object v0, p0

    .line 604
    :goto_5d
    if-eqz v0, :cond_155

    .line 605
    instance-of v3, v0, Lbl/xw;

    if-eqz v3, :cond_14f

    .line 606
    check-cast v0, Lbl/xw;

    .line 607
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

    .line 610
    invoke-virtual {v0}, Lbl/xw;->isControlEbook()Z

    move-result v3

    if-eqz v3, :cond_155

    invoke-virtual {v0}, Lbl/xw;->isMenuShown()Z

    move-result v3

    if-nez v3, :cond_155

    .line 611
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

    .line 614
    invoke-virtual {v0}, Lbl/xw;->isEbookReadingContent()Z

    move-result v3

    if-nez v3, :cond_d1

    invoke-virtual {v0}, Lbl/xw;->isOrganizingShelf()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 615
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

    .line 617
    if-eq p1, v6, :cond_f3

    if-eq p1, v7, :cond_f3

    if-eq p1, v8, :cond_f3

    const/16 v0, 0x16

    if-ne p1, v0, :cond_11d

    .line 621
    :cond_f3
    const-string v0, "EbookReader"

    const-string v3, "xi.f: \u65b9\u5411\u952e\u4e0d\u62e6\u622a\uff0c\u4f20\u9012\u5230\u4e0b\u4e00\u5c42"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {p0}, Lbl/xi;->next()Lbl/xh;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_11d

    .line 625
    invoke-virtual {v0, p1, p2}, Lbl/xh;->f(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 626
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

    .line 686
    :goto_11c
    return v2

    .line 632
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

    .line 634
    const/16 v0, 0x17

    if-eq p1, v0, :cond_147

    const/16 v0, 0x42

    if-eq p1, v0, :cond_147

    if-eq p1, v6, :cond_147

    if-eq p1, v7, :cond_147

    if-eq p1, v8, :cond_147

    const/16 v0, 0x16

    if-ne p1, v0, :cond_155

    .line 640
    :cond_147
    const-string v0, "EbookReader"

    const-string v1, "xi.f: \u62e6\u622a\u65b9\u5411\u952e/\u786e\u8ba4\u952e\uff0c\u907f\u514d\u89e6\u53d1\u89c6\u9891\u903b\u8f91"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11c

    .line 646
    :cond_14f
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto/16 :goto_5d

    .line 649
    :cond_155
    packed-switch p1, :pswitch_data_26a

    move v2, v1

    .line 686
    goto :goto_11c

    :pswitch_15a
    move-object v0, p0

    .line 653
    :cond_15b
    if-eqz v0, :cond_18e

    .line 654
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    .line 655
    instance-of v3, v0, Lbl/xl;

    if-eqz v3, :cond_15b

    .line 656
    check-cast v0, Lbl/xl;

    .line 657
    invoke-virtual {v0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v0

    .line 658
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

    .line 659
    if-eqz v0, :cond_18e

    .line 660
    const-string v0, "ShotMenuBug"

    const-string v2, "xi.f: shot menu showing, ignoring LEFT/RIGHT key"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 661
    goto :goto_11c

    .line 667
    :cond_18e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_196

    .line 668
    iput-boolean v2, p0, Lbl/xi;->isLongPress:Z

    .line 671
    :cond_196
    invoke-direct {p0, p1}, Lbl/xi;->computeSeekTarget(I)I

    move-result v3

    .line 672
    invoke-virtual {p0}, Lbl/xi;->I()I

    move-result v4

    .line 673
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-eqz v0, :cond_263

    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getDuration()I

    move-result v0

    .line 674
    :goto_1a8
    const-string v5, "SeekPreview"

    const-string v6, "=== f() called ==="

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
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

    .line 676
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

    .line 677
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

    .line 678
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

    .line 679
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    if-eqz v0, :cond_256

    .line 680
    iget-object v0, p0, Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-virtual {v0, v3, v2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a(IZ)V

    .line 682
    :cond_256
    invoke-direct {p0}, Lbl/xi;->showSeekPreview()V

    .line 683
    iget-boolean v0, p0, Lbl/xi;->isLongPress:Z

    if-nez v0, :cond_25e

    move v1, v2

    :cond_25e
    invoke-direct {p0, v3, v4, v1}, Lbl/xi;->updateSeekPreview(IIZ)V

    goto/16 :goto_11c

    :cond_263
    move v0, v1

    .line 673
    goto/16 :goto_1a8

    .line 678
    :cond_266
    const-string v0, "null"

    goto :goto_242

    .line 649
    nop

    :pswitch_data_26a
    .packed-switch 0x15
        :pswitch_15a
        :pswitch_15a
    .end packed-switch
.end method

.method public g()V
    .locals 0

    .prologue
    .line 481
    invoke-super {p0}, Lbl/xh;->g()V

    .line 482
    invoke-direct {p0}, Lbl/xi;->restoreSurfaceAfterBackground()V

    .line 483
    return-void
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 693
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

    .line 698
    :goto_1b
    if-eqz v0, :cond_108

    .line 699
    instance-of v3, v0, Lbl/xw;

    if-eqz v3, :cond_102

    .line 700
    check-cast v0, Lbl/xw;

    .line 701
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

    .line 704
    invoke-virtual {v0}, Lbl/xw;->isControlEbook()Z

    move-result v3

    if-eqz v3, :cond_108

    invoke-virtual {v0}, Lbl/xw;->isMenuShown()Z

    move-result v3

    if-nez v3, :cond_108

    .line 705
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

    .line 708
    invoke-virtual {v0}, Lbl/xw;->isEbookReadingContent()Z

    move-result v3

    if-nez v3, :cond_8f

    invoke-virtual {v0}, Lbl/xw;->isOrganizingShelf()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 709
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

    .line 711
    const/16 v0, 0x13

    if-eq p1, v0, :cond_b7

    const/16 v0, 0x14

    if-eq p1, v0, :cond_b7

    const/16 v0, 0x15

    if-eq p1, v0, :cond_b7

    const/16 v0, 0x16

    if-ne p1, v0, :cond_e1

    .line 715
    :cond_b7
    const-string v0, "EbookReader"

    const-string v3, "xi.g: \u65b9\u5411\u952e\u4e0d\u62e6\u622a\uff0c\u4f20\u9012\u5230\u4e0b\u4e00\u5c42"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {p0}, Lbl/xi;->next()Lbl/xh;

    move-result-object v0

    .line 718
    if-eqz v0, :cond_e1

    .line 719
    invoke-virtual {v0, p1, p2}, Lbl/xh;->g(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 720
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

    .line 774
    :goto_e0
    return v0

    .line 726
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

    .line 728
    const/16 v0, 0x52

    if-eq p1, v0, :cond_108

    const/4 v0, 0x4

    if-eq p1, v0, :cond_108

    move v0, v1

    .line 729
    goto :goto_e0

    .line 734
    :cond_102
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto/16 :goto_1b

    .line 739
    :cond_108
    const/16 v0, 0x17

    if-eq p1, v0, :cond_114

    const/16 v0, 0x42

    if-eq p1, v0, :cond_114

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_12d

    .line 740
    :cond_114
    invoke-virtual {p0}, Lbl/xi;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_more_action_key(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_12d

    .line 741
    iget-object v0, p0, Lbl/xi;->moreActionHandler:Landroid/os/Handler;

    iget-object v3, p0, Lbl/xi;->moreActionOkLongRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 742
    iget-boolean v0, p0, Lbl/xi;->moreActionOkLongFired:Z

    if-eqz v0, :cond_12d

    .line 743
    iput-boolean v2, p0, Lbl/xi;->moreActionOkLongFired:Z

    move v0, v1

    .line 744
    goto :goto_e0

    .line 749
    :cond_12d
    sparse-switch p1, :sswitch_data_156

    move v0, v2

    .line 774
    goto :goto_e0

    .line 751
    :sswitch_132
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 752
    invoke-virtual {p0}, Lbl/xi;->v()V

    move v0, v1

    .line 753
    goto :goto_e0

    :cond_13d
    move v0, v2

    .line 755
    goto :goto_e0

    .line 757
    :sswitch_13f
    invoke-virtual {p0}, Lbl/xi;->tt()V

    move v0, v1

    .line 758
    goto :goto_e0

    :sswitch_144
    move v0, v2

    .line 760
    goto :goto_e0

    .line 763
    :sswitch_146
    invoke-direct {p0, v2}, Lbl/xi;->commitSeek(Z)V

    move v0, v2

    .line 764
    goto :goto_e0

    .line 766
    :sswitch_14b
    invoke-direct {p0, v1}, Lbl/xi;->commitSeek(Z)V

    move v0, v2

    .line 767
    goto :goto_e0

    .line 771
    :sswitch_150
    invoke-direct {p0}, Lbl/xi;->T()V

    move v0, v1

    .line 772
    goto :goto_e0

    .line 749
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
    .line 490
    invoke-direct {p0}, Lbl/xi;->detachSurfaceForBackground()V

    .line 491
    invoke-super {p0}, Lbl/xh;->h()V

    .line 492
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

    .line 997
    .line 998
    invoke-virtual {p0}, Lbl/xi;->o()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1047
    :cond_e
    :goto_e
    return v2

    .line 1001
    :cond_f
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_d0

    .line 1042
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

    .line 1046
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

    .line 1047
    if-nez v0, :cond_4b

    invoke-super {p0, p1}, Lbl/xh;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_4b
    move v2, v1

    goto :goto_e

    .line 1003
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

    .line 1004
    goto :goto_2c

    .line 1006
    :sswitch_62
    invoke-direct {p0}, Lbl/xi;->U()V

    .line 1007
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 1008
    if-eqz v0, :cond_cc

    iget-object v3, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->isAttachedToView(Landroid/view/ViewGroup;)Z

    move-result v3

    if-nez v3, :cond_cc

    .line 1009
    iget-object v3, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->attachVideoView(Landroid/view/ViewGroup;)V

    move v0, v1

    goto :goto_2c

    .line 1013
    :sswitch_7a
    invoke-direct {p0, p1}, Lbl/xi;->b(Landroid/os/Message;)V

    move v0, v1

    .line 1014
    goto :goto_2c

    .line 1016
    :sswitch_7f
    invoke-virtual {p0}, Lbl/xi;->Q()V

    move v0, v1

    .line 1017
    goto :goto_2c

    .line 1019
    :sswitch_84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1020
    if-eqz v0, :cond_cc

    .line 1021
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1022
    cmp-long v0, v4, v10

    if-ltz v0, :cond_a3

    const-wide/16 v6, 0x4650

    cmp-long v0, v4, v6

    if-gez v0, :cond_a3

    .line 1023
    const v0, 0x7f0c0013

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    :cond_a3
    move v0, v1

    .line 1025
    goto :goto_2c

    .line 1028
    :sswitch_a5
    const-string v0, "PlaySpeed"

    const-string v3, "[XI_10201] RESOLVE_PREPARED received, calling c(message)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-direct {p0, p1}, Lbl/xi;->c(Landroid/os/Message;)V

    move v0, v1

    .line 1030
    goto/16 :goto_2c

    .line 1032
    :sswitch_b2
    invoke-virtual {p0}, Lbl/xi;->K()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1033
    invoke-virtual {p0}, Lbl/xi;->C()V

    .line 1035
    :cond_bb
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v6}, Lbl/aaq;->removeMessages(I)V

    .line 1036
    const v0, 0x7f0c0010

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    move v0, v1

    .line 1037
    goto/16 :goto_2c

    :sswitch_c9
    move v0, v1

    .line 1040
    goto/16 :goto_2c

    :cond_cc
    move v0, v1

    goto/16 :goto_2c

    .line 1001
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
    .line 580
    invoke-virtual {p0}, Lbl/xi;->a()Lbl/xh;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 581
    invoke-virtual {p0}, Lbl/xi;->a()Lbl/xh;

    move-result-object v0

    invoke-virtual {v0}, Lbl/xh;->l()Landroid/view/ViewGroup;

    move-result-object v0

    .line 583
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lbl/xi;->e:Landroid/view/ViewGroup;

    goto :goto_e
.end method

.method public m()Lbl/yd;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    return-object v0
.end method

.method public n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    return-object v0
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1400
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 1402
    invoke-static {}, Lmybl/VideoViewParams;->reportPlaybackFailed()V

    .line 1404
    invoke-virtual {p0}, Lbl/xi;->y()Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    move-result-object v0

    .line 1405
    iget v1, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->d:I

    iget v2, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->e:I

    if-lt v1, v2, :cond_1b

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    sget-object v1, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->NONE:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    invoke-virtual {v0, v1}, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1409
    :cond_1b
    :goto_1b
    return v3

    .line 1408
    :cond_1c
    const v0, 0x7f0c000f

    invoke-direct {p0, v0}, Lbl/xi;->e(I)V

    goto :goto_1b
.end method

.method public varargs onExtraInfo(I[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1896
    invoke-super {p0, p1, p2}, Lbl/xh;->onExtraInfo(I[Ljava/lang/Object;)V

    .line 1897
    const v0, 0x10018

    if-ne p1, v0, :cond_17

    .line 1898
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_16

    .line 1899
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    new-instance v1, Lbl/xi$10;

    invoke-direct {v1, p0}, Lbl/xi$10;-><init>(Lbl/xi;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->post(Ljava/lang/Runnable;)Z

    .line 1917
    :cond_16
    :goto_16
    return-void

    .line 1906
    :cond_17
    const v0, 0x10019

    if-ne p1, v0, :cond_16

    .line 1907
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_16

    .line 1910
    iget-object v0, p0, Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    new-instance v1, Lbl/xi$11;

    invoke-direct {v1, p0}, Lbl/xi$11;-><init>(Lbl/xi;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->post(Ljava/lang/Runnable;)Z

    goto :goto_16
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 6

    .prologue
    const/16 v2, 0x4e84

    const/4 v1, 0x0

    .line 1365
    .line 1366
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 1367
    const/16 v0, 0x321

    if-eq p2, v0, :cond_4b

    .line 1368
    packed-switch p2, :pswitch_data_54

    .line 1391
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 1394
    :goto_e
    return v0

    .line 1370
    :pswitch_f
    invoke-virtual {p0}, Lbl/xi;->M()V

    .line 1371
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    if-eqz v0, :cond_d

    .line 1372
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->removeMessages(I)V

    .line 1373
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1374
    const/4 v0, 0x0

    check-cast v0, Lbl/xh$a;

    invoke-static {}, Lbl/xh$a;->a()Lbl/xh$a;

    move-result-object v0

    .line 1375
    invoke-virtual {p0}, Lbl/xi;->x()I

    move-result v3

    iput v3, v0, Lbl/xh$a;->a:I

    .line 1376
    iput v1, v0, Lbl/xh$a;->b:I

    .line 1377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lbl/xh$a;->c:J

    .line 1378
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1379
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d

    .line 1383
    :pswitch_3e
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    if-eqz v0, :cond_47

    .line 1384
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0, v2}, Lbl/aaq;->removeMessages(I)V

    .line 1386
    :cond_47
    invoke-virtual {p0}, Lbl/xi;->N()V

    goto :goto_d

    .line 1393
    :cond_4b
    const-string v0, "BasicTVPlayerAdapter"

    const-string v2, "media not seekable"

    invoke-static {v0, v2}, Ltv/danmaku/android/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1394
    goto :goto_e

    .line 1368
    :pswitch_data_54
    .packed-switch 0x2bd
        :pswitch_f
        :pswitch_3e
    .end packed-switch
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public onNativeInvoke(ILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1921
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

    .line 1923
    if-eqz p2, :cond_be

    .line 1924
    const-string v0, "url"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1925
    const-string v2, "http_code"

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1926
    const-string v3, "error"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1928
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

    .line 1930
    const/16 v0, 0x193

    if-eq v2, v0, :cond_78

    const/16 v0, 0x194

    if-eq v2, v0, :cond_78

    const/16 v0, 0x19a

    if-ne v2, v0, :cond_ac

    .line 1931
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

    .line 1932
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

    .line 1943
    :goto_a7
    return v0

    .line 1921
    :cond_a8
    const-string v0, "null"

    goto/16 :goto_1f

    .line 1936
    :cond_ac
    if-nez v3, :cond_b0

    if-nez v2, :cond_be

    .line 1937
    :cond_b0
    const-string v0, "xi"

    const-string v2, "[IJK_NATIVE_INVOKE] Network error detected, triggering URL refresh"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const-string v0, "Network error"

    invoke-static {v3, v0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->triggerErrorRefresh(ILjava/lang/String;)V

    move v0, v1

    .line 1939
    goto :goto_a7

    .line 1943
    :cond_be
    invoke-super {p0, p1, p2}, Lbl/xh;->onNativeInvoke(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_a7
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1414
    const-string v0, "PlaySpeed"

    const-string v1, "[XI_ON_PREPARED] onPrepared() called, video ready to play"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :try_start_8
    invoke-static {}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->getBufferingOverlayController()Lcom/bilibili/tv/player/BufferingOverlayController;

    move-result-object v0

    .line 1421
    if-eqz v0, :cond_11

    .line 1422
    invoke-virtual {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;->endEpisodeSwitchGuard()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_219

    .line 1426
    :cond_11
    :goto_11
    invoke-static {}, Lmybl/VideoViewParams;->reportPlaybackSuccess()V

    .line 1428
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1429
    invoke-virtual {p0}, Lbl/xi;->F()V

    .line 1435
    :cond_1d
    iget-object v0, p0, Lbl/xi;->bgMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lbl/xi;->bgMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eq p1, v0, :cond_52

    .line 1436
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xi;->bgMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 1437
    const-string v0, "PlayerBackground"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ONPREPARED] \u64ad\u653e\u5668\u5df2\u5728\u540e\u53f0\u88ab\u7cfb\u7edf\u56de\u6536\u5e76\u91cd\u5efa\uff0c\u91cd\u65b0\u6302\u8f7d\u5f39\u5e55\u4e0e\u7535\u5b50\u4e66\u5e03\u5c40, wasPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lbl/xi;->bgWasPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xi;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 1440
    iget-boolean v0, p0, Lbl/xi;->bgWasPlaying:Z

    if-nez v0, :cond_50

    .line 1442
    invoke-virtual {p0}, Lbl/xi;->B()V

    .line 1444
    :cond_50
    iput-boolean v3, p0, Lbl/xi;->bgWasPlaying:Z

    .line 1446
    :cond_52
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->a()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1447
    iget-object v0, p0, Lbl/xi;->k:Lbl/aar;

    invoke-virtual {v0}, Lbl/aar;->c()V

    .line 1449
    :cond_5f
    invoke-virtual {p0}, Lbl/xi;->O()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1450
    invoke-virtual {p0}, Lbl/xi;->N()V

    .line 1466
    :cond_68
    :try_start_68
    invoke-virtual {p0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 1467
    if-eqz v0, :cond_8f

    .line 1468
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    .line 1469
    if-eqz v0, :cond_8f

    .line 1470
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 1471
    if-eqz v0, :cond_8f

    instance-of v1, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v1, :cond_8f

    .line 1472
    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    .line 1474
    new-instance v1, Lbl/xi$7;

    invoke-direct {v1, p0}, Lbl/xi$7;-><init>(Lbl/xi;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setErrorListener(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;)V

    .line 1490
    const-string v0, "xi"

    const-string v1, "[ERROR_LISTENER] Error listener setup successfully in onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/IllegalAccessError; {:try_start_68 .. :try_end_8f} :catch_1ce
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_8f} :catch_1d8

    .line 1500
    :cond_8f
    :goto_8f
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    const v1, 0x4c4c08

    invoke-virtual {v0, v1}, Lbl/aaq;->sendEmptyMessage(I)Z

    .line 1502
    invoke-virtual {p0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 1503
    if-eqz v0, :cond_1f7

    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v1, :cond_1f7

    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    if-eqz v1, :cond_1f7

    .line 1504
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 1505
    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    iput-wide v2, p0, Lbl/xi;->currentAid:J

    .line 1506
    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iput-wide v2, p0, Lbl/xi;->currentCid:J

    .line 1507
    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    iput-object v1, p0, Lbl/xi;->currentBvid:Ljava/lang/String;

    .line 1508
    iget v1, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    iput v1, p0, Lbl/xi;->currentPage:I

    .line 1510
    const-string v1, "VideoShot"

    const-string v2, "========== ResolveParams Details =========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
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

    .line 1512
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

    .line 1513
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

    .line 1514
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

    .line 1515
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

    .line 1516
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

    .line 1517
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

    .line 1518
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

    .line 1519
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

    .line 1520
    const-string v0, "VideoShot"

    const-string v1, "========== End ResolveParams =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-direct {p0}, Lbl/xi;->loadVideoShot()V

    .line 1527
    :goto_1ba
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 1533
    :try_start_1bd
    new-instance v0, Lbl/xi$8;

    invoke-direct {v0, p0}, Lbl/xi$8;-><init>(Lbl/xi;)V

    iput-object v0, p0, Lbl/xi;->prefetchProvider:Lbl/PlayUrlPrefetch$StateProvider;

    .line 1581
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    iget-object v1, p0, Lbl/xi;->prefetchProvider:Lbl/PlayUrlPrefetch$StateProvider;

    invoke-static {v0, v1}, Lbl/PlayUrlPrefetch;->start(Landroid/content/Context;Lbl/PlayUrlPrefetch$StateProvider;)V
    :try_end_1cd
    .catch Ljava/lang/Throwable; {:try_start_1bd .. :try_end_1cd} :catch_1ff

    .line 1585
    :goto_1cd
    return-void

    .line 1494
    :catch_1ce
    move-exception v0

    .line 1495
    const-string v0, "xi"

    const-string v1, "[ERROR_LISTENER] IllegalAccessError when accessing player (likely IjkPlayer), skipping error listener setup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8f

    .line 1496
    :catch_1d8
    move-exception v0

    .line 1497
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

    goto/16 :goto_8f

    .line 1524
    :cond_1f7
    const-string v0, "VideoShot"

    const-string v1, "onPrepared: params is null or incomplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ba

    .line 1582
    :catch_1ff
    move-exception v0

    .line 1583
    const-string v1, "NextPrefetch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[START] ignored: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cd

    .line 1424
    :catch_219
    move-exception v0

    goto/16 :goto_11
.end method

.method public r()V
    .locals 4

    .prologue
    .line 1283
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    if-eqz v0, :cond_9

    .line 1284
    iget-object v0, p0, Lbl/xi;->c:Lbl/yd;

    invoke-virtual {v0}, Lbl/yd;->b()V

    .line 1286
    :cond_9
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_1a

    .line 1287
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->attachDanmakuView(Landroid/view/ViewGroup;ZI)V

    .line 1289
    :try_start_15
    iget-object v0, p0, Lbl/xi;->d:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->release()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_23

    .line 1293
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lbl/xi;->b:Lbl/aaq;

    invoke-virtual {v0}, Lbl/aaq;->a()V

    .line 1294
    invoke-super {p0}, Lbl/xh;->r()V

    .line 1295
    return-void

    .line 1290
    :catch_23
    move-exception v0

    goto :goto_1a
.end method

.method public refreshTvToggleIcon()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 859
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    .line 860
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_20

    .line 861
    :cond_1a
    invoke-direct {p0}, Lbl/xi;->isShotMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_20
    move v0, v2

    .line 862
    :goto_21
    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v3

    .line 863
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

    .line 864
    if-eqz v3, :cond_51

    if-eqz v0, :cond_51

    :goto_4b
    invoke-direct {p0, v2}, Lbl/xi;->d(Z)V

    .line 865
    return-void

    :cond_4f
    move v0, v1

    .line 861
    goto :goto_21

    :cond_51
    move v2, v1

    .line 864
    goto :goto_4b
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 941
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
    .line 892
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xi;->a(Ljava/lang/Runnable;)V

    .line 894
    invoke-direct {p0}, Lbl/xi;->toggleSimpleShotMenu()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 895
    invoke-super {p0}, Lbl/xh;->t()V

    .line 896
    invoke-virtual {p0}, Lbl/xi;->refreshTvToggleIcon()V

    .line 902
    :goto_11
    return-void

    .line 899
    :cond_12
    invoke-virtual {p0}, Lbl/xi;->P()V

    .line 900
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v0, v2, v3}, Lbl/xi;->a(Ljava/lang/Runnable;J)V

    .line 901
    :cond_20
    invoke-super {p0}, Lbl/xh;->t()V

    goto :goto_11
.end method

.method public tt()V
    .locals 4

    .prologue
    .line 906
    move-object v0, p0

    .line 907
    :goto_1
    if-eqz v0, :cond_22

    .line 908
    instance-of v1, v0, Lbl/xw;

    if-eqz v1, :cond_1d

    .line 909
    check-cast v0, Lbl/xw;

    .line 911
    invoke-virtual {v0}, Lbl/xw;->isControlEbook()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lbl/xw;->isMenuShown()Z

    move-result v0

    if-nez v0, :cond_22

    .line 912
    const-string v0, "ShotMenuBug"

    const-string v1, "tt: \u7535\u5b50\u4e66\u6a21\u5f0f\uff0c\u4e0d\u663e\u793a\u8fdb\u5ea6\u9884\u89c8\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :goto_1c
    return-void

    .line 917
    :cond_1d
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_1

    .line 921
    :cond_22
    invoke-direct {p0}, Lbl/xi;->toggleSimpleShotMenu()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 922
    invoke-super {p0}, Lbl/xh;->t()V

    .line 923
    invoke-virtual {p0}, Lbl/xi;->refreshTvToggleIcon()V

    goto :goto_1c

    .line 927
    :cond_2f
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_44

    .line 928
    invoke-virtual {p0}, Lbl/xi;->s()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lbl/xi;->v()V

    .line 935
    :goto_3c
    invoke-super {p0}, Lbl/xh;->t()V

    goto :goto_1c

    .line 929
    :cond_40
    invoke-virtual {p0}, Lbl/xi;->P()V

    goto :goto_3c

    .line 931
    :cond_44
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xi;->a(Ljava/lang/Runnable;)V

    .line 932
    invoke-virtual {p0}, Lbl/xi;->P()V

    .line 933
    iget-object v0, p0, Lbl/xi;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v0, v2, v3}, Lbl/xi;->a(Ljava/lang/Runnable;J)V

    goto :goto_3c
.end method

.method public u()V
    .locals 1

    .prologue
    .line 1121
    invoke-super {p0}, Lbl/xh;->u()V

    .line 1122
    invoke-virtual {p0}, Lbl/xi;->Q()V

    .line 1123
    invoke-virtual {p0}, Lbl/xi;->J()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 1126
    :cond_10
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 947
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 948
    iget-object v0, p0, Lbl/xi;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lbl/xi;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 951
    :cond_13
    invoke-super {p0}, Lbl/xh;->v()V

    .line 952
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 1131
    invoke-super {p0}, Lbl/xh;->w()V

    .line 1132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/xi;->d(Z)V

    .line 1133
    return-void
.end method
