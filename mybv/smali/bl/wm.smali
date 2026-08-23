.class public Lbl/wm;
.super Ljava/lang/Object;
.source "wm.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
.implements Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/wm$aa;,
        Lbl/wm$b;
    }
.end annotation


# static fields
.field private static sLastLiveErrorRefreshTime:J

.field private static sLiveFormat:Ljava/lang/String;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field private f57u:I

.field g:I

.field private h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private i:Landroid/os/HandlerThread;

.field private j:Lbl/wm$b;

.field private k:Landroid/os/Handler;

.field private l:Landroid/content/Context;

.field private m:I

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/wp;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbl/ws;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbl/ws;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lbl/wm;->sLiveFormat:Ljava/lang/String;

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lbl/wm;->sLastLiveErrorRefreshTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->h(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lbl/wm;->m:I

    .line 103
    iput-boolean v1, p0, Lbl/wm;->o:Z

    .line 104
    iput v1, p0, Lbl/wm;->r:I

    .line 105
    iput v1, p0, Lbl/wm;->s:I

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lbl/wm;->t:Ljava/lang/String;

    .line 107
    const/16 v0, -0x16

    iput v0, p0, Lbl/wm;->f57u:I

    .line 108
    const/4 v0, 0x3

    iput v0, p0, Lbl/wm;->a:I

    .line 109
    const/16 v0, 0x2bd

    iput v0, p0, Lbl/wm;->b:I

    .line 110
    const/16 v0, 0x2be

    iput v0, p0, Lbl/wm;->c:I

    .line 111
    const/16 v0, 0x2711

    iput v0, p0, Lbl/wm;->d:I

    .line 112
    const/16 v0, 0x64

    iput v0, p0, Lbl/wm;->e:I

    .line 113
    const/16 v0, -0x2710

    iput v0, p0, Lbl/wm;->f:I

    .line 114
    const/16 v0, 0xc8

    iput v0, p0, Lbl/wm;->g:I

    .line 115
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbl/wm;->i:Landroid/os/HandlerThread;

    .line 116
    iget-object v0, p0, Lbl/wm;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 117
    new-instance v0, Lbl/wm$b;

    iget-object v1, p0, Lbl/wm;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbl/wm$b;-><init>(Lbl/wm;Landroid/os/Looper;)V

    iput-object v0, p0, Lbl/wm;->j:Lbl/wm$b;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbl/wm;->k:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lbl/wm$1;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lbl/wm;-><init>()V

    return-void
.end method

.method public static a()Lbl/wm;
    .locals 1

    .prologue
    .line 68
    # getter for: Lbl/wm$aa;->a:Lbl/wm;
    invoke-static {}, Lbl/wm$aa;->access$000()Lbl/wm;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 95
    if-nez p0, :cond_a

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "video manager init error!!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_a
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-direct {v0, p0}, Lbl/wm;->b(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method private a(Landroid/os/Message;Z)V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-wide/16 v6, 0x1

    .line 272
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/wo;

    invoke-virtual {v0}, Lbl/wo;->a()Ljava/lang/String;

    move-result-object v1

    .line 273
    const-string v0, "wm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LIVE] a(message,z) entered, url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", m="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lbl/wm;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", z="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lbl/wm;->l:Landroid/content/Context;

    sget-object v2, Lbl/wm;->sLiveFormat:Ljava/lang/String;

    invoke-static {v0, v2}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->shouldUseExoPlayerForLive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 278
    const-string v2, "wm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LIVE_EXO] PlayerSelector.shouldUseExoPlayerForLive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sLiveFormat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lbl/wm;->sLiveFormat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-eqz v0, :cond_342

    .line 281
    const-string v0, "wm"

    const-string v2, "[LIVE_EXO] Checking format compatibility"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v0, "ts"

    sget-object v2, Lbl/wm;->sLiveFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 287
    const-string v2, "wm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LIVE_EXO] TS format check: isTsFormat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sLiveFormat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lbl/wm;->sLiveFormat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-eqz v0, :cond_176

    .line 290
    const-string v0, "wm"

    const-string v2, "[LIVE_EXO] TS format detected, falling back to IjkPlayer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_a6
    :goto_a6
    const-string v0, "wm"

    const-string v2, "[LIVE_IJK] Creating IjkMediaPlayer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v2, p0, Lbl/wm;->l:Landroid/content/Context;

    invoke-direct {v0, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 410
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 411
    if-eqz p2, :cond_ee

    .line 413
    :try_start_be
    const-string v0, "enable mediaCodec"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v2, 0x4

    const-string v3, "mediacodec"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 415
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v2, 0x4

    const-string v3, "mediacodec-auto-rotate"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 416
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v2, 0x4

    const-string v3, "mediacodec-handle-resolution-change"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 417
    const-string v0, "wm"

    const-string v2, "[LIVE_IJK] mediaCodec enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_ee} :catch_34b

    .line 424
    :cond_ee
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v2, "reconnect"

    invoke-virtual {v0, v8, v2, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 425
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnNativeInvokeListener(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;)V

    .line 428
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v2, "user_agent"

    const-string v3, "Bilibili Freedoooooom/MarkII"

    invoke-virtual {v0, v8, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v0, "platform=web"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_11c

    .line 430
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "headers"

    const-string v2, "Referer: https://www.bilibili.com\r\n"

    invoke-virtual {v0, v8, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_11c
    :try_start_11c
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbl/wo;

    invoke-virtual {v1}, Lbl/wo;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbl/wo;

    invoke-virtual {v1}, Lbl/wo;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_133} :catch_351

    .line 435
    :goto_133
    iget-object v1, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/wo;

    invoke-virtual {v0}, Lbl/wo;->c()Z

    move-result v0

    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    .line 436
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/wo;

    invoke-virtual {v0}, Lbl/wo;->d()F

    move-result v0

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_167

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/wo;

    invoke-virtual {v0}, Lbl/wo;->d()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_167

    .line 437
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbl/wo;

    invoke-virtual {v1}, Lbl/wo;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V

    .line 439
    :cond_167
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {p0, v0}, Lbl/wm;->a(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V

    .line 440
    const-string v0, "wm"

    const-string v1, "[LIVE_IJK] IjkMediaPlayer setup complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_175
    return-void

    .line 292
    :cond_176
    const-string v0, "wm"

    const-string v2, "[LIVE_EXO] Creating ExoPlayerImpl for live streaming"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :try_start_17d
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iget-object v2, p0, Lbl/wm;->l:Landroid/content/Context;

    invoke-direct {v0, v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;-><init>(Landroid/content/Context;)V

    .line 295
    iput-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 296
    const-string v0, "wm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LIVE_EXO] ExoPlayerImpl created, h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_1a8} :catch_2d7

    .line 304
    :goto_1a8
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v0, :cond_a6

    .line 305
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 309
    :try_start_1b4
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    const-string v2, "Bilibili Freedoooooom/MarkII"

    .line 310
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/16 v2, 0x1f40

    .line 311
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/16 v2, 0x1f40

    .line 312
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 314
    const-string v2, "platform=web"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 315
    const-string v3, "wm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LIVE_EXO] platform=web check: hasReferer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-eqz v2, :cond_1fd

    .line 317
    const-string v2, "Referer"

    const-string v3, "https://www.bilibili.com"

    .line 318
    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 317
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    .line 319
    const-string v2, "wm"

    const-string v3, "[LIVE_EXO] Referer header injected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1fd
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".m3u8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 324
    const-string v3, "wm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LIVE_EXO] HLS check: isHls="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-eqz v2, :cond_300

    .line 330
    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 331
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 332
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setLiveTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    .line 333
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setLiveMinOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    const-wide/16 v2, 0x1388

    .line 334
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setLiveMaxOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    const v2, 0x3f733333    # 0.95f

    .line 335
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setLiveMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 336
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setLiveMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    .line 337
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    .line 338
    const-string v2, "wm"

    const-string v3, "[LIVE_EXO] Creating HlsMediaSource with live config: targetOffset=1000ms, minOffset=500ms, maxOffset=5000ms"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 340
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v0

    move-object v1, v0

    .line 361
    :goto_262
    const-string v0, "wm"

    const-string v2, "[LIVE_EXO] Calling exoImpl.setDataSource(mediaSource)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 363
    const-string v0, "wm"

    const-string v1, "[LIVE_EXO] setDataSource completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    new-instance v1, Lbl/wm$2;

    invoke-direct {v1, p0}, Lbl/wm$2;-><init>(Lbl/wm;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setErrorListener(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;)V

    .line 384
    const-string v0, "wm"

    const-string v1, "[LIVE_EXO] Error listener set"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28a
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_28a} :catch_320

    .line 391
    :goto_28a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/wo;

    invoke-virtual {v0}, Lbl/wo;->c()Z

    move-result v1

    .line 392
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/wo;

    invoke-virtual {v0}, Lbl/wo;->d()F

    move-result v0

    .line 393
    const-string v2, "wm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LIVE_EXO] looping="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v2, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    .line 395
    cmpl-float v1, v0, v10

    if-eqz v1, :cond_2ce

    cmpl-float v1, v0, v9

    if-lez v1, :cond_2ce

    .line 396
    iget-object v1, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSpeed(F)V

    .line 398
    :cond_2ce
    const-string v0, "wm"

    const-string v1, "[LIVE_EXO] ExoPlayer setup complete, returning"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_175

    .line 297
    :catch_2d7
    move-exception v0

    .line 298
    const-string v2, "wm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LIVE_EXO] Failed to create ExoPlayerImpl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    .line 301
    const-string v0, "wm"

    const-string v2, "[LIVE_EXO] ExoPlayerImpl creation failed, falling back to IjkPlayer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a8

    .line 342
    :cond_300
    :try_start_300
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    .line 343
    const-string v2, "wm"

    const-string v3, "[LIVE_EXO] Creating ProgressiveMediaSource with FlvHevcExtractor"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v2, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    new-instance v3, Lbl/wm$1;

    invoke-direct {v3, p0}, Lbl/wm$1;-><init>(Lbl/wm;)V

    invoke-direct {v2, v0, v3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    .line 358
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;
    :try_end_31c
    .catch Ljava/lang/Exception; {:try_start_300 .. :try_end_31c} :catch_320

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_262

    .line 385
    :catch_320
    move-exception v0

    .line 386
    const-string v1, "wm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LIVE_EXO] setDataSource failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_28a

    .line 404
    :cond_342
    const-string v0, "wm"

    const-string v2, "[LIVE_IJK] PlayerSelector.shouldUseExoPlayer=false, using IjkPlayer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a6

    .line 418
    :catch_34b
    move-exception v0

    .line 419
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_175

    .line 434
    :catch_351
    move-exception v0

    goto/16 :goto_133
.end method

.method private a(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V
    .locals 6

    .prologue
    .line 444
    iget-object v0, p0, Lbl/wm;->n:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/wm;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_d

    .line 454
    :cond_c
    return-void

    .line 447
    :cond_d
    iget-object v0, p0, Lbl/wm;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/wp;

    .line 448
    iget v2, v0, Lbl/wp;->a:I

    if-nez v2, :cond_2e

    .line 449
    iget v2, v0, Lbl/wp;->b:I

    iget-object v3, v0, Lbl/wp;->d:Ljava/lang/String;

    iget v0, v0, Lbl/wp;->c:I

    int-to-long v4, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_13

    .line 451
    :cond_2e
    iget v2, v0, Lbl/wp;->b:I

    iget-object v3, v0, Lbl/wp;->d:Ljava/lang/String;

    iget v0, v0, Lbl/wp;->c:I

    int-to-long v4, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_13
.end method

.method static synthetic access$200(Lbl/wm;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lbl/wm;Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lbl/wm;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lbl/wm;->v:I

    return v0
.end method

.method static synthetic access$302(Lbl/wm;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lbl/wm;->v:I

    return p1
.end method

.method static synthetic access$400(Lbl/wm;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lbl/wm;->p:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 33
    sget-wide v0, Lbl/wm;->sLastLiveErrorRefreshTime:J

    return-wide v0
.end method

.method static synthetic access$502(J)J
    .locals 0

    .prologue
    .line 33
    sput-wide p0, Lbl/wm;->sLastLiveErrorRefreshTime:J

    return-wide p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbl/wm;->l:Landroid/content/Context;

    .line 123
    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 227
    new-instance v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    iput-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 228
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 230
    :try_start_d
    iget-object v1, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lbl/wm;->l:Landroid/content/Context;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/wo;

    invoke-virtual {v0}, Lbl/wo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/wo;

    invoke-virtual {v0}, Lbl/wo;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_28} :catch_29

    .line 234
    :goto_28
    return-void

    .line 231
    :catch_29
    move-exception v0

    .line 232
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 614
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_12

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 619
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->b()Lbl/ws;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_d

    .line 621
    invoke-interface {v0}, Lbl/ws;->e()V

    .line 623
    :cond_d
    return-void
.end method

.method public static g()V
    .locals 1

    .prologue
    .line 626
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->b()Lbl/ws;

    move-result-object v0

    .line 627
    if-eqz v0, :cond_d

    .line 628
    invoke-interface {v0}, Lbl/ws;->f()V

    .line 630
    :cond_d
    return-void
.end method

.method public static getLiveFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lbl/wm;->sLiveFormat:Ljava/lang/String;

    return-object v0
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 633
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->b()Lbl/ws;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_d

    .line 635
    invoke-interface {v0}, Lbl/ws;->g()V

    .line 637
    :cond_d
    return-void
.end method

.method public static setLiveFormat(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 72
    sput-object p0, Lbl/wm;->sLiveFormat:Ljava/lang/String;

    .line 73
    const-string v0, "wm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LIVE_FORMAT] Set live format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 652
    iput p1, p0, Lbl/wm;->s:I

    .line 653
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    .line 195
    const/4 v2, 0x0

    :try_start_3
    iput v2, p0, Lbl/wm;->r:I

    .line 196
    const/4 v2, 0x0

    iput v2, p0, Lbl/wm;->s:I

    .line 197
    iget-object v2, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v2, :cond_11

    .line 198
    iget-object v2, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 200
    :cond_11
    iget v2, p0, Lbl/wm;->m:I

    packed-switch v2, :pswitch_data_60

    .line 210
    :goto_16
    iget-boolean v0, p0, Lbl/wm;->o:Z

    invoke-virtual {p0, v0}, Lbl/wm;->a(Z)V

    .line 211
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 212
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 213
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 214
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 215
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 216
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 217
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 218
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 219
    const-string v0, "LiveStartupTrace"

    const-string v1, "[LIVE_STARTUP_TRACE] prepareAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 224
    :goto_50
    return-void

    .line 202
    :pswitch_51
    invoke-direct {p0, p1}, Lbl/wm;->b(Landroid/os/Message;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_54} :catch_55

    goto :goto_16

    .line 221
    :catch_55
    move-exception v0

    .line 222
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_50

    :pswitch_5a
    move v0, v1

    .line 207
    :pswitch_5b
    :try_start_5b
    invoke-direct {p0, p1, v0}, Lbl/wm;->a(Landroid/os/Message;Z)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_55

    goto :goto_16

    .line 200
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_51
        :pswitch_5b
        :pswitch_5a
    .end packed-switch
.end method

.method public a(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 488
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 489
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 490
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 491
    iget-object v1, p0, Lbl/wm;->j:Lbl/wm$b;

    invoke-virtual {v1, v0}, Lbl/wm$b;->sendMessage(Landroid/os/Message;)Z

    .line 492
    return-void
.end method

.method public a(Lbl/ws;)V
    .locals 1

    .prologue
    .line 140
    if-nez p1, :cond_6

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/wm;->p:Ljava/lang/ref/WeakReference;

    .line 145
    :goto_5
    return-void

    .line 143
    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/wm;->p:Ljava/lang/ref/WeakReference;

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lbl/wm;->t:Ljava/lang/String;

    .line 661
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;ZF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZF)V"
        }
    .end annotation

    .prologue
    .line 470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 477
    :goto_6
    return-void

    .line 473
    :cond_7
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 474
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 475
    new-instance v1, Lbl/wo;

    invoke-direct {v1, p1, p2, p3, p4}, Lbl/wo;-><init>(Ljava/lang/String;Ljava/util/Map;ZF)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 476
    iget-object v1, p0, Lbl/wm;->j:Lbl/wm$b;

    invoke-virtual {v1, v0}, Lbl/wm$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 672
    iget-boolean v0, p0, Lbl/wm;->o:Z

    if-ne v0, p1, :cond_5

    .line 687
    :cond_4
    :goto_4
    return-void

    .line 675
    :cond_5
    iput-boolean p1, p0, Lbl/wm;->o:Z

    .line 676
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_4

    .line 678
    if-eqz p1, :cond_1a

    .line 679
    :try_start_d
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_4

    .line 683
    :catch_15
    move-exception v0

    .line 684
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 681
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_23} :catch_15

    goto :goto_4
.end method

.method public b()Lbl/ws;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lbl/wm;->p:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lbl/wm;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/ws;

    goto :goto_5
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 656
    iput p1, p0, Lbl/wm;->r:I

    .line 657
    return-void
.end method

.method public b(Lbl/ws;)V
    .locals 1

    .prologue
    .line 148
    if-nez p1, :cond_6

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/wm;->q:Ljava/lang/ref/WeakReference;

    .line 153
    :goto_5
    return-void

    .line 151
    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/wm;->q:Ljava/lang/ref/WeakReference;

    goto :goto_5
.end method

.method public c()Lbl/ws;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lbl/wm;->q:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lbl/wm;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/ws;

    goto :goto_5
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 664
    iput p1, p0, Lbl/wm;->f57u:I

    .line 665
    return-void
.end method

.method public c(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_f

    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_f

    .line 459
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 467
    :cond_e
    :goto_e
    return-void

    .line 462
    :cond_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    .line 463
    iget-object v1, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 466
    iget-object v1, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_e
.end method

.method public d()V
    .locals 2

    .prologue
    .line 480
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 481
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 482
    iget-object v1, p0, Lbl/wm;->j:Lbl/wm$b;

    invoke-virtual {v1, v0}, Lbl/wm$b;->sendMessage(Landroid/os/Message;)Z

    .line 483
    const-string v0, ""

    iput-object v0, p0, Lbl/wm;->t:Ljava/lang/String;

    .line 484
    const/16 v0, -0x16

    iput v0, p0, Lbl/wm;->f57u:I

    .line 485
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 668
    iput p1, p0, Lbl/wm;->m:I

    .line 669
    return-void
.end method

.method public i()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lbl/wm;->r:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lbl/wm;->s:I

    return v0
.end method

.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lbl/wm;->k:Landroid/os/Handler;

    new-instance v1, Lbl/wm$5;

    invoke-direct {v1, p0, p2}, Lbl/wm$5;-><init>(Lbl/wm;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 532
    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lbl/wm;->k:Landroid/os/Handler;

    new-instance v1, Lbl/wm$4;

    invoke-direct {v1, p0}, Lbl/wm$4;-><init>(Lbl/wm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4

    .prologue
    .line 551
    instance-of v1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 552
    const-string v2, "wm"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LIVE_IJK_ERROR] onError what="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", extra="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", player="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 553
    if-eqz v1, :cond_3e

    const-string v0, "IjkPlayer"

    :goto_27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lbl/wm;->k:Landroid/os/Handler;

    new-instance v2, Lbl/wm$7;

    invoke-direct {v2, p0, p2, p3, v1}, Lbl/wm$7;-><init>(Lbl/wm;IIZ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    const/4 v0, 0x1

    return v0

    .line 553
    :cond_3e
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_49
    const-string v0, "null"

    goto :goto_27
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 3

    .prologue
    .line 581
    const/4 v0, 0x3

    if-ne p2, v0, :cond_16

    .line 582
    const-string v0, "LiveStartupTrace"

    const-string v1, "[LIVE_STARTUP_TRACE] first_frame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_a
    :goto_a
    iget-object v0, p0, Lbl/wm;->k:Landroid/os/Handler;

    new-instance v1, Lbl/wm$8;

    invoke-direct {v1, p0, p2, p3}, Lbl/wm$8;-><init>(Lbl/wm;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 596
    const/4 v0, 0x0

    return v0

    .line 583
    :cond_16
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_33

    .line 584
    const-string v0, "wm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LIVE_BUFFER] BUFFERING_START (\u753b\u9762loading\u5f00\u59cb), position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 585
    :cond_33
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_a

    .line 586
    const-string v0, "wm"

    const-string v1, "[LIVE_BUFFER] BUFFERING_END (\u753b\u9762loading\u7ed3\u675f)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public onNativeInvoke(ILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 238
    const-string v0, "IjkCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNativeInvoke,what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", args size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :try_start_26
    const-string v0, "url"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "expires"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    const-string v2, "IjkCommander"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", expires="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz v1, :cond_b4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b4

    .line 252
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 253
    const-string v2, "http_code"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 255
    const-string v3, "IjkCommander"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http_code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", expires="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currentTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/16 v3, 0x193

    if-ne v2, v3, :cond_b4

    cmp-long v0, v4, v0

    if-lez v0, :cond_b4

    .line 257
    const-string v0, "IjkCommander"

    const-string v1, "\u89e6\u53d1refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->_this:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->refresh()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_b4} :catch_b6

    .line 266
    :cond_b4
    :goto_b4
    const/4 v0, 0x1

    return v0

    .line 262
    :catch_b6
    move-exception v0

    .line 263
    const-string v1, "IjkCommander"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNativeInvoke error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b4
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lbl/wm;->k:Landroid/os/Handler;

    new-instance v1, Lbl/wm$3;

    invoke-direct {v1, p0}, Lbl/wm$3;-><init>(Lbl/wm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 504
    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lbl/wm;->k:Landroid/os/Handler;

    new-instance v1, Lbl/wm$6;

    invoke-direct {v1, p0}, Lbl/wm$6;-><init>(Lbl/wm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 544
    return-void
.end method

.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 7

    .prologue
    .line 601
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lbl/wm;->r:I

    .line 602
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lbl/wm;->s:I

    .line 603
    iget-object v6, p0, Lbl/wm;->k:Landroid/os/Handler;

    new-instance v0, Lbl/wm$9;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbl/wm$9;-><init>(Lbl/wm;IIII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 611
    return-void
.end method

.method public setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v0, :cond_25

    .line 82
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V

    .line 83
    const-string v0, "wm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUDIO_BALANCE] Set audio balance level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_25
    return-void
.end method
