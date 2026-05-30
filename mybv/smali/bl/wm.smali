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
        Lbl/wm$b;,
        Lbl/wm$aa;
    }
.end annotation


# static fields
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
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lbl/wm;->sLiveFormat:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->h(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lbl/wm;->m:I

    .line 100
    iput-boolean v1, p0, Lbl/wm;->o:Z

    .line 101
    iput v1, p0, Lbl/wm;->r:I

    .line 102
    iput v1, p0, Lbl/wm;->s:I

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lbl/wm;->t:Ljava/lang/String;

    .line 104
    const/16 v0, -0x16

    iput v0, p0, Lbl/wm;->f57u:I

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Lbl/wm;->a:I

    .line 106
    const/16 v0, 0x2bd

    iput v0, p0, Lbl/wm;->b:I

    .line 107
    const/16 v0, 0x2be

    iput v0, p0, Lbl/wm;->c:I

    .line 108
    const/16 v0, 0x2711

    iput v0, p0, Lbl/wm;->d:I

    .line 109
    const/16 v0, 0x64

    iput v0, p0, Lbl/wm;->e:I

    .line 110
    const/16 v0, -0x2710

    iput v0, p0, Lbl/wm;->f:I

    .line 111
    const/16 v0, 0xc8

    iput v0, p0, Lbl/wm;->g:I

    .line 112
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbl/wm;->i:Landroid/os/HandlerThread;

    .line 113
    iget-object v0, p0, Lbl/wm;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 114
    new-instance v0, Lbl/wm$b;

    iget-object v1, p0, Lbl/wm;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbl/wm$b;-><init>(Lbl/wm;Landroid/os/Looper;)V

    iput-object v0, p0, Lbl/wm;->j:Lbl/wm$b;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbl/wm;->k:Landroid/os/Handler;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lbl/wm$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lbl/wm;-><init>()V

    return-void
.end method

.method public static a()Lbl/wm;
    .locals 1

    .prologue
    .line 65
    # getter for: Lbl/wm$aa;->a:Lbl/wm;
    invoke-static {}, Lbl/wm$aa;->access$000()Lbl/wm;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 92
    if-nez p0, :cond_a

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "video manager init error!!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_a
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-direct {v0, p0}, Lbl/wm;->b(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method private a(Landroid/os/Message;Z)V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-wide/16 v6, 0x1

    .line 268
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/wo;

    invoke-virtual {v0}, Lbl/wo;->a()Ljava/lang/String;

    move-result-object v1

    .line 269
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

    .line 272
    iget-object v0, p0, Lbl/wm;->l:Landroid/content/Context;

    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->shouldUseExoPlayer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_345

    .line 273
    const-string v0, "wm"

    const-string v2, "[LIVE_EXO] PlayerSelector.shouldUseExoPlayer=true, checking format"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".flv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 277
    const-string v2, "wm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LIVE_EXO] URL FLV check: isFlv="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v2, "ts"

    sget-object v3, Lbl/wm;->sLiveFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 281
    const-string v3, "wm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LIVE_EXO] TS format check: isTsFormat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sLiveFormat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lbl/wm;->sLiveFormat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-nez v0, :cond_a7

    if-eqz v2, :cond_17e

    .line 284
    :cond_a7
    const-string v0, "wm"

    const-string v2, "[LIVE_EXO] FLV or TS format detected, falling back to IjkPlayer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_ae
    :goto_ae
    const-string v0, "wm"

    const-string v2, "[LIVE_IJK] Creating IjkMediaPlayer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v2, p0, Lbl/wm;->l:Landroid/content/Context;

    invoke-direct {v0, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 391
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 392
    if-eqz p2, :cond_f6

    .line 394
    :try_start_c6
    const-string v0, "enable mediaCodec"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v2, 0x4

    const-string v3, "mediacodec"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 396
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v2, 0x4

    const-string v3, "mediacodec-auto-rotate"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 397
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v2, 0x4

    const-string v3, "mediacodec-handle-resolution-change"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 398
    const-string v0, "wm"

    const-string v2, "[LIVE_IJK] mediaCodec enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_f6} :catch_34e

    .line 405
    :cond_f6
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v2, "reconnect"

    invoke-virtual {v0, v8, v2, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 406
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnNativeInvokeListener(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;)V

    .line 409
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v2, "user_agent"

    const-string v3, "Bilibili Freedoooooom/MarkII"

    invoke-virtual {v0, v8, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v0, "platform=web"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_124

    .line 411
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "headers"

    const-string v2, "Referer: https://www.bilibili.com\r\n"

    invoke-virtual {v0, v8, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_124
    :try_start_124
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
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_13b} :catch_354

    .line 416
    :goto_13b
    iget-object v1, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/wo;

    invoke-virtual {v0}, Lbl/wo;->c()Z

    move-result v0

    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    .line 417
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/wo;

    invoke-virtual {v0}, Lbl/wo;->d()F

    move-result v0

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_16f

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/wo;

    invoke-virtual {v0}, Lbl/wo;->d()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_16f

    .line 418
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbl/wo;

    invoke-virtual {v1}, Lbl/wo;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V

    .line 420
    :cond_16f
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {p0, v0}, Lbl/wm;->a(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V

    .line 421
    const-string v0, "wm"

    const-string v1, "[LIVE_IJK] IjkMediaPlayer setup complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_17d
    return-void

    .line 286
    :cond_17e
    const-string v0, "wm"

    const-string v2, "[LIVE_EXO] Creating ExoPlayerImpl for live streaming"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :try_start_185
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iget-object v2, p0, Lbl/wm;->l:Landroid/content/Context;

    invoke-direct {v0, v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;-><init>(Landroid/content/Context;)V

    .line 289
    iput-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 290
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
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_1b0} :catch_2df

    .line 298
    :goto_1b0
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v0, :cond_ae

    .line 299
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 303
    :try_start_1bc
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    const-string v2, "Bilibili Freedoooooom/MarkII"

    .line 304
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/16 v2, 0x1f40

    .line 305
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/16 v2, 0x1f40

    .line 306
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 308
    const-string v2, "platform=web"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 309
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

    .line 310
    if-eqz v2, :cond_205

    .line 311
    const-string v2, "Referer"

    const-string v3, "https://www.bilibili.com"

    .line 312
    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 311
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    .line 313
    const-string v2, "wm"

    const-string v3, "[LIVE_EXO] Referer header injected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_205
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".m3u8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 318
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

    .line 323
    if-eqz v2, :cond_308

    .line 324
    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 325
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 326
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setLiveTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    .line 327
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setLiveMinOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    const-wide/16 v2, 0x1388

    .line 328
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setLiveMaxOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    const v2, 0x3f733333    # 0.95f

    .line 329
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setLiveMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 330
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setLiveMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    .line 332
    const-string v2, "wm"

    const-string v3, "[LIVE_EXO] Creating HlsMediaSource with live config: targetOffset=1000ms, minOffset=500ms, maxOffset=5000ms"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 334
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v0

    move-object v1, v0

    .line 342
    :goto_26a
    const-string v0, "wm"

    const-string v2, "[LIVE_EXO] Calling exoImpl.setDataSource(mediaSource)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 344
    const-string v0, "wm"

    const-string v1, "[LIVE_EXO] setDataSource completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    new-instance v1, Lbl/wm$1;

    invoke-direct {v1, p0}, Lbl/wm$1;-><init>(Lbl/wm;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setErrorListener(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;)V

    .line 365
    const-string v0, "wm"

    const-string v1, "[LIVE_EXO] Error listener set"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_292
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_292} :catch_323

    .line 372
    :goto_292
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/wo;

    invoke-virtual {v0}, Lbl/wo;->c()Z

    move-result v1

    .line 373
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbl/wo;

    invoke-virtual {v0}, Lbl/wo;->d()F

    move-result v0

    .line 374
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

    .line 375
    iget-object v2, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    .line 376
    cmpl-float v1, v0, v10

    if-eqz v1, :cond_2d6

    cmpl-float v1, v0, v9

    if-lez v1, :cond_2d6

    .line 377
    iget-object v1, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSpeed(F)V

    .line 379
    :cond_2d6
    const-string v0, "wm"

    const-string v1, "[LIVE_EXO] ExoPlayer setup complete, returning"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17d

    .line 291
    :catch_2df
    move-exception v0

    .line 292
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

    .line 293
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    .line 295
    const-string v0, "wm"

    const-string v2, "[LIVE_EXO] ExoPlayerImpl creation failed, falling back to IjkPlayer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b0

    .line 336
    :cond_308
    :try_start_308
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    .line 337
    const-string v2, "wm"

    const-string v3, "[LIVE_EXO] Creating ProgressiveMediaSource"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v2, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 339
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;
    :try_end_31f
    .catch Ljava/lang/Exception; {:try_start_308 .. :try_end_31f} :catch_323

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_26a

    .line 366
    :catch_323
    move-exception v0

    .line 367
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

    .line 368
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_292

    .line 385
    :cond_345
    const-string v0, "wm"

    const-string v2, "[LIVE_IJK] PlayerSelector.shouldUseExoPlayer=false, using IjkPlayer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    .line 399
    :catch_34e
    move-exception v0

    .line 400
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_17d

    .line 415
    :catch_354
    move-exception v0

    goto/16 :goto_13b
.end method

.method private a(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V
    .locals 6

    .prologue
    .line 425
    iget-object v0, p0, Lbl/wm;->n:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/wm;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_d

    .line 435
    :cond_c
    return-void

    .line 428
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

    .line 429
    iget v2, v0, Lbl/wp;->a:I

    if-nez v2, :cond_2e

    .line 430
    iget v2, v0, Lbl/wp;->b:I

    iget-object v3, v0, Lbl/wp;->d:Ljava/lang/String;

    iget v0, v0, Lbl/wp;->c:I

    int-to-long v4, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_13

    .line 432
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
    .line 32
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lbl/wm;Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lbl/wm;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lbl/wm;->v:I

    return v0
.end method

.method static synthetic access$302(Lbl/wm;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lbl/wm;->v:I

    return p1
.end method

.method static synthetic access$400(Lbl/wm;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lbl/wm;->p:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbl/wm;->l:Landroid/content/Context;

    .line 120
    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 223
    new-instance v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    iput-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 224
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 226
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

    .line 230
    :goto_28
    return-void

    .line 227
    :catch_29
    move-exception v0

    .line 228
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 568
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 569
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
    .line 573
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->b()Lbl/ws;

    move-result-object v0

    .line 574
    if-eqz v0, :cond_d

    .line 575
    invoke-interface {v0}, Lbl/ws;->e()V

    .line 577
    :cond_d
    return-void
.end method

.method public static g()V
    .locals 1

    .prologue
    .line 580
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->b()Lbl/ws;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_d

    .line 582
    invoke-interface {v0}, Lbl/ws;->f()V

    .line 584
    :cond_d
    return-void
.end method

.method public static getLiveFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lbl/wm;->sLiveFormat:Ljava/lang/String;

    return-object v0
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 587
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->b()Lbl/ws;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_d

    .line 589
    invoke-interface {v0}, Lbl/ws;->g()V

    .line 591
    :cond_d
    return-void
.end method

.method public static setLiveFormat(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 69
    sput-object p0, Lbl/wm;->sLiveFormat:Ljava/lang/String;

    .line 70
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

    .line 71
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 606
    iput p1, p0, Lbl/wm;->s:I

    .line 607
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    .line 192
    const/4 v2, 0x0

    :try_start_3
    iput v2, p0, Lbl/wm;->r:I

    .line 193
    const/4 v2, 0x0

    iput v2, p0, Lbl/wm;->s:I

    .line 194
    iget-object v2, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v2, :cond_11

    .line 195
    iget-object v2, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 197
    :cond_11
    iget v2, p0, Lbl/wm;->m:I

    packed-switch v2, :pswitch_data_58

    .line 207
    :goto_16
    iget-boolean v0, p0, Lbl/wm;->o:Z

    invoke-virtual {p0, v0}, Lbl/wm;->a(Z)V

    .line 208
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 209
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 210
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 211
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 212
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 213
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 214
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 215
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 216
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 220
    :goto_49
    return-void

    .line 199
    :pswitch_4a
    invoke-direct {p0, p1}, Lbl/wm;->b(Landroid/os/Message;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4d} :catch_4e

    goto :goto_16

    .line 217
    :catch_4e
    move-exception v0

    .line 218
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_49

    :pswitch_53
    move v0, v1

    .line 204
    :pswitch_54
    :try_start_54
    invoke-direct {p0, p1, v0}, Lbl/wm;->a(Landroid/os/Message;Z)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_4e

    goto :goto_16

    .line 197
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_54
        :pswitch_53
    .end packed-switch
.end method

.method public a(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 469
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 470
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 471
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 472
    iget-object v1, p0, Lbl/wm;->j:Lbl/wm$b;

    invoke-virtual {v1, v0}, Lbl/wm$b;->sendMessage(Landroid/os/Message;)Z

    .line 473
    return-void
.end method

.method public a(Lbl/ws;)V
    .locals 1

    .prologue
    .line 137
    if-nez p1, :cond_6

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/wm;->p:Ljava/lang/ref/WeakReference;

    .line 142
    :goto_5
    return-void

    .line 140
    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/wm;->p:Ljava/lang/ref/WeakReference;

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lbl/wm;->t:Ljava/lang/String;

    .line 615
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
    .line 451
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 458
    :goto_6
    return-void

    .line 454
    :cond_7
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 455
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 456
    new-instance v1, Lbl/wo;

    invoke-direct {v1, p1, p2, p3, p4}, Lbl/wo;-><init>(Ljava/lang/String;Ljava/util/Map;ZF)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 457
    iget-object v1, p0, Lbl/wm;->j:Lbl/wm$b;

    invoke-virtual {v1, v0}, Lbl/wm$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 626
    iget-boolean v0, p0, Lbl/wm;->o:Z

    if-ne v0, p1, :cond_5

    .line 641
    :cond_4
    :goto_4
    return-void

    .line 629
    :cond_5
    iput-boolean p1, p0, Lbl/wm;->o:Z

    .line 630
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_4

    .line 632
    if-eqz p1, :cond_1a

    .line 633
    :try_start_d
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_4

    .line 637
    :catch_15
    move-exception v0

    .line 638
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 635
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
    .line 123
    iget-object v0, p0, Lbl/wm;->p:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    .line 124
    const/4 v0, 0x0

    .line 126
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
    .line 610
    iput p1, p0, Lbl/wm;->r:I

    .line 611
    return-void
.end method

.method public b(Lbl/ws;)V
    .locals 1

    .prologue
    .line 145
    if-nez p1, :cond_6

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/wm;->q:Ljava/lang/ref/WeakReference;

    .line 150
    :goto_5
    return-void

    .line 148
    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/wm;->q:Ljava/lang/ref/WeakReference;

    goto :goto_5
.end method

.method public c()Lbl/ws;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lbl/wm;->q:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    .line 131
    const/4 v0, 0x0

    .line 133
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
    .line 618
    iput p1, p0, Lbl/wm;->f57u:I

    .line 619
    return-void
.end method

.method public c(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_f

    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_f

    .line 440
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 448
    :cond_e
    :goto_e
    return-void

    .line 443
    :cond_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    .line 444
    iget-object v1, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 447
    iget-object v1, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_e
.end method

.method public d()V
    .locals 2

    .prologue
    .line 461
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 462
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 463
    iget-object v1, p0, Lbl/wm;->j:Lbl/wm$b;

    invoke-virtual {v1, v0}, Lbl/wm$b;->sendMessage(Landroid/os/Message;)Z

    .line 464
    const-string v0, ""

    iput-object v0, p0, Lbl/wm;->t:Ljava/lang/String;

    .line 465
    const/16 v0, -0x16

    iput v0, p0, Lbl/wm;->f57u:I

    .line 466
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 622
    iput p1, p0, Lbl/wm;->m:I

    .line 623
    return-void
.end method

.method public i()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lbl/wm;->r:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lbl/wm;->s:I

    return v0
.end method

.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lbl/wm;->k:Landroid/os/Handler;

    new-instance v1, Lbl/wm$4;

    invoke-direct {v1, p0, p2}, Lbl/wm$4;-><init>(Lbl/wm;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lbl/wm;->k:Landroid/os/Handler;

    new-instance v1, Lbl/wm$3;

    invoke-direct {v1, p0}, Lbl/wm$3;-><init>(Lbl/wm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 497
    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lbl/wm;->k:Landroid/os/Handler;

    new-instance v1, Lbl/wm$6;

    invoke-direct {v1, p0, p2, p3}, Lbl/wm$6;-><init>(Lbl/wm;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 537
    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lbl/wm;->k:Landroid/os/Handler;

    new-instance v1, Lbl/wm$7;

    invoke-direct {v1, p0, p2, p3}, Lbl/wm$7;-><init>(Lbl/wm;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onNativeInvoke(ILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 234
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

    .line 244
    :try_start_26
    const-string v0, "url"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "expires"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
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

    .line 247
    if-eqz v1, :cond_b4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b4

    .line 248
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 249
    const-string v2, "http_code"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 251
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

    .line 252
    const/16 v3, 0x193

    if-ne v2, v3, :cond_b4

    cmp-long v0, v4, v0

    if-lez v0, :cond_b4

    .line 253
    const-string v0, "IjkCommander"

    const-string v1, "\u89e6\u53d1refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->_this:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->refresh()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_b4} :catch_b6

    .line 262
    :cond_b4
    :goto_b4
    const/4 v0, 0x1

    return v0

    .line 258
    :catch_b6
    move-exception v0

    .line 259
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

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b4
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lbl/wm;->k:Landroid/os/Handler;

    new-instance v1, Lbl/wm$2;

    invoke-direct {v1, p0}, Lbl/wm$2;-><init>(Lbl/wm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lbl/wm;->k:Landroid/os/Handler;

    new-instance v1, Lbl/wm$5;

    invoke-direct {v1, p0}, Lbl/wm$5;-><init>(Lbl/wm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 525
    return-void
.end method

.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 7

    .prologue
    .line 555
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lbl/wm;->r:I

    .line 556
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lbl/wm;->s:I

    .line 557
    iget-object v6, p0, Lbl/wm;->k:Landroid/os/Handler;

    new-instance v0, Lbl/wm$8;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbl/wm$8;-><init>(Lbl/wm;IIII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 565
    return-void
.end method

.method public setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v0, :cond_25

    .line 79
    iget-object v0, p0, Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V

    .line 80
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

    .line 82
    :cond_25
    return-void
.end method
