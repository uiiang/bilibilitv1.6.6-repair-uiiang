.class public Lbl/xk;
.super Lbl/xh;
.source "xk.java"

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
.field private static final g:Ljava/lang/String; = "xk"


# instance fields
.field protected c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

.field private d:Z

.field private e:I

.field private f:Lbl/yo;

.field private h:Landroid/view/ViewGroup;

.field private i:Z

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lbl/xk;->e:I

    .line 36
    new-instance v0, Lbl/xk$1;

    invoke-direct {v0, p0}, Lbl/xk$1;-><init>(Lbl/xk;)V

    iput-object v0, p0, Lbl/xk;->j:Ljava/lang/Runnable;

    return-void
.end method

.method private T()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lbl/xk;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    .line 68
    :goto_6
    return-void

    .line 67
    :cond_7
    invoke-virtual {p0}, Lbl/xk;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lbl/xk;->e:I

    goto :goto_6
.end method

.method private U()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 308
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lbl/xk;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v0, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-nez v0, :cond_10

    .line 323
    :cond_f
    :goto_f
    return-void

    .line 311
    :cond_10
    iget-object v0, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuDFMHardwareAcc()Z

    move-result v0

    .line 312
    iget-object v3, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v3, :cond_23

    iget-object v3, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->isSurfaceRenderer()Z

    move-result v3

    if-nez v3, :cond_23

    move v0, v1

    .line 315
    :cond_23
    iget-object v3, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    iget-object v4, p0, Lbl/xk;->h:Landroid/view/ViewGroup;

    iget v5, p0, Lbl/xk;->e:I

    invoke-interface {v3, v4, v0, v5}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->attachDanmakuView(Landroid/view/ViewGroup;ZI)V

    .line 316
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    const/4 v3, 0x0

    iget v4, p0, Lbl/xk;->e:I

    invoke-interface {v0, v3, v4}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->onScreenOrientationChanged(ZI)V

    .line 317
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    iget-object v3, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v3}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v3

    iget-wide v4, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-interface {v0, v4, v5}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->prepareAndStartDanmakuPlayer(J)V

    .line 318
    iget-object v0, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->isDanmakuHideByDefault()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 319
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->hideDanmaku()V

    .line 321
    :cond_4e
    iput-boolean v1, p0, Lbl/xk;->i:Z

    .line 322
    invoke-virtual {p0}, Lbl/xk;->initSubtitle()V

    goto :goto_f
.end method

.method static synthetic access$000(Lbl/xk;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lbl/xk;->getLocalEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private c(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 256
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-nez v0, :cond_6

    .line 266
    :goto_5
    return-void

    .line 259
    :cond_6
    if-eqz p1, :cond_19

    .line 260
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->showDanmaku()V

    .line 261
    sget-object v0, Lbl/azo;->a:Lbl/azo$a;

    invoke-virtual {v0}, Lbl/azo$a;->a()Lbl/azo;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v2, v1}, Lbl/azo;->a(ILjava/lang/String;)V

    goto :goto_5

    .line 263
    :cond_19
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->hideDanmaku()V

    .line 264
    sget-object v0, Lbl/azo;->a:Lbl/azo$a;

    invoke-virtual {v0}, Lbl/azo$a;->a()Lbl/azo;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v2, v1}, Lbl/azo;->a(ILjava/lang/String;)V

    goto :goto_5
.end method

.method private getEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    .line 172
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 173
    const/4 v1, 0x0

    .line 175
    iget-object v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 176
    invoke-virtual {p0}, Lbl/xk;->p()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip_list_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbl/abd;->getSkipTime(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v1

    .line 178
    :cond_2f
    if-eqz v1, :cond_3d

    aget-wide v2, v1, v4

    cmp-long v2, v2, v6

    if-nez v2, :cond_4b

    aget-wide v2, v1, v5

    cmp-long v2, v2, v6

    if-nez v2, :cond_4b

    .line 179
    :cond_3d
    invoke-virtual {p0}, Lbl/xk;->p()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSkipKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbl/abd;->getSkipTime(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v1

    .line 182
    :cond_4b
    if-eqz v1, :cond_59

    aget-wide v2, v1, v4

    cmp-long v2, v2, v6

    if-nez v2, :cond_5c

    aget-wide v2, v1, v5

    cmp-long v2, v2, v6

    if-nez v2, :cond_5c

    .line 183
    :cond_59
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    .line 204
    :cond_5b
    :goto_5b
    return-object v0

    .line 187
    :cond_5c
    const/4 v2, 0x0

    :try_start_5d
    aget-wide v2, v1, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_80

    .line 188
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 189
    const-string v3, "type"

    const-string v4, "\u7247\u5934"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v3, "start"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    const-string v3, "end"

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 194
    :cond_80
    const/4 v2, 0x1

    aget-wide v2, v1, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_5b

    iget v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    if-lez v2, :cond_5b

    .line 195
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 196
    iget v3, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 197
    const-string v3, "type"

    const-string v6, "\u7247\u5c3e"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v3, "start"

    const/4 v6, 0x1

    aget-wide v6, v1, v6

    sub-long v6, v4, v6

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 199
    const-string v1, "end"

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 200
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_af} :catch_b0

    goto :goto_5b

    .line 202
    :catch_b0
    move-exception v1

    goto :goto_5b
.end method

.method private getLocalEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 136
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 139
    iget-object v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 140
    invoke-virtual {p0}, Lbl/xk;->p()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip_list_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbl/abd;->getSkipTime(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v2

    .line 142
    :goto_2f
    if-eqz v2, :cond_3d

    aget-wide v4, v2, v8

    cmp-long v3, v4, v6

    if-nez v3, :cond_4b

    aget-wide v4, v2, v9

    cmp-long v3, v4, v6

    if-nez v3, :cond_4b

    .line 143
    :cond_3d
    invoke-virtual {p0}, Lbl/xk;->p()Landroid/content/Context;

    move-result-object v2

    iget-wide v4, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v4, v5}, Lbl/abd;->getVideoSkipKey(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbl/abd;->getSkipTime(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v2

    .line 146
    :cond_4b
    if-eqz v2, :cond_59

    aget-wide v4, v2, v8

    cmp-long v3, v4, v6

    if-nez v3, :cond_5b

    aget-wide v4, v2, v9

    cmp-long v3, v4, v6

    if-nez v3, :cond_5b

    :cond_59
    move-object v0, v1

    .line 168
    :cond_5a
    :goto_5a
    return-object v0

    .line 151
    :cond_5b
    const/4 v1, 0x0

    :try_start_5c
    aget-wide v4, v2, v1

    cmp-long v1, v4, v6

    if-lez v1, :cond_7f

    .line 152
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 153
    const-string v3, "type"

    const-string v4, "\u7247\u5934"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v3, "start"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    const-string v3, "end"

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 156
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 158
    :cond_7f
    const/4 v1, 0x1

    aget-wide v4, v2, v1

    cmp-long v1, v4, v6

    if-lez v1, :cond_5a

    iget v1, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    if-lez v1, :cond_5a

    .line 159
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 160
    iget v3, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 161
    const-string v3, "type"

    const-string v6, "\u7247\u5c3e"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v3, "start"

    const/4 v6, 0x1

    aget-wide v6, v2, v6

    sub-long v6, v4, v6

    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 163
    const-string v2, "end"

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 164
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_ae} :catch_af

    goto :goto_5a

    .line 166
    :catch_af
    move-exception v1

    goto :goto_5a

    :cond_b1
    move-object v2, v1

    goto/16 :goto_2f
.end method


# virtual methods
.method public E()V
    .locals 0

    .prologue
    .line 347
    invoke-virtual {p0}, Lbl/xk;->P()V

    .line 348
    invoke-super {p0}, Lbl/xh;->E()V

    .line 349
    return-void
.end method

.method public G()V
    .locals 0

    .prologue
    .line 341
    invoke-virtual {p0}, Lbl/xk;->Q()V

    .line 342
    invoke-super {p0}, Lbl/xh;->G()V

    .line 343
    return-void
.end method

.method public P()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_9

    .line 270
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->pauseDanmakuPlayer()V

    .line 272
    :cond_9
    return-void
.end method

.method public Q()V
    .locals 2

    .prologue
    .line 275
    iget-boolean v0, p0, Lbl/xk;->i:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_1f

    .line 276
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->isDanmakuPaused()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->isVideoViewReleased()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 283
    :cond_18
    :goto_18
    return-void

    .line 279
    :cond_19
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->resumeDanmakuPlayer()V

    goto :goto_18

    .line 282
    :cond_1f
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lbl/xk;->a(J)V

    goto :goto_18
.end method

.method protected R()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_c

    .line 301
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->releaseDanmakuPlayer()V

    .line 302
    invoke-direct {p0}, Lbl/xk;->U()V

    .line 304
    :cond_c
    return-void
.end method

.method protected S()Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lbl/xk;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_b

    .line 354
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getDanmakuInfo()Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerInfo;

    move-result-object v0

    .line 356
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public V()V
    .locals 3

    .prologue
    .line 327
    invoke-virtual {p0}, Lbl/xk;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    iput-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    .line 328
    invoke-virtual {p0}, Lbl/xk;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbl/xk;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-nez v0, :cond_15

    .line 337
    :cond_14
    :goto_14
    return-void

    .line 331
    :cond_15
    iget-boolean v0, p0, Lbl/xk;->i:Z

    if-eqz v0, :cond_1d

    .line 332
    invoke-virtual {p0}, Lbl/xk;->Q()V

    goto :goto_14

    .line 334
    :cond_1d
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    const/4 v1, 0x0

    iget v2, p0, Lbl/xk;->e:I

    invoke-interface {v0, v1, v2}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->onScreenOrientationChanged(ZI)V

    .line 335
    invoke-direct {p0}, Lbl/xk;->U()V

    goto :goto_14
.end method

.method public a(Landroid/os/Message;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 367
    iget v0, p1, Landroid/os/Message;->what:I

    .line 368
    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-ne v0, v1, :cond_13

    .line 369
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lbl/xk;->c(Z)V

    .line 371
    :cond_13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Lbl/xk;->a(Landroid/os/Message;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final a(J)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lbl/xk;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xk;->a(Ljava/lang/Runnable;)V

    .line 287
    iget-object v0, p0, Lbl/xk;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lbl/xk;->a(Ljava/lang/Runnable;J)V

    .line 288
    return-void
.end method

.method public a(Landroid/app/Activity;Lbl/xf;)V
    .locals 1

    .prologue
    .line 361
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/app/Activity;Lbl/xf;)V

    .line 362
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    invoke-virtual {p2, v0, p0}, Lbl/xf;->a([ILbl/bbb;)V

    .line 363
    return-void

    .line 362
    nop

    :array_e
    .array-data 4
        0x3
        0x5
    .end array-data
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/high16 v1, 0x1000000

    .line 55
    new-instance v0, Lbl/aaq;

    invoke-direct {v0, p0}, Lbl/aaq;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbl/xk;->b:Lbl/aaq;

    .line 56
    invoke-virtual {p0}, Lbl/xk;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 57
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lbl/xk;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xk;->h:Landroid/view/ViewGroup;

    .line 58
    invoke-direct {p0}, Lbl/xk;->T()V

    .line 59
    new-instance v0, Lbl/yo;

    invoke-direct {v0}, Lbl/yo;-><init>()V

    iput-object v0, p0, Lbl/xk;->f:Lbl/yo;

    .line 60
    invoke-super {p0, p1}, Lbl/xh;->a(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public a(Lcom/bilibili/tv/api/danmaku/DanmakuSendData;)V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 418
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lbl/xk;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    if-nez v0, :cond_c

    .line 424
    :cond_b
    :goto_b
    return-void

    .line 421
    :cond_c
    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v6

    .line 422
    iget-object v1, p0, Lbl/xk;->f:Lbl/yo;

    invoke-virtual {p0}, Lbl/xk;->q()Lbl/aaq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbl/yo;->a(Landroid/os/Handler;)V

    .line 423
    iget-object v1, p0, Lbl/xk;->f:Lbl/yo;

    invoke-virtual {p0}, Lbl/xk;->o()Landroid/app/Activity;

    move-result-object v2

    iget-wide v4, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    iget v6, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    invoke-virtual {p0}, Lbl/xk;->x()I

    move-result v7

    invoke-static {v0}, Lbl/aah;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Lbl/aah;

    move-result-object v0

    const-string v8, "bundle_key_player_params_jump_from"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lbl/aah;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v9, p1

    move v11, v10

    move-object v12, p0

    invoke-virtual/range {v1 .. v12}, Lbl/yo;->a(Landroid/content/Context;Ljava/lang/String;JIIILcom/bilibili/tv/api/danmaku/DanmakuSendData;ZILbl/xh;)V

    goto :goto_b
.end method

.method public a(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 408
    new-instance v0, Lcom/bilibili/tv/api/danmaku/DanmakuSendData;

    invoke-direct {v0}, Lcom/bilibili/tv/api/danmaku/DanmakuSendData;-><init>()V

    .line 409
    iput-object p1, v0, Lcom/bilibili/tv/api/danmaku/DanmakuSendData;->text:Ljava/lang/CharSequence;

    .line 410
    iput p2, v0, Lcom/bilibili/tv/api/danmaku/DanmakuSendData;->textSize:I

    .line 411
    iput p3, v0, Lcom/bilibili/tv/api/danmaku/DanmakuSendData;->textColor:I

    .line 412
    iput p4, v0, Lcom/bilibili/tv/api/danmaku/DanmakuSendData;->type:I

    .line 413
    invoke-virtual {p0, v0}, Lbl/xk;->a(Lcom/bilibili/tv/api/danmaku/DanmakuSendData;)V

    .line 414
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 376
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_f

    .line 377
    invoke-virtual {p0}, Lbl/xk;->R()V

    .line 404
    :cond_b
    :goto_b
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 405
    return-void

    .line 378
    :cond_f
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_SIZE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_27

    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_27

    .line 379
    iget-object v1, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    sget-object v3, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->TEXTSIZE_SCALE:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    new-array v2, v2, [Ljava/lang/Float;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Float;

    aput-object v0, v2, v4

    invoke-interface {v1, v3, v2}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setDanmakuOption(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;[Ljava/lang/Object;)V

    goto :goto_b

    .line 380
    :cond_27
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_ALPHA:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_3f

    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_3f

    .line 381
    iget-object v1, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    sget-object v3, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;->TRANSPARENCY:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;

    new-array v2, v2, [Ljava/lang/Float;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Float;

    aput-object v0, v2, v4

    invoke-interface {v1, v3, v2}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setDanmakuOption(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer$DanmakuOptionName;[Ljava/lang/Object;)V

    goto :goto_b

    .line 382
    :cond_3f
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->POST_DANMAKU:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_75

    .line 383
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    .line 384
    const/16 v4, 0x19

    .line 385
    const v3, 0xffffff

    .line 387
    array-length v1, p2

    const/4 v5, 0x4

    if-ne v1, v5, :cond_73

    .line 389
    const/4 v1, 0x1

    :try_start_51
    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 390
    const/4 v1, 0x2

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 391
    const/4 v1, 0x3

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_6a} :catch_6f

    move-result v1

    .line 396
    :goto_6b
    invoke-virtual {p0, v0, v4, v3, v1}, Lbl/xk;->a(Ljava/lang/CharSequence;III)V

    goto :goto_b

    .line 392
    :catch_6f
    move-exception v1

    .line 393
    invoke-static {v1}, Lbl/att;->a(Ljava/lang/Throwable;)V

    :cond_73
    move v1, v2

    goto :goto_6b

    .line 397
    :cond_75
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SEEK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_97

    array-length v0, p2

    if-lt v0, v1, :cond_97

    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_97

    .line 398
    iget-object v1, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->seekDanmaku(JJ)V

    goto/16 :goto_b

    .line 399
    :cond_97
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_SPEED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_ae

    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_ae

    .line 400
    iget-object v1, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->setSpeed(F)V

    goto/16 :goto_b

    .line 401
    :cond_ae
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SCREEN_ADJUST:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_b

    .line 402
    iget-object v1, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->adjustScreen(I)V

    goto/16 :goto_b
.end method

.method public g()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lbl/xk;->b:Lbl/aaq;

    if-nez v0, :cond_b

    .line 211
    new-instance v0, Lbl/aaq;

    invoke-direct {v0, p0}, Lbl/aaq;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbl/xk;->b:Lbl/aaq;

    .line 213
    :cond_b
    invoke-super {p0}, Lbl/xh;->g()V

    .line 214
    invoke-virtual {p0}, Lbl/xk;->K()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 215
    invoke-virtual {p0}, Lbl/xk;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    iput-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    .line 216
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lbl/xk;->d:Z

    if-eqz v0, :cond_2b

    .line 217
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->startDanmakuPlayer()V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xk;->d:Z

    .line 227
    :cond_2a
    :goto_2a
    return-void

    .line 220
    :cond_2b
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->isFromService()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 223
    invoke-virtual {p0}, Lbl/xk;->Q()V

    goto :goto_2a
.end method

.method public h()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Lbl/xh;->h()V

    .line 232
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lbl/xk;->d:Z

    if-eqz v0, :cond_c

    .line 237
    :cond_b
    :goto_b
    return-void

    .line 235
    :cond_c
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->stopDanmakuPlayer()V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xk;->d:Z

    goto :goto_b
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xea61

    if-ne v0, v1, :cond_3a

    invoke-virtual {p0}, Lbl/xk;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 243
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    .line 244
    sget-object v2, Lbl/azo;->a:Lbl/azo$a;

    invoke-virtual {v2}, Lbl/azo$a;->a()Lbl/azo;

    move-result-object v2

    invoke-virtual {v2}, Lbl/azo;->j()Lbl/pu;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 245
    sget-object v2, Lbl/azo;->a:Lbl/azo$a;

    invoke-virtual {v2}, Lbl/azo$a;->a()Lbl/azo;

    move-result-object v2

    invoke-virtual {v2}, Lbl/azo;->j()Lbl/pu;

    move-result-object v2

    iget-wide v2, v2, Lbl/pu;->b:J

    invoke-virtual {v0, v2, v3}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setPublisherId(J)V

    .line 249
    :goto_2c
    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->optDanmakuDocument()Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    move-result-object v1

    invoke-interface {v1, v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->appendDanmaku(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V

    .line 250
    iget-object v1, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    invoke-interface {v1, v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V

    .line 252
    :cond_3a
    invoke-super {p0, p1}, Lbl/xh;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 247
    :cond_3f
    invoke-virtual {p0}, Lbl/xk;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v2

    invoke-virtual {v2}, Lbl/mg;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setPublisherId(J)V

    goto :goto_2c
.end method

.method public initSubtitle()V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lbl/xk;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 73
    if-nez v0, :cond_7

    .line 133
    :cond_6
    :goto_6
    return-void

    .line 74
    :cond_7
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v3

    .line 75
    iget-object v0, p0, Lbl/xk;->c:Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    check-cast v0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;

    .line 76
    if-eqz v0, :cond_6

    iget-object v1, v0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    if-eqz v1, :cond_6

    .line 77
    iget-object v0, v0, Ltv/danmaku/videoplayer/core/context/BiliPlayerContext;->mDanmakuPlayerContext:Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;

    iget-object v0, v0, Ltv/danmaku/videoplayer/core/context/DanmakuPlayerContext;->mDanmakuPlayer:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    .line 80
    invoke-virtual {p0}, Lbl/xk;->next()Lbl/xh;

    move-result-object v1

    invoke-virtual {v1}, Lbl/xh;->next()Lbl/xh;

    move-result-object v1

    invoke-virtual {v1}, Lbl/xh;->next()Lbl/xh;

    move-result-object v1

    invoke-virtual {v1}, Lbl/xh;->next()Lbl/xh;

    move-result-object v1

    invoke-virtual {v1}, Lbl/xh;->next()Lbl/xh;

    move-result-object v1

    check-cast v1, Lbl/xj;

    .line 81
    if-eqz v1, :cond_4a

    .line 82
    invoke-direct {p0, v3}, Lbl/xk;->getLocalEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;

    move-result-object v2

    .line 83
    iput-object v2, v1, Lbl/xj;->skips:Lorg/json/JSONArray;

    .line 84
    invoke-virtual {v1}, Lbl/xj;->resetSkipFlags()V

    .line 85
    if-eqz v0, :cond_4a

    iget-object v2, v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v2, :cond_4a

    .line 86
    iget-object v2, v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    check-cast v2, Lbl/bgy;

    iput-object v1, v2, Lbl/bgy;->_xj:Lbl/xj;

    .line 90
    :cond_4a
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lbl/xk$2;

    invoke-direct {v2, p0, v3, p0, v0}, Lbl/xk$2;-><init>(Lbl/xk;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Lbl/xk;Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_6
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lbl/xk;->b:Lbl/aaq;

    if-eqz v0, :cond_9

    .line 294
    iget-object v0, p0, Lbl/xk;->b:Lbl/aaq;

    invoke-virtual {v0}, Lbl/aaq;->a()V

    .line 296
    :cond_9
    invoke-super {p0}, Lbl/xh;->r()V

    .line 297
    return-void
.end method
