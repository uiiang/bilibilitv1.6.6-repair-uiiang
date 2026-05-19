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


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveVideoPlayer"


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
    .line 82
    invoke-direct {p0, p1}, Lbl/wy;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->e(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ah:I

    .line 84
    new-instance v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$2;-><init>(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->al:Ljava/lang/Runnable;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lbl/wy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->e(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ah:I

    .line 99
    new-instance v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$3;-><init>(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->al:Ljava/lang/Runnable;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lbl/wy;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 44
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->e(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ah:I

    .line 69
    new-instance v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$1;-><init>(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->al:Ljava/lang/Runnable;

    .line 79
    return-void
.end method

.method private A()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x4

    .line 223
    const-string v0, "change2Playing"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 224
    const-string v2, "LiveVideoPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A: \u8fdb\u5165\u64ad\u653e\u72b6\u6001, F="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", ag="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ag:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->k()V

    .line 229
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ag:Z

    if-nez v0, :cond_4d

    .line 235
    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    move v0, v1

    .line 224
    goto :goto_19

    .line 232
    :cond_4d
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->start()V

    .line 233
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ag:Z

    .line 234
    const-string v0, "LiveVideoPlayer"

    const-string v1, "A: \u5f39\u5e55\u64ad\u653e\u5668\u5df2\u542f\u52a8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method private B()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 238
    const-string v0, "change2Pause"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 239
    const-string v2, "LiveVideoPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "B: \u8fdb\u5165\u6682\u505c\u72b6\u6001, F="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_49

    move v0, v1

    :goto_19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", ag="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ag:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 242
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F()V

    .line 243
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->j()V

    .line 244
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ag:Z

    if-eqz v0, :cond_4b

    .line 250
    :cond_48
    :goto_48
    return-void

    .line 239
    :cond_49
    const/4 v0, 0x0

    goto :goto_19

    .line 247
    :cond_4b
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->stop()V

    .line 248
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ag:Z

    .line 249
    const-string v0, "LiveVideoPlayer"

    const-string v1, "B: \u5f39\u5e55\u64ad\u653e\u5668\u5df2\u505c\u6b62"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method

.method private C()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 253
    const-string v0, "change2PlayingBuffering"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    return-void
.end method

.method private D()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 260
    const-string v0, "change2Complete"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 265
    const-string v1, "\u76f4\u64ad\u7ed3\u675f"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_28

    .line 267
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 269
    :cond_28
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 272
    const-string v0, "change2Error"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->y:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 277
    const-string v1, "\u5f53\u524d\u76f4\u64ad\u65e0\u6cd5\u64ad\u653e\uff01\uff01\uff01"

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_28

    .line 279
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 281
    :cond_28
    return-void
.end method

.method private F()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 287
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

    .line 293
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->q()V

    .line 294
    return-void

    .line 288
    :catch_24
    move-exception v0

    .line 289
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->z:Landroid/graphics/Bitmap;

    goto :goto_20
.end method

.method private H()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 403
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-nez v0, :cond_6

    .line 422
    :cond_5
    :goto_5
    return-void

    .line 406
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ah:I

    invoke-interface {v0, v1, v3, v2}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->initView(Landroid/view/ViewGroup;ZI)V

    .line 407
    new-instance v1, Lcom/bilibili/tv/player/danmaku/DanmakuParams;

    invoke-direct {v1}, Lcom/bilibili/tv/player/danmaku/DanmakuParams;-><init>()V

    .line 408
    invoke-virtual {v1, v3}, Lcom/bilibili/tv/player/danmaku/DanmakuParams;->setRealTimeDanmaku(Z)V

    .line 409
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->f(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/danmaku/DanmakuParams;->setDanmakuTextSizeScaleFactor(F)V

    .line 410
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->g(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/danmaku/DanmakuParams;->setDanmakuAlphaFactor(F)V

    .line 411
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v2

    .line 412
    const/4 v0, 0x0

    .line 413
    if-eqz v2, :cond_69

    invoke-virtual {v2}, Lbl/mg;->c()Lcom/bilibili/lib/account/model/AccountInfo;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 414
    iget-wide v2, v2, Lcom/bilibili/lib/account/model/AccountInfo;->mMid:J

    long-to-int v0, v2

    move v6, v0

    .line 416
    :goto_4a
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    const/4 v2, 0x0

    new-instance v3, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$b;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$b;-><init>(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V

    iget v4, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->af:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->start(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;Ltv/danmaku/videoplayer/core/danmaku/DanmakuAnimationTicker;J)V

    .line 417
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ak:Lbl/aei;

    iget v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->af:I

    invoke-virtual {v0, v1, v6}, Lbl/aei;->a(II)V

    .line 418
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    if-nez v0, :cond_5

    .line 421
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

    .line 209
    const-string v0, "change2Normal"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    return-void
.end method

.method private z()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    const-string v0, "change2Preparing"

    invoke-static {v0}, Lbl/ww;->a(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    return-void
.end method


# virtual methods
.method public G()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 370
    const-string v3, "LiveVideoPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "G: \u5f00\u59cb\u521d\u59cb\u5316\u5f39\u5e55\u64ad\u653e\u5668, ai="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    if-eqz v0, :cond_46

    move v0, v1

    :goto_15
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", F="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_48

    move v0, v1

    :goto_24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_52

    .line 372
    :cond_37
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_4a

    .line 373
    const-string v0, "LiveVideoPlayer"

    const-string v1, "G: F\u5df2\u5b58\u5728, \u8c03\u7528k()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->k()V

    .line 392
    :goto_45
    return-void

    :cond_46
    move v0, v2

    .line 370
    goto :goto_15

    :cond_48
    move v0, v2

    goto :goto_24

    .line 377
    :cond_4a
    const-string v0, "LiveVideoPlayer"

    const-string v1, "G: ai\u4e3anull\u6216F\u5df2\u5b58\u5728, \u8fd4\u56de"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 380
    :cond_52
    invoke-static {v2, v5, v5}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerCreator;->create(ILtv/danmaku/videoplayer/core/media/resource/PlayerConfig;Ltv/danmaku/ijk/media/player/MediaInfo;)Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    .line 381
    const-string v0, "LiveVideoPlayer"

    const-string v3, "G: DanmakuPlayer\u5df2\u521b\u5efa"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0, v2}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->alignDanmakuBottom(Z)V

    .line 383
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    iget v3, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ah:I

    invoke-interface {v0, v2, v3}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->setPortraitPlayingEnable(ZI)V

    .line 384
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->H()V

    .line 385
    const-string v0, "LiveVideoPlayer"

    const-string v3, "G: H()\u5b8c\u6210"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aj:Lbl/aeu;

    if-eqz v0, :cond_80

    .line 387
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aj:Lbl/aeu;

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-virtual {v0, v3}, Lbl/aeu;->a(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;)V

    .line 390
    :cond_80
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->danmakuClient:Lmybl/DanmakuClient;

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    sput-object v0, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    .line 391
    const-string v0, "LiveVideoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "G: danmakuClient.player\u5df2\u8bbe\u7f6e, player="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->danmakuClient:Lmybl/DanmakuClient;

    sget-object v4, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v4, :cond_a5

    :goto_99
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :cond_a5
    move v1, v2

    goto :goto_99
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0, p1}, Lbl/wy;->a(Landroid/content/Context;)V

    .line 115
    const v0, 0x7f08013a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->B:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    .line 117
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C:Landroid/view/ViewGroup;

    const v1, 0x7f0801c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->loadingCover:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 118
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D:Landroid/view/ViewGroup;

    .line 119
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    .line 120
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ah:I

    .line 121
    new-instance v0, Lbl/aeu;

    invoke-direct {v0}, Lbl/aeu;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aj:Lbl/aeu;

    .line 122
    new-instance v0, Lbl/aei;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aj:Lbl/aeu;

    new-instance v2, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$a;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer$a;-><init>(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V

    invoke-direct {v0, v1, v2}, Lbl/aei;-><init>(Lbl/aeu;Lbl/ael;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ak:Lbl/aei;

    .line 123
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_1f

    .line 336
    if-nez p1, :cond_20

    .line 337
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbl/abd;->c(Landroid/content/Context;Z)V

    .line 338
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->hide()V

    .line 343
    :goto_17
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    .line 345
    :cond_1f
    return-void

    .line 340
    :cond_20
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbl/abd;->c(Landroid/content/Context;Z)V

    .line 341
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->show()V

    goto :goto_17
.end method

.method public varargs a(Ljava/lang/String;ZLjava/io/File;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    aget-object v0, p4, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->af:I

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Lbl/wy;->a(Ljava/lang/String;ZLjava/io/File;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 144
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_11

    .line 155
    :cond_10
    :goto_10
    return-void

    .line 148
    :cond_11
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setStateAndUi(I)V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aa:J

    .line 151
    :try_start_1b
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->pause()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_10

    .line 152
    :catch_1f
    move-exception v0

    .line 153
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public f()V
    .locals 2

    .prologue
    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aa:J

    .line 161
    iget v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_19

    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 174
    :cond_19
    :goto_19
    return-void

    .line 164
    :cond_1a
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setStateAndUi(I)V

    .line 165
    instance-of v1, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_2b

    .line 167
    :try_start_22
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->start()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_19

    .line 168
    :catch_26
    move-exception v0

    .line 169
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 171
    :cond_2b
    instance-of v0, v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_19

    .line 172
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->m()V

    goto :goto_19
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0a0043

    return v0
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 298
    const-string v0, "LiveVideoPlayer"

    const-string v2, "i: \u91ca\u653e\u8d44\u6e90\u5f00\u59cb"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-super {p0}, Lbl/wy;->i()V

    .line 300
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 301
    iput-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    .line 303
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_39

    .line 304
    const-string v0, "LiveVideoPlayer"

    const-string v2, "i: \u91ca\u653e\u5f39\u5e55\u64ad\u653e\u5668F"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->release()V

    .line 306
    iput-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    .line 308
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->danmakuClient:Lmybl/DanmakuClient;

    if-eqz v0, :cond_39

    .line 309
    const-string v0, "LiveVideoPlayer"

    const-string v2, "i: \u91ca\u653edanmakuClient"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->danmakuClient:Lmybl/DanmakuClient;

    invoke-virtual {v0}, Lmybl/DanmakuClient;->release()V

    .line 311
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->danmakuClient:Lmybl/DanmakuClient;

    sput-object v1, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    .line 312
    iput-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->danmakuClient:Lmybl/DanmakuClient;

    .line 315
    :cond_39
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aj:Lbl/aeu;

    if-eqz v0, :cond_47

    .line 316
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aj:Lbl/aeu;

    move-object v0, v1

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-virtual {v2, v0}, Lbl/aeu;->a(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;)V

    .line 317
    iput-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->aj:Lbl/aeu;

    .line 319
    :cond_47
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ak:Lbl/aei;

    if-eqz v0, :cond_52

    .line 320
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ak:Lbl/aei;

    invoke-virtual {v0}, Lbl/aei;->a()V

    .line 321
    iput-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ak:Lbl/aei;

    .line 323
    :cond_52
    const-string v0, "LiveVideoPlayer"

    const-string v1, "i: \u91ca\u653e\u8d44\u6e90\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_9

    .line 349
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->pause()V

    .line 351
    :cond_9
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    .line 354
    const-string v1, "LiveVideoPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "k: \u542f\u52a8\u5f39\u5e55\u64ad\u653e\u5668, F="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_38

    .line 356
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 357
    const-string v0, "LiveVideoPlayer"

    const-string v1, "k: \u5f39\u5e55\u64ad\u653e\u5668\u5df2\u6682\u505c, \u8c03\u7528resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->resume()V

    .line 366
    :cond_35
    :goto_35
    return-void

    .line 354
    :cond_36
    const/4 v0, 0x0

    goto :goto_12

    .line 363
    :cond_38
    const-string v0, "LiveVideoPlayer"

    const-string v1, "k: F\u4e3anull, \u901a\u8fc7post\u5ef6\u8fdf\u8c03\u7528G()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->al:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 365
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->ai:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->al:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_35
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_c

    .line 396
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->release()V

    .line 397
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->H()V

    .line 399
    :cond_c
    return-void
.end method

.method public setCallBack(Lbl/wt;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->E:Lbl/wt;

    .line 63
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setVideoPlayCallBack(Lbl/wt;)V

    .line 64
    return-void
.end method

.method public setDanmakuAlpha(F)V
    .locals 5

    .prologue
    .line 331
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    sget-object v1, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->TRANSPARENCY:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->setDanmakuOption(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;[Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method public setDanmakuSize(F)V
    .locals 5

    .prologue
    .line 327
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->F:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    sget-object v1, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->TEXTSIZE_SCALE:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->setDanmakuOption(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;[Ljava/lang/Object;)V

    .line 328
    return-void
.end method

.method public setLoadingCover(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->loadingCover:Lcom/bilibili/tv/widget/ScalableImageView;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 138
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->loadingCover:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v0, p1, v1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 140
    :cond_15
    return-void
.end method

.method public setStateAndUi(I)V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0, p1}, Lbl/wy;->setStateAndUi(I)V

    .line 180
    iget v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->g:I

    packed-switch v0, :pswitch_data_26

    .line 204
    :goto_8
    :pswitch_8
    return-void

    .line 182
    :pswitch_9
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->y()V

    goto :goto_8

    .line 185
    :pswitch_d
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->z()V

    goto :goto_8

    .line 188
    :pswitch_11
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->A()V

    goto :goto_8

    .line 191
    :pswitch_15
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->C()V

    goto :goto_8

    .line 197
    :pswitch_19
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->B()V

    goto :goto_8

    .line 200
    :pswitch_1d
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->D()V

    goto :goto_8

    .line 203
    :pswitch_21
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->E()V

    goto :goto_8

    .line 180
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
    .line 133
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method
