.class public Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
.super Lbl/wy;
.source "LiveVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$a;,
        Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$b;
    }
.end annotation


# instance fields
.field protected B:Landroid/widget/TextView;

.field protected C:Landroid/view/ViewGroup;

.field protected D:Landroid/view/ViewGroup;

.field protected E:Lbl/wt;

.field public F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

.field public G:Z

.field private af:I

.field private ag:Z

.field private ah:I

.field private ai:Landroid/view/ViewGroup;

.field private aj:Lbl/aeu;

.field private ak:Lbl/aei;

.field private al:Ljava/lang/Runnable;

.field public danmakuClient:Lmybl/DanmakuClient;

.field private loadingCover:Lcom/bilibili/tv/widget/ScalableImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lbl/wy;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->e(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ah:I

    .line 83
    new-instance v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$2;-><init>(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->al:Ljava/lang/Runnable;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lbl/wy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->e(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ah:I

    .line 98
    new-instance v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$3;-><init>(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->al:Ljava/lang/Runnable;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lbl/wy;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 43
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->e(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ah:I

    .line 68
    new-instance v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$1;-><init>(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->al:Ljava/lang/Runnable;

    .line 78
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 241
    const-string v0, "change2Playing"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->k()V

    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ag:Z

    if-nez v0, :cond_21

    .line 251
    :cond_20
    :goto_20
    return-void

    .line 249
    :cond_21
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->start()V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ag:Z

    goto :goto_20
.end method

.method private B()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 254
    const-string v0, "change2Pause"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 257
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F()V

    .line 258
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->j()V

    .line 259
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ag:Z

    if-eqz v0, :cond_1f

    .line 264
    :cond_1e
    :goto_1e
    return-void

    .line 262
    :cond_1f
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->stop()V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ag:Z

    goto :goto_1e
.end method

.method private C()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 267
    const-string v0, "change2PlayingBuffering"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    return-void
.end method

.method private D()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 274
    const-string v0, "change2Complete"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 279
    const-string v1, "\u76f4\u64ad\u7ed3\u675f"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_28

    .line 281
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 283
    :cond_28
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 286
    const-string v0, "change2Error"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->y:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 291
    const-string v1, "\u5f53\u524d\u76f4\u64ad\u65e0\u6cd5\u64ad\u653e\uff01\uff01\uff01"

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_28

    .line 293
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 295
    :cond_28
    return-void
.end method

.method private F()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 301
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->x:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->x:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->x:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->z:Landroid/graphics/Bitmap;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_24

    .line 307
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->q()V

    .line 308
    return-void

    .line 302
    :catch_24
    move-exception v0

    .line 303
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->z:Landroid/graphics/Bitmap;

    goto :goto_20
.end method

.method private H()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 404
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-nez v0, :cond_6

    .line 423
    :cond_5
    :goto_5
    return-void

    .line 407
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ah:I

    invoke-interface {v0, v1, v3, v2}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->initView(Landroid/view/ViewGroup;ZI)V

    .line 408
    new-instance v1, Lcom/bilibili/tv/player/danmaku/DanmakuParams;

    invoke-direct {v1}, Lcom/bilibili/tv/player/danmaku/DanmakuParams;-><init>()V

    .line 409
    invoke-virtual {v1, v3}, Lcom/bilibili/tv/player/danmaku/DanmakuParams;->setRealTimeDanmaku(Z)V

    .line 410
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->f(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/danmaku/DanmakuParams;->setDanmakuTextSizeScaleFactor(F)V

    .line 411
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->g(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/danmaku/DanmakuParams;->setDanmakuAlphaFactor(F)V

    .line 412
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v2

    .line 413
    const/4 v0, 0x0

    .line 414
    if-eqz v2, :cond_69

    invoke-virtual {v2}, Lbl/mg;->c()Lcom/bilibili/lib/account/model/AccountInfo;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 415
    iget-wide v2, v2, Lcom/bilibili/lib/account/model/AccountInfo;->mMid:J

    long-to-int v0, v2

    move v6, v0

    .line 417
    :goto_4a
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    const/4 v2, 0x0

    new-instance v3, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$b;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$b;-><init>(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V

    iget v4, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->af:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->start(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;J)V

    .line 418
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ak:Lbl/aei;

    iget v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->af:I

    invoke-virtual {v0, v1, v6}, Lbl/aei;->a(II)V

    .line 419
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    if-nez v0, :cond_5

    .line 422
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->hide()V

    goto :goto_5

    :cond_69
    move v6, v0

    goto :goto_4a
.end method

.method static synthetic access$000(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->af:I

    return v0
.end method

.method private y()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    const-string v0, "change2Normal"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    return-void
.end method

.method private z()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    const-string v0, "change2Preparing"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    return-void
.end method


# virtual methods
.method public G()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_12

    .line 378
    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_11

    .line 379
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->k()V

    .line 393
    :cond_11
    :goto_11
    return-void

    .line 384
    :cond_12
    invoke-static {v2, v1, v1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerCreator;->create(ILtv/danmaku/videoplayer/core/media/resource/PlayerConfig;Ltv/danmaku/ijk/media/player/MediaInfo;)Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    .line 385
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0, v2}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->alignDanmakuBottom(Z)V

    .line 386
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    iget v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ah:I

    invoke-interface {v0, v2, v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->setPortraitPlayingEnable(ZI)V

    .line 387
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->H()V

    .line 388
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aj:Lbl/aeu;

    if-eqz v0, :cond_32

    .line 389
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aj:Lbl/aeu;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-virtual {v0, v1}, Lbl/aeu;->a(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;)V

    .line 392
    :cond_32
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->danmakuClient:Lmybl/DanmakuClient;

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    sput-object v0, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    goto :goto_11
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0, p1}, Lbl/wy;->a(Landroid/content/Context;)V

    .line 114
    const v0, 0x7f08013a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->B:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    .line 116
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    const v1, 0x7f0801c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->loadingCover:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 117
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    .line 118
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    .line 119
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ah:I

    .line 120
    new-instance v0, Lbl/aeu;

    invoke-direct {v0}, Lbl/aeu;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aj:Lbl/aeu;

    .line 121
    new-instance v0, Lbl/aei;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aj:Lbl/aeu;

    new-instance v2, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$a;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$a;-><init>(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V

    invoke-direct {v0, v1, v2}, Lbl/aei;-><init>(Lbl/aeu;Lbl/ael;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ak:Lbl/aei;

    .line 122
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_1f

    .line 346
    if-nez p1, :cond_20

    .line 347
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbl/abd;->c(Landroid/content/Context;Z)V

    .line 348
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->hide()V

    .line 353
    :goto_17
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    .line 355
    :cond_1f
    return-void

    .line 350
    :cond_20
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbl/abd;->c(Landroid/content/Context;Z)V

    .line 351
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->show()V

    goto :goto_17
.end method

.method public varargs a(Ljava/lang/String;ZLjava/io/File;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    aget-object v0, p4, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->af:I

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Lbl/wy;->a(Ljava/lang/String;ZLjava/io/File;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 143
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 144
    if-nez v0, :cond_12

    .line 145
    const-string v0, "LiveVideoPlayer"

    const-string v1, "[LIVE_PAUSE] Player is null, skip pause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_11
    return-void

    .line 148
    :cond_12
    const-string v1, "LiveVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LIVE_PAUSE] Pausing live player, isPlaying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setStateAndUi(I)V

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aa:J

    .line 152
    :try_start_38
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 153
    const-string v0, "LiveVideoPlayer"

    const-string v1, "[LIVE_PAUSE] Player paused successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_42} :catch_43

    goto :goto_11

    .line 154
    :catch_43
    move-exception v0

    .line 155
    const-string v1, "LiveVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LIVE_PAUSE] Pause failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public f()V
    .locals 5

    .prologue
    .line 163
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aa:J

    .line 164
    iget v2, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->g:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_19

    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v2

    invoke-virtual {v2}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-interface {v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 192
    :cond_19
    :goto_19
    return-void

    .line 167
    :cond_1a
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setStateAndUi(I)V

    .line 168
    instance-of v2, v3, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v2, :cond_2b

    .line 170
    :try_start_22
    invoke-interface {v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_19

    .line 171
    :catch_26
    move-exception v2

    .line 172
    invoke-static {v2}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 174
    :cond_2b
    instance-of v2, v3, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v2, :cond_33

    .line 175
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->m()V

    goto :goto_19

    .line 178
    :cond_33
    const-string v2, "LiveVideoPlayer"

    const-string v4, "[LIVE_EXO] LiveVideoPlayer.f() - ExoPlayerImpl resume"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :try_start_3a
    instance-of v2, v3, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v2, :cond_4c

    .line 182
    move-object v0, v3

    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    move-object v2, v0

    .line 184
    invoke-virtual {v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->seekToLivePosition()V

    .line 185
    const-string v2, "LiveVideoPlayer"

    const-string v4, "[LIVE_EXO] seekToLivePosition called"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_4c
    invoke-interface {v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4f} :catch_50

    goto :goto_19

    .line 188
    :catch_50
    move-exception v2

    .line 189
    invoke-static {v2}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f0a0043

    return v0
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-super {p0}, Lbl/wy;->i()V

    .line 313
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 314
    iput-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    .line 316
    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_24

    .line 317
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->release()V

    .line 318
    iput-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    .line 320
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->danmakuClient:Lmybl/DanmakuClient;

    if-eqz v0, :cond_24

    .line 321
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->danmakuClient:Lmybl/DanmakuClient;

    invoke-virtual {v0}, Lmybl/DanmakuClient;->release()V

    .line 322
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->danmakuClient:Lmybl/DanmakuClient;

    sput-object v1, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    .line 323
    iput-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->danmakuClient:Lmybl/DanmakuClient;

    .line 326
    :cond_24
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aj:Lbl/aeu;

    if-eqz v0, :cond_32

    .line 327
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aj:Lbl/aeu;

    move-object v0, v1

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-virtual {v2, v0}, Lbl/aeu;->a(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;)V

    .line 328
    iput-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aj:Lbl/aeu;

    .line 330
    :cond_32
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ak:Lbl/aei;

    if-eqz v0, :cond_3d

    .line 331
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ak:Lbl/aei;

    invoke-virtual {v0}, Lbl/aei;->a()V

    .line 332
    iput-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ak:Lbl/aei;

    .line 334
    :cond_3d
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_9

    .line 359
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->pause()V

    .line 361
    :cond_9
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_12

    .line 365
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 366
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->resume()V

    .line 373
    :cond_11
    :goto_11
    return-void

    .line 371
    :cond_12
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->al:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 372
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->al:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_11
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_c

    .line 397
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->release()V

    .line 398
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->H()V

    .line 400
    :cond_c
    return-void
.end method

.method public setCallBack(Lbl/wt;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->E:Lbl/wt;

    .line 62
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setVideoPlayCallBack(Lbl/wt;)V

    .line 63
    return-void
.end method

.method public setDanmakuAlpha(F)V
    .locals 5

    .prologue
    .line 341
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    sget-object v1, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->TRANSPARENCY:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->setDanmakuOption(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;[Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method public setDanmakuSize(F)V
    .locals 5

    .prologue
    .line 337
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    sget-object v1, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->TEXTSIZE_SCALE:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->setDanmakuOption(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;[Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method public setLoadingCover(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->loadingCover:Lcom/bilibili/tv/widget/ScalableImageView;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 137
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->loadingCover:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v0, p1, v1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 139
    :cond_15
    return-void
.end method

.method public setStateAndUi(I)V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0, p1}, Lbl/wy;->setStateAndUi(I)V

    .line 198
    iget v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->g:I

    packed-switch v0, :pswitch_data_26

    .line 222
    :goto_8
    :pswitch_8
    return-void

    .line 200
    :pswitch_9
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->y()V

    goto :goto_8

    .line 203
    :pswitch_d
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->z()V

    goto :goto_8

    .line 206
    :pswitch_11
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->A()V

    goto :goto_8

    .line 209
    :pswitch_15
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C()V

    goto :goto_8

    .line 215
    :pswitch_19
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->B()V

    goto :goto_8

    .line 218
    :pswitch_1d
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D()V

    goto :goto_8

    .line 221
    :pswitch_21
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->E()V

    goto :goto_8

    .line 198
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_8
        :pswitch_19
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method
