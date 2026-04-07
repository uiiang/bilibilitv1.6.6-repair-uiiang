.class public final Lbl/zn;
.super Ljava/lang/Object;
.source "zn.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(ZLandroid/content/Context;Lbl/zo;Lcom/bilibili/tv/player/basic/context/PlayerParams;Lbl/yh;IIZ)V
    .locals 25

    .prologue
    .line 17
    const-string v2, "reportV2Context"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const-string v2, "playerParamsHolder"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual/range {p2 .. p2}, Lbl/zo;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    if-eqz p3, :cond_1c

    if-nez p1, :cond_1d

    .line 84
    :cond_1c
    :goto_1c
    return-void

    .line 22
    :cond_1d
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    .line 23
    if-eqz v2, :cond_2b

    iget-boolean v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    if-nez v2, :cond_1c

    .line 26
    :cond_2b
    invoke-static {}, Lbl/kn;->a()Lbl/kn;

    move-result-object v2

    .line 27
    const-string v3, "ConnectivityMonitor.getInstance()"

    invoke-static {v2, v3}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Lbl/kn;->c()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 29
    invoke-static/range {p1 .. p1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v2

    invoke-virtual {v2}, Lbl/mg;->d()J

    .line 30
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    iget-wide v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 31
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    iget-wide v6, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 32
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    iget-object v3, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 33
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    iget-wide v10, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 34
    if-nez v3, :cond_fe

    const-string v2, "3"

    .line 35
    :goto_6d
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    .line 36
    if-eqz v2, :cond_102

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    :goto_77
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v2, v1}, Lbl/zn;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Lbl/yh;)[I

    move-result-object v2

    const/4 v8, 0x1

    aget v2, v2, v8

    .line 37
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 38
    const-string v8, "playerParams.mVideoParams.mResolveParams"

    invoke-static {v2, v8}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->getQualityInt()I

    move-result v20

    .line 40
    move/from16 v0, p5

    div-int/lit16 v2, v0, 0x3e8

    int-to-long v0, v2

    move-wide/from16 v21, v0

    .line 41
    if-eqz v3, :cond_105

    const-string v2, "2"

    .line 42
    :goto_9c
    const-string v2, "downloaded"

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v8}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v8

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-static {v2, v8}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 43
    :cond_ae
    move/from16 v0, p6

    div-int/lit16 v2, v0, 0x3e8

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lbl/zo;->a(I)V

    .line 44
    if-nez p0, :cond_be

    .line 45
    if-eqz p7, :cond_108

    .line 46
    invoke-virtual/range {p2 .. p2}, Lbl/zo;->h()V

    .line 51
    :cond_be
    :goto_be
    invoke-static/range {p1 .. p1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v2

    .line 52
    invoke-static {v2}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v24

    .line 53
    invoke-static {v2}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v23

    .line 54
    const-wide/16 v8, 0x0

    .line 55
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d6

    .line 57
    :try_start_d2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_d5
    .catch Ljava/lang/NumberFormatException; {:try_start_d2 .. :try_end_d5} :catch_10c

    move-result-wide v8

    .line 62
    :cond_d6
    :goto_d6
    if-eqz v3, :cond_126

    const/16 v18, 0x4

    .line 63
    :goto_da
    const/16 v19, 0x0

    .line 64
    if-eqz v3, :cond_e0

    .line 65
    const/16 v19, 0x1

    .line 67
    :cond_e0
    move/from16 v0, p6

    div-int/lit16 v2, v0, 0x3e8

    int-to-long v12, v2

    .line 68
    const-class v2, Lcom/bilibili/tv/player/report/HeartbeatApiService;

    invoke-static {v2}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bilibili/tv/player/report/HeartbeatApiService;

    .line 74
    invoke-virtual/range {p2 .. p2}, Lbl/zo;->c()J

    move-result-wide v14

    .line 75
    invoke-virtual/range {p2 .. p2}, Lbl/zo;->a()J

    move-result-wide v16

    .line 68
    invoke-interface/range {v3 .. v24}, Lcom/bilibili/tv/player/report/HeartbeatApiService;->webHeartbeat(JJJJJJJIIIJLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lbl/vp;->a()V

    goto/16 :goto_1c

    .line 34
    :cond_fe
    const-string v2, "4"

    goto/16 :goto_6d

    .line 36
    :cond_102
    const/4 v2, 0x0

    goto/16 :goto_77

    .line 41
    :cond_105
    const-string v2, "1"

    goto :goto_9c

    .line 48
    :cond_108
    invoke-virtual/range {p2 .. p2}, Lbl/zo;->i()V

    goto :goto_be

    .line 58
    :catch_10c
    move-exception v2

    .line 59
    const-string v2, "Heartbeat"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to parse season_id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    .line 62
    :cond_126
    const/16 v18, 0x3

    goto :goto_da
.end method

.method public static final a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Lbl/yh;)[I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 87
    invoke-static {p0}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;)I

    move-result v6

    .line 88
    const/4 v2, 0x4

    .line 89
    if-gtz v6, :cond_3b

    .line 90
    if-eqz p1, :cond_2a

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    :goto_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 91
    const-string v0, "movie"

    if-eqz p1, :cond_1b

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    :cond_1b
    invoke-static {v0, v1, v5}, Lbl/bcl;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v2

    move v1, v4

    .line 104
    :goto_23
    new-array v2, v4, [I

    aput v0, v2, v3

    aput v1, v2, v5

    return-object v2

    :cond_2a
    move-object v0, v1

    .line 90
    goto :goto_f

    .line 93
    :cond_2c
    if-eqz p2, :cond_32

    iget-boolean v0, p2, Lbl/yh;->b:Z

    if-nez v0, :cond_35

    .line 94
    :cond_32
    const/4 v0, 0x3

    move v1, v3

    .line 95
    goto :goto_23

    :cond_35
    move v0, v3

    move v1, v3

    .line 98
    goto :goto_23

    :cond_38
    move v0, v2

    move v1, v5

    .line 101
    goto :goto_23

    :cond_3b
    move v0, v2

    move v1, v6

    goto :goto_23
.end method
