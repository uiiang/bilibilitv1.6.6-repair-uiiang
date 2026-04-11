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
    .line 210
    invoke-virtual/range {p0 .. p0}, Lbl/yb;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v3

    .line 211
    if-nez v3, :cond_56

    const/4 v2, 0x0

    move-object v8, v2

    .line 212
    :goto_8
    if-eqz v8, :cond_55

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lbl/yb;->e:Lbl/zm;

    invoke-virtual {v2}, Lbl/zm;->a()V

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lbl/yb;->e:Lbl/zm;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lbl/zm;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lbl/yb;->c()Lbl/yh;

    move-result-object v2

    invoke-static {v3, v8, v2}, Lbl/zn;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Lbl/yh;)[I

    move-result-object v10

    .line 216
    invoke-virtual {v8}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isBangumi()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 218
    :try_start_28
    iget-object v2, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2d} :catch_5e

    move-result-wide v2

    .line 223
    :goto_2e
    iget-wide v13, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    move-wide v11, v2

    .line 229
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

    .line 234
    :cond_55
    :goto_55
    return-void

    .line 211
    :cond_56
    iget-object v2, v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    move-object v8, v2

    goto :goto_8

    .line 219
    :catch_5e
    move-exception v2

    .line 220
    const-wide/16 v2, 0x0

    goto :goto_2e

    .line 225
    :cond_62
    const-wide/16 v11, 0x0

    .line 226
    const-wide/16 v13, 0x0

    goto :goto_31

    .line 229
    :cond_67
    :try_start_67
    iget v8, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_69} :catch_6a

    goto :goto_48

    .line 230
    :catch_6a
    move-exception v2

    .line 231
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55
.end method

.method private Q()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/yb;->g:Z

    .line 238
    iget-boolean v0, p0, Lbl/yb;->i:Z

    if-eqz v0, :cond_12

    .line 239
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->g()V

    .line 240
    invoke-direct {p0}, Lbl/yb;->S()V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/yb;->i:Z

    .line 243
    :cond_12
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->i()V

    .line 244
    return-void
.end method

.method private R()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/yb;->g:Z

    .line 248
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->h()V

    .line 249
    return-void
.end method

.method private S()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/yb;->c(Z)V

    .line 253
    return-void
.end method

.method private T()V
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lbl/yb;->y()Lcom/bilibili/lib/media/resource/PlayerCodecConfig;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_2f

    invoke-direct {p0, v0}, Lbl/yb;->b(Lcom/bilibili/lib/media/resource/PlayerCodecConfig;)I

    move-result v0

    .line 262
    :goto_a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 263
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

    .line 264
    sget-object v0, Lbl/abl;->a:Lbl/abl;

    const-string v2, "ott-player.ott-play.ott-player.0.player"

    invoke-virtual {v0, v2, v1}, Lbl/abl;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 265
    return-void

    .line 261
    :cond_2f
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private b(Lcom/bilibili/lib/media/resource/PlayerCodecConfig;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 268
    iget-object v1, p1, Lcom/bilibili/lib/media/resource/PlayerCodecConfig;->a:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    .line 269
    sget-object v2, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->NONE:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    if-ne v2, v1, :cond_8

    .line 278
    :cond_7
    :goto_7
    return v0

    .line 272
    :cond_8
    sget-object v2, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->ANDROID_PLAYER:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    if-ne v2, v1, :cond_e

    .line 273
    const/4 v0, 0x4

    goto :goto_7

    .line 275
    :cond_e
    sget-object v2, Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;->IJK_PLAYER:Lcom/bilibili/lib/media/resource/PlayerCodecConfig$Player;

    if-ne v2, v1, :cond_7

    .line 276
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
    .line 256
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

    .line 257
    return-void
.end method


# virtual methods
.method public E()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lbl/xh;->E()V

    .line 100
    const/4 v0, 0x1

    invoke-static {v0}, Lbl/aai;->b(Z)V

    .line 101
    invoke-direct {p0}, Lbl/yb;->R()V

    .line 102
    return-void
.end method

.method public G()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lbl/xh;->G()V

    .line 93
    const/4 v0, 0x0

    invoke-static {v0}, Lbl/aai;->b(Z)V

    .line 94
    invoke-direct {p0}, Lbl/yb;->Q()V

    .line 95
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0, p1}, Lbl/xh;->a(Landroid/os/Bundle;)V

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbl/yb;->d:J

    .line 108
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 4

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

    packed-switch v0, :pswitch_data_80

    .line 86
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

    goto :goto_10

    .line 59
    :pswitch_32
    if-eqz p2, :cond_51

    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_51

    .line 60
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lbl/aai;->a(Z)V

    .line 62
    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    .line 63
    if-eqz v0, :cond_51

    .line 65
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lbl/yb;->c(I)V

    .line 68
    :cond_51
    iget-boolean v0, p0, Lbl/yb;->i:Z

    if-eqz v0, :cond_5f

    .line 69
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->g()V

    .line 70
    iput-boolean v3, p0, Lbl/yb;->i:Z

    .line 71
    invoke-direct {p0}, Lbl/yb;->S()V

    .line 73
    :cond_5f
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {p0}, Lbl/yb;->x()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lbl/zo;->b(I)V

    .line 74
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {p0}, Lbl/yb;->K()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbl/zo;->a(Z)V

    goto :goto_10

    .line 77
    :pswitch_74
    invoke-static {}, Lbl/aai;->a()V

    goto :goto_10

    .line 80
    :pswitch_78
    invoke-static {}, Lbl/aai;->b()V

    goto :goto_10

    .line 83
    :pswitch_7c
    iput-boolean v2, p0, Lbl/yb;->j:Z

    goto :goto_10

    .line 43
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_11
        :pswitch_32
        :pswitch_74
        :pswitch_78
        :pswitch_7c
    .end packed-switch
.end method

.method public d()V
    .locals 4

    .prologue
    .line 112
    invoke-super {p0}, Lbl/xh;->d()V

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbl/yb;->d:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lbl/aai;->a(J)V

    .line 114
    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0, p1}, Lbl/xh;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/yb;->i:Z

    .line 203
    invoke-direct {p0}, Lbl/yb;->S()V

    .line 204
    return-void
.end method

.method public varargs onExtraInfo(I[Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 162
    packed-switch p1, :pswitch_data_86

    .line 180
    :cond_4
    :goto_4
    invoke-super {p0, p1, p2}, Lbl/xh;->onExtraInfo(I[Ljava/lang/Object;)V

    .line 181
    return-void

    .line 164
    :pswitch_8
    iget-boolean v0, p0, Lbl/yb;->j:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lbl/yb;->i:Z

    if-nez v0, :cond_4

    .line 165
    invoke-direct {p0}, Lbl/yb;->S()V

    goto :goto_4

    .line 170
    :pswitch_14
    if-eqz p2, :cond_4

    aget-object v0, p2, v5

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {p0}, Lbl/yb;->m()Lbl/yd;

    move-result-object v0

    if-eqz v0, :cond_83

    sget-object v0, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v0}, Lbl/adl;->b()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_28
    invoke-virtual {p0}, Lbl/yb;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 173
    invoke-virtual {p0}, Lbl/yb;->c()Lbl/yh;

    move-result-object v1

    .line 174
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

    .line 171
    :cond_83
    const-string v0, ""

    goto :goto_28

    .line 162
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

    .line 126
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 127
    packed-switch p2, :pswitch_data_5c

    .line 157
    :cond_8
    :goto_8
    return v4

    .line 129
    :pswitch_9
    iget-boolean v0, p0, Lbl/yb;->g:Z

    if-eqz v0, :cond_15

    .line 130
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->h()V

    .line 134
    :goto_12
    iput-boolean v4, p0, Lbl/yb;->g:Z

    goto :goto_8

    .line 132
    :cond_15
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->i()V

    goto :goto_12

    .line 137
    :pswitch_1b
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->i()V

    .line 138
    iput-boolean v3, p0, Lbl/yb;->g:Z

    .line 140
    iget-boolean v0, p0, Lbl/yb;->hasFirstPlayed:Z

    if-nez v0, :cond_8

    .line 141
    iput-boolean v3, p0, Lbl/yb;->hasFirstPlayed:Z

    .line 142
    const-string v0, "yb"

    const-string v1, "[BUFFERING_END] first play detected, trigger delayed report"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lbl/yb;->pendingResolveParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-eqz v0, :cond_47

    .line 145
    invoke-virtual {p0}, Lbl/yb;->p()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbl/yb;->pendingResolveParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    iget-object v2, p0, Lbl/yb;->e:Lbl/zm;

    invoke-static {v0, v1, v2}, Lbl/zk;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Lbl/zm;)Z

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/yb;->pendingResolveParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 149
    :cond_47
    invoke-direct {p0}, Lbl/yb;->P()V

    .line 150
    iget-boolean v0, p0, Lbl/yb;->i:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lbl/yb;->j:Z

    if-nez v0, :cond_8

    .line 151
    :cond_52
    iget-object v0, p0, Lbl/yb;->h:Lbl/zo;

    invoke-virtual {v0}, Lbl/zo;->g()V

    .line 152
    invoke-direct {p0, v3}, Lbl/yb;->c(Z)V

    goto :goto_8

    .line 127
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

    .line 185
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 189
    invoke-direct {p0}, Lbl/yb;->Q()V

    .line 191
    iput-boolean v0, p0, Lbl/yb;->hasFirstPlayed:Z

    .line 193
    iput-boolean v0, p0, Lbl/yb;->j:Z

    .line 194
    iput-boolean v0, p0, Lbl/yb;->i:Z

    .line 195
    invoke-direct {p0}, Lbl/yb;->T()V

    .line 196
    const-string v0, "yb"

    const-string v1, "[onPrepared] prepared but skip report, wait for first BUFFERING_END"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method
