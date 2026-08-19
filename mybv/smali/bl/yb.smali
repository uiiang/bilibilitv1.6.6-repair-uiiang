.class public Lbl/yb;
.super Lbl/xh;
.source "yb.java"


# static fields
.field private static final c:Ljava/lang/String; = "yb"


# instance fields
.field private d:J

.field private e:Lbl/zm;

.field private f:Lbl/zl;

.field private g:Z

.field private h:Lbl/zo;

.field private hasFirstPlayed:Z

.field private i:Z

.field private j:Z

.field private pendingResolveParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl/yb;->d:J

    .line 28
    new-instance v0, Lbl/zm;

    invoke-direct {v0}, Lbl/zm;-><init>()V

    iput-object v0, p0, Lbl/yb;->e:Lbl/zm;

    .line 29
    new-instance v0, Lbl/zl;

    invoke-direct {v0}, Lbl/zl;-><init>()V

    iput-object v0, p0, Lbl/yb;->f:Lbl/zl;

    .line 30
    new-instance v0, Lbl/zo;

    invoke-direct {v0}, Lbl/zo;-><init>()V

    iput-object v0, p0, Lbl/yb;->h:Lbl/zo;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/yb;->hasFirstPlayed:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/yb;->pendingResolveParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    return-void
.end method

.method private P()V
    .locals 20

    .prologue
    .line 304
    invoke-virtual/range {p0 .. p0}, Lbl/yb;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v3

    .line 305
    if-nez v3, :cond_56

    const/4 v2, 0x0

    move-object v8, v2

    .line 306
    :goto_8
    if-eqz v8, :cond_55

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lbl/yb;->e:Lbl/zm;

    invoke-virtual {v2}, Lbl/zm;->a()V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lbl/yb;->e:Lbl/zm;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lbl/zm;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p0 .. p0}, Lbl/yb;->c()Lbl/yh;

    move-result-object v2

    invoke-static {v3, v8, v2}, Lbl/zn;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Lbl/yh;)[I

    move-result-object v10

    .line 310
    invoke-virtual {v8}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isBangumi()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 312
    :try_start_28
    iget-object v2, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2d} :catch_5e

    move-result-wide v2

    .line 317
    :goto_2e
    iget-wide v13, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    move-wide v11, v2

    .line 323
    :goto_31
    :try_start_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lbl/yb;->f:Lbl/zl;

    invoke-virtual/range {p0 .. p0}, Lbl/yb;->p()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    iget-wide v6, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget-wide v0, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v9, v16, v18

    if-eqz v9, :cond_67

    const/4 v8, 0x1

    :goto_48
    const/4 v9, 0x0

    aget v9, v10, v9

    const/4 v15, 0x1

    aget v10, v10, v15

    const-string v15, "1"

    const/16 v16, 0x0

    invoke-virtual/range {v2 .. v16}, Lbl/zl;->a(Landroid/content/Context;JJIIIJJLjava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_55} :catch_6a

    .line 328
    :cond_55
    :goto_55
    return-void

    .line 305
    :cond_56
    iget-object v2, v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    move-object v8, v2

    goto :goto_8

    .line 313
    :catch_5e
    move-exception v2

    .line 314
    const-wide/16 v2, 0x0

    goto :goto_2e

    .line 319
    :cond_62
    const-wide/16 v11, 0x0

    .line 320
    const-wide/16 v13, 0x0

    goto :goto_31

    .line 323
    :cond_67
    :try_start_67
    iget v8, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_69} :catch_6a

    goto :goto_48

    .line 324
    :catch_6a
    move-exception v2

    .line 325
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55
.end method

.method private Q()V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/yb;->g:Z

    .line 332
    iget-boolean v0, p0, Lbl/yb;->i:Z

    if-eqz v0, :cond_12

    .line 333
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->g()V

    .line 334
    invoke-direct {p0}, Lbl/yb;->S()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/yb;->i:Z

    .line 337
    :cond_12
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->i()V

    .line 338
    return-void
.end method

.method private R()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/yb;->g:Z

    .line 342
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->h()V

    .line 343
    return-void
.end method

.method private S()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/yb;->c(Z)V

    .line 347
    return-void
.end method

.method private T()V
    .locals 4

    .prologue
    .line 362
    invoke-virtual {p0}, Lbl/yb;->y()Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_2f

    invoke-direct {p0, v0}, Lbl/yb;->b(Lcom/bilibili/lib/media/resource/PlayerCodecConfig;)I

    move-result v0

    .line 364
    :goto_a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 365
    const-string v2, "playtype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lbl/abl;->a:Lbl/abl;

    const-string v2, "ott-player.ott-play.ott-player.0.player"

    invoke-virtual {v0, v2, v1}, Lbl/abl;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 367
    return-void

    .line 363
    :cond_2f
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private b(Lcom/bilibili/lib/media/resource/PlayerCodecConfig;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 370
    iget-object v1, p1, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    .line 371
    sget-object v2, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->NONE:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    if-ne v2, v1, :cond_8

    .line 380
    :cond_7
    :goto_7
    return v0

    .line 374
    :cond_8
    sget-object v2, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->ANDROID_PLAYER:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    if-ne v2, v1, :cond_e

    .line 375
    const/4 v0, 0x4

    goto :goto_7

    .line 377
    :cond_e
    sget-object v2, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->IJK_PLAYER:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    if-ne v2, v1, :cond_7

    .line 378
    iget-boolean v0, p1, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->c:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x6

    goto :goto_7

    :cond_18
    const/4 v0, 0x5

    goto :goto_7
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lbl/yb;->I()I

    move-result v0

    invoke-virtual {p0}, Lbl/yb;->x()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lbl/yb;->c(ZII)V

    .line 351
    return-void
.end method

.method private c(ZI)V
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lbl/yb;->I()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lbl/yb;->c(ZII)V

    .line 355
    return-void
.end method

.method private c(ZII)V
    .locals 8

    .prologue
    .line 358
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    iget-object v2, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {p0}, Lbl/yb;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v3

    invoke-virtual {p0}, Lbl/yb;->c()Lbl/yh;

    move-result-object v4

    iget-boolean v7, p0, Lbl/yb;->g:Z

    move v0, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Lbl/zn;->a(ZLandroid/content/Context;Lbl/zo;Lcom/bilibili/tv/player/basic/context/PlayerParams;Lbl/yh;IIZ)V

    .line 359
    return-void
.end method

.method private reportCompleted()V
    .locals 16

    .prologue
    .line 267
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lbl/yb;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 268
    if-nez v0, :cond_7

    .line 298
    :cond_6
    :goto_6
    return-void

    .line 271
    :cond_7
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v15

    .line 272
    if-eqz v15, :cond_6

    iget-boolean v0, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    if-nez v0, :cond_6

    .line 275
    const-wide/16 v6, 0x0

    .line 276
    const-wide/16 v8, 0x0

    .line 277
    invoke-virtual {v15}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isBangumi()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_71

    move-result v0

    if-eqz v0, :cond_25

    .line 279
    :try_start_1d
    iget-object v0, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_22} :catch_90
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_71

    move-result-wide v6

    .line 283
    :goto_23
    :try_start_23
    iget-wide v8, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 286
    :cond_25
    iget-object v0, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 287
    const-string v0, "movie"

    iget-object v1, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    const/4 v0, 0x2

    :goto_38
    move v10, v0

    .line 293
    :goto_39
    const-string v0, "yb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCompletion] report history completed(progress=-1), avid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual/range {p0 .. p0}, Lbl/yb;->p()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    iget-wide v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x1

    iget-boolean v15, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    invoke-static/range {v1 .. v15}, Lbl/zq;->a(Landroid/content/Context;JJJJIJJZ)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_70} :catch_71

    goto :goto_6

    .line 295
    :catch_71
    move-exception v0

    .line 296
    const-string v1, "yb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCompletion] report completed failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 280
    :catch_90
    move-exception v0

    .line 281
    const-wide/16 v6, 0x0

    goto :goto_23

    .line 287
    :cond_94
    const/4 v0, 0x3

    goto :goto_38

    .line 288
    :cond_96
    :try_start_96
    const-string v0, "cheese"

    iget-object v1, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9d} :catch_71

    move-result v0

    if-eqz v0, :cond_a3

    .line 289
    const/16 v10, 0xa

    goto :goto_39

    .line 291
    :cond_a3
    const/4 v10, 0x1

    goto :goto_39
.end method


# virtual methods
.method public E()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lbl/xh;->E()V

    .line 141
    const/4 v0, 0x1

    invoke-static {v0}, Lbl/aai;->b(Z)V

    .line 142
    invoke-direct {p0}, Lbl/yb;->R()V

    .line 143
    return-void
.end method

.method public G()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lbl/xh;->G()V

    .line 134
    const/4 v0, 0x0

    invoke-static {v0}, Lbl/aai;->b(Z)V

    .line 135
    invoke-direct {p0}, Lbl/yb;->Q()V

    .line 136
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0, p1}, Lbl/xh;->a(Landroid/os/Bundle;)V

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbl/yb;->d:J

    .line 149
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lbl/yb$1;->$SwitchMap$com$bilibili$tv$player$interfaces$IEventCenter$EventType:[I

    invoke-virtual {p1}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e6

    .line 127
    :cond_10
    :goto_10
    return-void

    .line 46
    :pswitch_11
    if-eqz p2, :cond_10

    array-length v0, p2

    if-lt v0, v2, :cond_10

    .line 49
    aget-object v0, p2, v3

    check-cast v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 50
    iget-object v1, p0, Lbl/yb;->e:Lbl/zm;

    invoke-virtual {v1}, Lbl/zm;->a()V

    .line 51
    iget-object v1, p0, Lbl/yb;->e:Lbl/zm;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lbl/zm;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 54
    iput-object v0, p0, Lbl/yb;->pendingResolveParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 56
    iput-boolean v3, p0, Lbl/yb;->hasFirstPlayed:Z

    .line 57
    const-string v0, "yb"

    const-string v1, "[RESOLVE_SUCCESS] delay report until first play, reset hasFirstPlayed=false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RESOLVE_SUCCESS] Trying to schedule auto refresh after MediaResource loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_38
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RESOLVE_SUCCESS] Step 1: Checking if activity is PlayerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lbl/yb;->o()Landroid/app/Activity;

    move-result-object v0

    .line 64
    const-string v2, "PlayerUrlRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RESOLVE_SUCCESS] Step 1: activity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_107

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_5a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    instance-of v1, v0, Lcom/bilibili/tv/player/PlayerActivity;

    if-eqz v1, :cond_139

    .line 67
    const-string v1, "PlayerUrlRefresh"

    const-string v2, "[RESOLVE_SUCCESS] Step 2: Activity is PlayerActivity, casting..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    check-cast v0, Lcom/bilibili/tv/player/PlayerActivity;

    .line 70
    const-string v1, "PlayerUrlRefresh"

    const-string v2, "[RESOLVE_SUCCESS] Step 3: Getting urlRefreshHelper field via reflection..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "urlRefreshHelper"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 72
    const-string v2, "PlayerUrlRefresh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RESOLVE_SUCCESS] Step 3: Field obtained: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v2, "PlayerUrlRefresh"

    const-string v3, "[RESOLVE_SUCCESS] Step 4: Getting field value..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    const-string v2, "PlayerUrlRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RESOLVE_SUCCESS] Step 4: Field value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_10b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_c1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    instance-of v1, v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    if-eqz v1, :cond_10e

    .line 79
    const-string v1, "PlayerUrlRefresh"

    const-string v2, "[RESOLVE_SUCCESS] Step 5: Helper is correct type, calling tryScheduleAutoRefresh()..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    check-cast v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->tryScheduleAutoRefresh()V

    .line 81
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RESOLVE_SUCCESS] Step 5: tryScheduleAutoRefresh() called successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_38 .. :try_end_e3} :catch_e5
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_e3} :catch_117
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_e3} :catch_15d

    goto/16 :goto_10

    .line 88
    :catch_e5
    move-exception v0

    .line 89
    const-string v1, "PlayerUrlRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RESOLVE_SUCCESS] NoSuchFieldException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_10

    .line 64
    :cond_107
    :try_start_107
    const-string v1, "null"

    goto/16 :goto_5a

    .line 76
    :cond_10b
    const-string v1, "null"

    goto :goto_c1

    .line 83
    :cond_10e
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RESOLVE_SUCCESS] Step 5: Helper is not correct type or null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Ljava/lang/NoSuchFieldException; {:try_start_107 .. :try_end_115} :catch_e5
    .catch Ljava/lang/IllegalAccessException; {:try_start_107 .. :try_end_115} :catch_117
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_115} :catch_15d

    goto/16 :goto_10

    .line 91
    :catch_117
    move-exception v0

    .line 92
    const-string v1, "PlayerUrlRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RESOLVE_SUCCESS] IllegalAccessException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_10

    .line 86
    :cond_139
    :try_start_139
    const-string v1, "PlayerUrlRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RESOLVE_SUCCESS] Step 2: Activity is not PlayerActivity or null, type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_191

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_150
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_139 .. :try_end_15b} :catch_e5
    .catch Ljava/lang/IllegalAccessException; {:try_start_139 .. :try_end_15b} :catch_117
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_15b} :catch_15d

    goto/16 :goto_10

    .line 94
    :catch_15d
    move-exception v0

    .line 95
    const-string v1, "PlayerUrlRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RESOLVE_SUCCESS] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10

    .line 86
    :cond_191
    :try_start_191
    const-string v0, "null"
    :try_end_193
    .catch Ljava/lang/NoSuchFieldException; {:try_start_191 .. :try_end_193} :catch_e5
    .catch Ljava/lang/IllegalAccessException; {:try_start_191 .. :try_end_193} :catch_117
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_193} :catch_15d

    goto :goto_150

    .line 100
    :pswitch_194
    if-eqz p2, :cond_1b3

    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1b3

    .line 101
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lbl/aai;->a(Z)V

    .line 103
    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    .line 104
    if-eqz v0, :cond_1b3

    .line 106
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lbl/yb;->c(I)V

    .line 109
    :cond_1b3
    iget-boolean v0, p0, Lbl/yb;->i:Z

    if-eqz v0, :cond_1c1

    .line 110
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->g()V

    .line 111
    iput-boolean v3, p0, Lbl/yb;->i:Z

    .line 112
    invoke-direct {p0}, Lbl/yb;->S()V

    .line 114
    :cond_1c1
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {p0}, Lbl/yb;->x()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lbl/zo;->b(I)V

    .line 115
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {p0}, Lbl/yb;->K()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbl/zo;->a(Z)V

    goto/16 :goto_10

    .line 118
    :pswitch_1d7
    invoke-static {}, Lbl/aai;->a()V

    goto/16 :goto_10

    .line 121
    :pswitch_1dc
    invoke-static {}, Lbl/aai;->b()V

    goto/16 :goto_10

    .line 124
    :pswitch_1e1
    iput-boolean v2, p0, Lbl/yb;->j:Z

    goto/16 :goto_10

    .line 44
    nop

    :pswitch_data_1e6
    .packed-switch 0x1
        :pswitch_11
        :pswitch_194
        :pswitch_1d7
        :pswitch_1dc
        :pswitch_1e1
    .end packed-switch
.end method

.method public d()V
    .locals 4

    .prologue
    .line 153
    invoke-super {p0}, Lbl/xh;->d()V

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbl/yb;->d:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lbl/aai;->a(J)V

    .line 155
    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-super {p0, p1}, Lbl/xh;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/yb;->i:Z

    .line 248
    invoke-virtual {p0}, Lbl/yb;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_68

    .line 250
    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->getDuration()J

    move-result-wide v0

    .line 251
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_68

    .line 252
    const-wide/32 v4, 0x7fffffff

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 255
    :goto_1f
    if-lez v1, :cond_63

    move v0, v1

    .line 256
    :goto_22
    const-string v3, "yb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCompletion] report full duration, apiDuration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms, playerDuration="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbl/yb;->I()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms, cachedPos="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbl/yb;->x()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0, v2, v0, v0}, Lbl/yb;->c(ZII)V

    .line 261
    invoke-direct {p0}, Lbl/yb;->reportCompleted()V

    .line 262
    return-void

    .line 255
    :cond_63
    invoke-virtual {p0}, Lbl/yb;->I()I

    move-result v0

    goto :goto_22

    :cond_68
    move v1, v2

    goto :goto_1f
.end method

.method public varargs onExtraInfo(I[Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 203
    packed-switch p1, :pswitch_data_86

    .line 221
    :cond_4
    :goto_4
    invoke-super {p0, p1, p2}, Lbl/xh;->onExtraInfo(I[Ljava/lang/Object;)V

    .line 222
    return-void

    .line 205
    :pswitch_8
    iget-boolean v0, p0, Lbl/yb;->j:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lbl/yb;->i:Z

    if-nez v0, :cond_4

    .line 206
    invoke-direct {p0}, Lbl/yb;->S()V

    goto :goto_4

    .line 211
    :pswitch_14
    if-eqz p2, :cond_4

    aget-object v0, p2, v5

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_4

    .line 212
    invoke-virtual {p0}, Lbl/yb;->m()Lbl/yd;

    move-result-object v0

    if-eqz v0, :cond_83

    sget-object v0, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v0}, Lbl/adl;->b()Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_28
    invoke-virtual {p0}, Lbl/yb;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 214
    invoke-virtual {p0}, Lbl/yb;->c()Lbl/yh;

    move-result-object v1

    .line 215
    invoke-virtual {p0}, Lbl/yb;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v2

    const-string v3, "initIjkTracker"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Lbl/abg;->a(Lbl/yh;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    invoke-static {}, Lbl/abg;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    invoke-static {v1}, Lbl/abg;->c(Lbl/yh;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    invoke-static {v1}, Lbl/abg;->b(Lbl/yh;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x6

    iget-object v1, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    invoke-static {v1}, Lbl/abg;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x7

    invoke-static {}, Lbl/abg;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-interface {v2, v3, v4}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->act(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 212
    :cond_83
    const-string v0, ""

    goto :goto_28

    .line 203
    :pswitch_data_86
    .packed-switch 0x10020
        :pswitch_8
        :pswitch_14
    .end packed-switch
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 167
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 168
    packed-switch p2, :pswitch_data_5c

    .line 198
    :cond_8
    :goto_8
    return v4

    .line 170
    :pswitch_9
    iget-boolean v0, p0, Lbl/yb;->g:Z

    if-eqz v0, :cond_15

    .line 171
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->h()V

    .line 175
    :goto_12
    iput-boolean v4, p0, Lbl/yb;->g:Z

    goto :goto_8

    .line 173
    :cond_15
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->i()V

    goto :goto_12

    .line 178
    :pswitch_1b
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->i()V

    .line 179
    iput-boolean v3, p0, Lbl/yb;->g:Z

    .line 181
    iget-boolean v0, p0, Lbl/yb;->hasFirstPlayed:Z

    if-nez v0, :cond_8

    .line 182
    iput-boolean v3, p0, Lbl/yb;->hasFirstPlayed:Z

    .line 183
    const-string v0, "yb"

    const-string v1, "[BUFFERING_END] first play detected, trigger delayed report"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lbl/yb;->pendingResolveParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-eqz v0, :cond_47

    .line 186
    invoke-virtual {p0}, Lbl/yb;->p()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbl/yb;->pendingResolveParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    iget-object v2, p0, Lbl/yb;->e:Lbl/zm;

    invoke-static {v0, v1, v2}, Lbl/zk;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Lbl/zm;)Z

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/yb;->pendingResolveParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 190
    :cond_47
    invoke-direct {p0}, Lbl/yb;->P()V

    .line 191
    iget-boolean v0, p0, Lbl/yb;->i:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lbl/yb;->j:Z

    if-nez v0, :cond_8

    .line 192
    :cond_52
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->g()V

    .line 193
    invoke-direct {p0, v3}, Lbl/yb;->c(Z)V

    goto :goto_8

    .line 168
    nop

    :pswitch_data_5c
    .packed-switch 0x2bd
        :pswitch_9
        :pswitch_1b
    .end packed-switch
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 230
    invoke-direct {p0}, Lbl/yb;->Q()V

    .line 232
    iput-boolean v0, p0, Lbl/yb;->hasFirstPlayed:Z

    .line 234
    iput-boolean v0, p0, Lbl/yb;->j:Z

    .line 235
    iput-boolean v0, p0, Lbl/yb;->i:Z

    .line 236
    invoke-direct {p0}, Lbl/yb;->T()V

    .line 237
    const-string v0, "yb"

    const-string v1, "[onPrepared] prepared but skip report, wait for first BUFFERING_END"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method
