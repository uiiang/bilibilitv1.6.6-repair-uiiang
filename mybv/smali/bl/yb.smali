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
    .line 21
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl/yb;->d:J

    .line 27
    new-instance v0, Lbl/zm;

    invoke-direct {v0}, Lbl/zm;-><init>()V

    iput-object v0, p0, Lbl/yb;->e:Lbl/zm;

    .line 28
    new-instance v0, Lbl/zl;

    invoke-direct {v0}, Lbl/zl;-><init>()V

    iput-object v0, p0, Lbl/yb;->f:Lbl/zl;

    .line 29
    new-instance v0, Lbl/zo;

    invoke-direct {v0}, Lbl/zo;-><init>()V

    iput-object v0, p0, Lbl/yb;->h:Lbl/zo;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/yb;->hasFirstPlayed:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/yb;->pendingResolveParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    return-void
.end method

.method private P()V
    .locals 20

    .prologue
    .line 250
    invoke-virtual/range {p0 .. p0}, Lbl/yb;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v3

    .line 251
    if-nez v3, :cond_56

    const/4 v2, 0x0

    move-object v8, v2

    .line 252
    :goto_8
    if-eqz v8, :cond_55

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lbl/yb;->e:Lbl/zm;

    invoke-virtual {v2}, Lbl/zm;->a()V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lbl/yb;->e:Lbl/zm;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lbl/zm;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lbl/yb;->c()Lbl/yh;

    move-result-object v2

    invoke-static {v3, v8, v2}, Lbl/zn;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Lbl/yh;)[I

    move-result-object v10

    .line 256
    invoke-virtual {v8}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isBangumi()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 258
    :try_start_28
    iget-object v2, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2d} :catch_5e

    move-result-wide v2

    .line 263
    :goto_2e
    iget-wide v13, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    move-wide v11, v2

    .line 269
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

    .line 274
    :cond_55
    :goto_55
    return-void

    .line 251
    :cond_56
    iget-object v2, v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    move-object v8, v2

    goto :goto_8

    .line 259
    :catch_5e
    move-exception v2

    .line 260
    const-wide/16 v2, 0x0

    goto :goto_2e

    .line 265
    :cond_62
    const-wide/16 v11, 0x0

    .line 266
    const-wide/16 v13, 0x0

    goto :goto_31

    .line 269
    :cond_67
    :try_start_67
    iget v8, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_69} :catch_6a

    goto :goto_48

    .line 270
    :catch_6a
    move-exception v2

    .line 271
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55
.end method

.method private Q()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/yb;->g:Z

    .line 278
    iget-boolean v0, p0, Lbl/yb;->i:Z

    if-eqz v0, :cond_12

    .line 279
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->g()V

    .line 280
    invoke-direct {p0}, Lbl/yb;->S()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/yb;->i:Z

    .line 283
    :cond_12
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->i()V

    .line 284
    return-void
.end method

.method private R()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/yb;->g:Z

    .line 288
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->h()V

    .line 289
    return-void
.end method

.method private S()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/yb;->c(Z)V

    .line 293
    return-void
.end method

.method private T()V
    .locals 4

    .prologue
    .line 300
    invoke-virtual {p0}, Lbl/yb;->y()Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_2f

    invoke-direct {p0, v0}, Lbl/yb;->b(Lcom/bilibili/lib/media/resource/PlayerCodecConfig;)I

    move-result v0

    .line 302
    :goto_a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 303
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

    .line 304
    sget-object v0, Lbl/abl;->a:Lbl/abl;

    const-string v2, "ott-player.ott-play.ott-player.0.player"

    invoke-virtual {v0, v2, v1}, Lbl/abl;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 305
    return-void

    .line 301
    :cond_2f
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private b(Lcom/bilibili/lib/media/resource/PlayerCodecConfig;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 308
    iget-object v1, p1, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    .line 309
    sget-object v2, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->NONE:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    if-ne v2, v1, :cond_8

    .line 318
    :cond_7
    :goto_7
    return v0

    .line 312
    :cond_8
    sget-object v2, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->ANDROID_PLAYER:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    if-ne v2, v1, :cond_e

    .line 313
    const/4 v0, 0x4

    goto :goto_7

    .line 315
    :cond_e
    sget-object v2, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->IJK_PLAYER:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    if-ne v2, v1, :cond_7

    .line 316
    iget-boolean v0, p1, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->c:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x6

    goto :goto_7

    :cond_18
    const/4 v0, 0x5

    goto :goto_7
.end method

.method private c(Z)V
    .locals 8

    .prologue
    .line 296
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    iget-object v2, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {p0}, Lbl/yb;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v3

    invoke-virtual {p0}, Lbl/yb;->c()Lbl/yh;

    move-result-object v4

    invoke-virtual {p0}, Lbl/yb;->I()I

    move-result v5

    invoke-virtual {p0}, Lbl/yb;->x()I

    move-result v6

    iget-boolean v7, p0, Lbl/yb;->g:Z

    move v0, p1

    invoke-static/range {v0 .. v7}, Lbl/zn;->a(ZLandroid/content/Context;Lbl/zo;Lcom/bilibili/tv/player/basic/context/PlayerParams;Lbl/yh;IIZ)V

    .line 297
    return-void
.end method


# virtual methods
.method public E()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lbl/xh;->E()V

    .line 140
    const/4 v0, 0x1

    invoke-static {v0}, Lbl/aai;->b(Z)V

    .line 141
    invoke-direct {p0}, Lbl/yb;->R()V

    .line 142
    return-void
.end method

.method public G()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lbl/xh;->G()V

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Lbl/aai;->b(Z)V

    .line 134
    invoke-direct {p0}, Lbl/yb;->Q()V

    .line 135
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0, p1}, Lbl/xh;->a(Landroid/os/Bundle;)V

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbl/yb;->d:J

    .line 148
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 43
    sget-object v0, Lbl/yb$1;->$SwitchMap$com$bilibili$tv$player$interfaces$IEventCenter$EventType:[I

    invoke-virtual {p1}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e6

    .line 126
    :cond_10
    :goto_10
    return-void

    .line 45
    :pswitch_11
    if-eqz p2, :cond_10

    array-length v0, p2

    if-lt v0, v2, :cond_10

    .line 48
    aget-object v0, p2, v3

    check-cast v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 49
    iget-object v1, p0, Lbl/yb;->e:Lbl/zm;

    invoke-virtual {v1}, Lbl/zm;->a()V

    .line 50
    iget-object v1, p0, Lbl/yb;->e:Lbl/zm;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lbl/zm;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 53
    iput-object v0, p0, Lbl/yb;->pendingResolveParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 55
    iput-boolean v3, p0, Lbl/yb;->hasFirstPlayed:Z

    .line 56
    const-string v0, "yb"

    const-string v1, "[RESOLVE_SUCCESS] delay report until first play, reset hasFirstPlayed=false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RESOLVE_SUCCESS] Trying to schedule auto refresh after MediaResource loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :try_start_38
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RESOLVE_SUCCESS] Step 1: Checking if activity is PlayerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lbl/yb;->o()Landroid/app/Activity;

    move-result-object v0

    .line 63
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

    .line 65
    instance-of v1, v0, Lcom/bilibili/tv/player/PlayerActivity;

    if-eqz v1, :cond_139

    .line 66
    const-string v1, "PlayerUrlRefresh"

    const-string v2, "[RESOLVE_SUCCESS] Step 2: Activity is PlayerActivity, casting..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    check-cast v0, Lcom/bilibili/tv/player/PlayerActivity;

    .line 69
    const-string v1, "PlayerUrlRefresh"

    const-string v2, "[RESOLVE_SUCCESS] Step 3: Getting urlRefreshHelper field via reflection..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "urlRefreshHelper"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 71
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

    .line 73
    const-string v2, "PlayerUrlRefresh"

    const-string v3, "[RESOLVE_SUCCESS] Step 4: Getting field value..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
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

    .line 77
    instance-of v1, v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    if-eqz v1, :cond_10e

    .line 78
    const-string v1, "PlayerUrlRefresh"

    const-string v2, "[RESOLVE_SUCCESS] Step 5: Helper is correct type, calling tryScheduleAutoRefresh()..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    check-cast v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->tryScheduleAutoRefresh()V

    .line 80
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RESOLVE_SUCCESS] Step 5: tryScheduleAutoRefresh() called successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_38 .. :try_end_e3} :catch_e5
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_e3} :catch_117
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_e3} :catch_15d

    goto/16 :goto_10

    .line 87
    :catch_e5
    move-exception v0

    .line 88
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

    .line 89
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_10

    .line 63
    :cond_107
    :try_start_107
    const-string v1, "null"

    goto/16 :goto_5a

    .line 75
    :cond_10b
    const-string v1, "null"

    goto :goto_c1

    .line 82
    :cond_10e
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RESOLVE_SUCCESS] Step 5: Helper is not correct type or null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Ljava/lang/NoSuchFieldException; {:try_start_107 .. :try_end_115} :catch_e5
    .catch Ljava/lang/IllegalAccessException; {:try_start_107 .. :try_end_115} :catch_117
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_115} :catch_15d

    goto/16 :goto_10

    .line 90
    :catch_117
    move-exception v0

    .line 91
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

    .line 92
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_10

    .line 85
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

    .line 93
    :catch_15d
    move-exception v0

    .line 94
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

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10

    .line 85
    :cond_191
    :try_start_191
    const-string v0, "null"
    :try_end_193
    .catch Ljava/lang/NoSuchFieldException; {:try_start_191 .. :try_end_193} :catch_e5
    .catch Ljava/lang/IllegalAccessException; {:try_start_191 .. :try_end_193} :catch_117
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_193} :catch_15d

    goto :goto_150

    .line 99
    :pswitch_194
    if-eqz p2, :cond_1b3

    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1b3

    .line 100
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lbl/aai;->a(Z)V

    .line 102
    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    .line 103
    if-eqz v0, :cond_1b3

    .line 105
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lbl/yb;->c(I)V

    .line 108
    :cond_1b3
    iget-boolean v0, p0, Lbl/yb;->i:Z

    if-eqz v0, :cond_1c1

    .line 109
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->g()V

    .line 110
    iput-boolean v3, p0, Lbl/yb;->i:Z

    .line 111
    invoke-direct {p0}, Lbl/yb;->S()V

    .line 113
    :cond_1c1
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {p0}, Lbl/yb;->x()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lbl/zo;->b(I)V

    .line 114
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {p0}, Lbl/yb;->K()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbl/zo;->a(Z)V

    goto/16 :goto_10

    .line 117
    :pswitch_1d7
    invoke-static {}, Lbl/aai;->a()V

    goto/16 :goto_10

    .line 120
    :pswitch_1dc
    invoke-static {}, Lbl/aai;->b()V

    goto/16 :goto_10

    .line 123
    :pswitch_1e1
    iput-boolean v2, p0, Lbl/yb;->j:Z

    goto/16 :goto_10

    .line 43
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
    .line 152
    invoke-super {p0}, Lbl/xh;->d()V

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbl/yb;->d:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lbl/aai;->a(J)V

    .line 154
    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0, p1}, Lbl/xh;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/yb;->i:Z

    .line 243
    invoke-direct {p0}, Lbl/yb;->S()V

    .line 244
    return-void
.end method

.method public varargs onExtraInfo(I[Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 202
    packed-switch p1, :pswitch_data_86

    .line 220
    :cond_4
    :goto_4
    invoke-super {p0, p1, p2}, Lbl/xh;->onExtraInfo(I[Ljava/lang/Object;)V

    .line 221
    return-void

    .line 204
    :pswitch_8
    iget-boolean v0, p0, Lbl/yb;->j:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lbl/yb;->i:Z

    if-nez v0, :cond_4

    .line 205
    invoke-direct {p0}, Lbl/yb;->S()V

    goto :goto_4

    .line 210
    :pswitch_14
    if-eqz p2, :cond_4

    aget-object v0, p2, v5

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_4

    .line 211
    invoke-virtual {p0}, Lbl/yb;->m()Lbl/yd;

    move-result-object v0

    if-eqz v0, :cond_83

    sget-object v0, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v0}, Lbl/adl;->b()Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_28
    invoke-virtual {p0}, Lbl/yb;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 213
    invoke-virtual {p0}, Lbl/yb;->c()Lbl/yh;

    move-result-object v1

    .line 214
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

    .line 211
    :cond_83
    const-string v0, ""

    goto :goto_28

    .line 202
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

    .line 166
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 167
    packed-switch p2, :pswitch_data_5c

    .line 197
    :cond_8
    :goto_8
    return v4

    .line 169
    :pswitch_9
    iget-boolean v0, p0, Lbl/yb;->g:Z

    if-eqz v0, :cond_15

    .line 170
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->h()V

    .line 174
    :goto_12
    iput-boolean v4, p0, Lbl/yb;->g:Z

    goto :goto_8

    .line 172
    :cond_15
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->i()V

    goto :goto_12

    .line 177
    :pswitch_1b
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->i()V

    .line 178
    iput-boolean v3, p0, Lbl/yb;->g:Z

    .line 180
    iget-boolean v0, p0, Lbl/yb;->hasFirstPlayed:Z

    if-nez v0, :cond_8

    .line 181
    iput-boolean v3, p0, Lbl/yb;->hasFirstPlayed:Z

    .line 182
    const-string v0, "yb"

    const-string v1, "[BUFFERING_END] first play detected, trigger delayed report"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lbl/yb;->pendingResolveParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-eqz v0, :cond_47

    .line 185
    invoke-virtual {p0}, Lbl/yb;->p()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbl/yb;->pendingResolveParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    iget-object v2, p0, Lbl/yb;->e:Lbl/zm;

    invoke-static {v0, v1, v2}, Lbl/zk;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Lbl/zm;)Z

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/yb;->pendingResolveParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 189
    :cond_47
    invoke-direct {p0}, Lbl/yb;->P()V

    .line 190
    iget-boolean v0, p0, Lbl/yb;->i:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lbl/yb;->j:Z

    if-nez v0, :cond_8

    .line 191
    :cond_52
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->g()V

    .line 192
    invoke-direct {p0, v3}, Lbl/yb;->c(Z)V

    goto :goto_8

    .line 167
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
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 229
    invoke-direct {p0}, Lbl/yb;->Q()V

    .line 231
    iput-boolean v0, p0, Lbl/yb;->hasFirstPlayed:Z

    .line 233
    iput-boolean v0, p0, Lbl/yb;->j:Z

    .line 234
    iput-boolean v0, p0, Lbl/yb;->i:Z

    .line 235
    invoke-direct {p0}, Lbl/yb;->T()V

    .line 236
    const-string v0, "yb"

    const-string v1, "[onPrepared] prepared but skip report, wait for first BUFFERING_END"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method
