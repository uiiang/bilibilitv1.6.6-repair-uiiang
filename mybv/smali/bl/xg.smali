.class public Lbl/xg;
.super Ljava/lang/Object;
.source "xg.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILandroid/content/Context;Ljava/lang/String;Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v4, -0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v5, p0

    invoke-static/range {v0 .. v5}, Lbl/xg;->b(Landroid/content/Context;Ljava/lang/String;Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;Ljava/util/List;II)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 26
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;II)V
    .locals 7

    .prologue
    .line 114
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lbl/xg;->b(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;III)V

    .line 115
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 537
    const-string v0, "UI_TRANSITION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[7_A_METHOD_START] a(Activity,PlayerParams,Bundle,int) started, time="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v1, "PlaySpeed"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[7_A_METHOD_START] starting PlayerActivity, resolveParams: cid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v0, :cond_140

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_140

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_3e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", seasonId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v0, :cond_144

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_144

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    :goto_58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", episodeId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v0, :cond_148

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_148

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_76
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_9e

    .line 540
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 541
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    aput-object v1, v0, v8

    .line 543
    :cond_9e
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    aget-object v0, v0, v8

    sget-boolean v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v1, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 544
    const-string v0, "UI_TRANSITION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[8_BEFORE_INTENT] creating PlayerActivity intent, elapsed="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {p0, p1}, Lcom/bilibili/tv/player/PlayerActivity;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Landroid/content/Intent;

    move-result-object v0

    .line 546
    const-string v1, "UI_TRANSITION"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[9_AFTER_INTENT] intent created, elapsed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 548
    const-string v1, "UI_TRANSITION"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[10_BEFORE_START_ACTIVITY] calling startActivityForResult, elapsed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 550
    const-string v0, "UI_TRANSITION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[11_AFTER_START_ACTIVITY] startActivityForResult returned, elapsed="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void

    .line 538
    :cond_140
    const-string v0, "null"

    goto/16 :goto_3e

    :cond_144
    const-string v0, "null"

    goto/16 :goto_58

    :cond_148
    const-string v0, "null"

    goto/16 :goto_76
.end method

.method public static a(Landroid/content/Context;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 110
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lbl/xg;->b(Landroid/content/Context;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;I)V

    .line 111
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;I)V
    .locals 0

    .prologue
    .line 118
    invoke-static {p0, p1, p2, p3, p4}, Lbl/xg;->b(Landroid/content/Context;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;I)V

    .line 119
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 528
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_1e

    .line 529
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 530
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    aput-object v2, v0, v1

    .line 532
    :cond_1e
    invoke-static {p0, p1}, Lcom/bilibili/tv/player/PlayerActivity;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 533
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static/range {p0 .. p5}, Lbl/xg;->b(Landroid/content/Context;Ljava/lang/String;Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;Ljava/util/List;II)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;Ljava/util/List;II)Landroid/content/Intent;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;",
            ">;II)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0}, Lbl/aaj;->a(Landroid/content/Context;)Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v5

    .line 34
    iget-object v2, v5, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v6

    .line 35
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->long_title:Ljava/lang/String;

    invoke-static {v5, v2}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 36
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->cover:Ljava/lang/String;

    invoke-static {v5, v2}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 37
    move/from16 v0, p5

    invoke-static {v5, v0}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;I)V

    .line 38
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->aid:J

    iput-wide v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 39
    if-nez p1, :cond_2b

    .line 40
    const/high16 v2, -0x80000000

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 42
    :cond_2b
    iput-object p1, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 43
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->epid:J

    iput-wide v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 44
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->cid:J

    iput-wide v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 45
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->long_title:Ljava/lang/String;

    iput-object v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 46
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->index:Ljava/lang/String;

    iput-object v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    .line 47
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->from:Ljava/lang/String;

    iput-object v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 48
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->vid:Ljava/lang/String;

    iput-object v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 49
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->cover:Ljava/lang/String;

    iput-object v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 51
    invoke-static/range {p2 .. p2}, Lbl/xg;->getVtText(Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;)Ljava/lang/String;

    move-result-object v2

    .line 52
    iput-object v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fd

    const/4 v2, 0x1

    :goto_64
    iput-boolean v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHideUpIcon:Z

    .line 54
    const/4 v2, 0x1

    iput v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    .line 55
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->stat:Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Stat;

    if-eqz v2, :cond_87

    .line 56
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->stat:Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Stat;

    iget-wide v2, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Stat;->play:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    .line 57
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->stat:Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Stat;

    iget v2, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Stat;->danmakus:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    .line 59
    :cond_87
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->badge:Ljava/lang/String;

    if-eqz v2, :cond_9d

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->badge:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9d

    .line 60
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->badge:Ljava/lang/String;

    iput-object v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeText:Ljava/lang/String;

    .line 63
    :cond_9d
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->progress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    if-eqz v2, :cond_b8

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->progress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    iget-wide v2, v2, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;->lastEpId:J

    iget-wide v8, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_b8

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->progress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    iget-wide v2, v2, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;->lastEpProgress:J

    long-to-int v2, v2

    iput v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    .line 65
    :cond_b8
    if-lez p4, :cond_be

    .line 66
    move/from16 v0, p4

    iput v0, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 68
    :cond_be
    if-eqz p3, :cond_173

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_173

    .line 69
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    .line 70
    iget-object v2, v5, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2, v7}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v8

    .line 71
    const/4 v2, 0x0

    move v4, v2

    :goto_d2
    if-ge v4, v7, :cond_173

    .line 72
    new-instance v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {v9}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;-><init>()V

    .line 73
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;

    .line 74
    iget-wide v10, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->epid:J

    iget-object v3, v5, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v3, v3, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v12, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    cmp-long v3, v10, v12

    if-nez v3, :cond_100

    .line 75
    iget-object v2, v5, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iput v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 76
    iget-object v2, v5, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    aput-object v2, v8, v4

    .line 71
    :goto_f9
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_d2

    .line 53
    :cond_fd
    const/4 v2, 0x0

    goto/16 :goto_64

    .line 78
    :cond_100
    iget-object v3, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->index:Ljava/lang/String;

    iput-object v3, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    .line 79
    iget-object v3, v5, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v3, v3, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v3, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    iput-object v3, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 80
    iget-wide v10, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->aid:J

    iput-wide v10, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 81
    iget-wide v10, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->epid:J

    iput-wide v10, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 82
    iget-object v3, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->long_title:Ljava/lang/String;

    iput-object v3, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 83
    iget-wide v10, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->cid:J

    iput-wide v10, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 84
    iput v4, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 85
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->from:Ljava/lang/String;

    iput-object v3, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 86
    iget-object v3, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->vid:Ljava/lang/String;

    iput-object v3, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 87
    iget-object v3, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->cover:Ljava/lang/String;

    iput-object v3, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 89
    invoke-static {v2}, Lbl/xg;->getVtText(Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;)Ljava/lang/String;

    move-result-object v3

    .line 90
    iput-object v3, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    .line 91
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_171

    const/4 v3, 0x1

    :goto_139
    iput-boolean v3, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHideUpIcon:Z

    .line 92
    const/4 v3, 0x1

    iput v3, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    .line 93
    iget-object v3, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->stat:Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Stat;

    if-eqz v3, :cond_156

    .line 94
    iget-object v3, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->stat:Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Stat;

    iget-wide v10, v3, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Stat;->play:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    .line 95
    iget-object v3, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->stat:Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Stat;

    iget v3, v3, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx$Stat;->danmakus:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    .line 97
    :cond_156
    iget-object v3, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->badge:Ljava/lang/String;

    if-eqz v3, :cond_166

    iget-object v3, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->badge:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_166

    .line 98
    iget-object v2, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->badge:Ljava/lang/String;

    iput-object v2, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeText:Ljava/lang/String;

    .line 100
    :cond_166
    iget v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    iput v2, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 101
    sget-boolean v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v2, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 102
    aput-object v9, v8, v4

    goto :goto_f9

    .line 91
    :cond_171
    const/4 v3, 0x0

    goto :goto_139

    .line 106
    :cond_173
    invoke-static {p0, v5}, Lcom/bilibili/tv/player/PlayerActivity;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public static b(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;III)V
    .locals 20

    .prologue
    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 326
    const-string v4, "PlaySpeed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[4_XG_B_START] b() method started, cid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", mFrom="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", mEpisodeId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", progress="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v4, "CoverDebug"

    const-string v5, "========== xg.b() Cover Info =========="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v4, "CoverDebug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "biliVideoDetail.mCover = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static/range {p0 .. p0}, Lbl/aaj;->a(Landroid/content/Context;)Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v13

    .line 330
    const-string v4, "UI_TRANSITION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[5_AFTER_AAJ] aaj.a() returned, elapsed="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v4, "PlaySpeed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[5_AFTER_AAJ] aaj.a() returned, elapsed="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v13, v4}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 333
    const-string v4, "CoverDebug"

    const-string v5, "After yr.a(), cover stored in PlayerParams"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lbl/yr;->c(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-static {v13, v4}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getUGCseason()V

    .line 339
    iget-object v4, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v4}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v14

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSpid()I

    move-result v4

    iput v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 341
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iput-wide v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 342
    move-object/from16 v0, p2

    iget v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    iput v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 343
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    iput-object v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 344
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    iput-object v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 345
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mVid:Ljava/lang/String;

    iput-object v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 346
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mRawVid:Ljava/lang/String;

    iput-object v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 347
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    iput-wide v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 348
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mWebLink:Ljava/lang/String;

    iput-object v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 349
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mHasAlias:Z

    iput-boolean v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    .line 350
    move-object/from16 v0, p1

    iget v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    iput v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    .line 351
    move-object/from16 v0, p2

    iget v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    iput v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    .line 353
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    iput-object v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    .line 354
    move/from16 v0, p6

    iput v0, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    .line 355
    sget-boolean v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 357
    if-lez p4, :cond_136

    .line 358
    move/from16 v0, p4

    iput v0, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 360
    :cond_136
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v4, :cond_157

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v5, v5, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 363
    :cond_157
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_179

    .line 364
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    iput-wide v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 365
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mSeasonId:Ljava/lang/String;

    iput-object v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 366
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->cover:Ljava/lang/String;

    if-eqz v4, :cond_3f6

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->cover:Ljava/lang/String;

    :goto_177
    iput-object v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 368
    :cond_179
    invoke-static {v13}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18a

    .line 369
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-static {v13, v4}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 371
    :cond_18a
    const-string v4, "UI_TRANSITION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[6_BEFORE_PAGELIST] checking pageList, elapsed="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v5, "PlaySpeed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[6_BEFORE_PAGELIST] pageList="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v4, :cond_3fc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1db
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", mFrom="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", mEpisodeId="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", mBangumiInfo="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v4, :cond_400

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "seasonId="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v9, v9, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_220
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", elapsed="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "ms"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v5, "xg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "b(Activity) | mPageList="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v4, :cond_404

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_26f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " | page.mFrom="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " | page.mEpisodeId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v4, :cond_446

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_446

    .line 376
    const-string v4, "bangumi"

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2bf

    const-string v4, "movie"

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_408

    :cond_2bf
    const/4 v4, 0x1

    move v6, v4

    .line 377
    :goto_2c1
    if-eqz v6, :cond_40c

    const/4 v4, 0x1

    move v5, v4

    .line 378
    :goto_2c5
    const-string v4, "xg"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "b(Activity) mPageList\u5206\u652f | isPgc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | page.mFrom="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | pageListType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    .line 380
    iget-object v4, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v4, v15}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v16

    .line 381
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 382
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 383
    const/4 v4, 0x0

    move v12, v4

    :goto_30d
    if-ge v12, v15, :cond_43c

    .line 384
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 385
    new-instance v17, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct/range {v17 .. v17}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;-><init>()V

    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSpid()I

    move-result v6

    move-object/from16 v0, v17

    iput v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 387
    iget v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTid:I

    move-object/from16 v0, v17

    iput v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    .line 388
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    move-object/from16 v0, v17

    iput-wide v8, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 389
    iget v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    move-object/from16 v0, v17

    iput v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 390
    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 391
    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mVid:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 392
    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mRawVid:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 393
    iget-wide v8, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    move-object/from16 v0, v17

    iput-wide v8, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 394
    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mWebLink:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 395
    iget-boolean v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mHasAlias:Z

    move-object/from16 v0, v17

    iput-boolean v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    .line 396
    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 397
    iget-object v6, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 398
    iget-wide v8, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    move-object/from16 v0, v17

    iput-wide v8, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 399
    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->firstFrame:Ljava/lang/String;

    if-eqz v6, :cond_410

    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->firstFrame:Ljava/lang/String;

    :goto_376
    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 402
    iget v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    move-object/from16 v0, v17

    iput v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    .line 403
    iget-wide v8, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->pubTime:J

    const-wide/16 v18, 0x0

    cmp-long v6, v8, v18

    if-lez v6, :cond_423

    iget-wide v8, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->pubTime:J

    :goto_38a
    move-object/from16 v0, v17

    iput-wide v8, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPubDate:J

    .line 404
    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->subtitle:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    .line 405
    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->subtitle:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_432

    const/4 v6, 0x1

    :goto_39d
    move-object/from16 v0, v17

    iput-boolean v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHideUpIcon:Z

    .line 406
    move-object/from16 v0, v17

    iput v5, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    .line 407
    iget-wide v8, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->plays:J

    const-wide/16 v18, 0x0

    cmp-long v6, v8, v18

    if-lez v6, :cond_3b7

    .line 408
    iget-wide v8, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->plays:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    .line 410
    :cond_3b7
    iget-wide v8, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->danmakus:J

    const-wide/16 v18, 0x0

    cmp-long v6, v8, v18

    if-lez v6, :cond_3c9

    .line 411
    iget-wide v8, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->danmakus:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    .line 413
    :cond_3c9
    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->badgeText:Ljava/lang/String;

    if-eqz v6, :cond_3e1

    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->badgeText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3e1

    .line 414
    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->badgeText:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeText:Ljava/lang/String;

    .line 415
    iget-object v4, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->badgeBgColor:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeBgColor:Ljava/lang/String;

    .line 417
    :cond_3e1
    if-lez p4, :cond_435

    .line 418
    move/from16 v0, p4

    move-object/from16 v1, v17

    iput v0, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 422
    :goto_3e9
    sget-boolean v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    move-object/from16 v0, v17

    iput-boolean v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 423
    aput-object v17, v16, v12

    .line 383
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto/16 :goto_30d

    .line 366
    :cond_3f6
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpCover:Ljava/lang/String;

    goto/16 :goto_177

    .line 372
    :cond_3fc
    const-string v4, "null"

    goto/16 :goto_1db

    :cond_400
    const-string v4, "null"

    goto/16 :goto_220

    .line 373
    :cond_404
    const-string v4, "null"

    goto/16 :goto_26f

    .line 376
    :cond_408
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_2c1

    .line 377
    :cond_40c
    const/4 v4, 0x2

    move v5, v4

    goto/16 :goto_2c5

    .line 399
    :cond_410
    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->cover:Ljava/lang/String;

    if-eqz v6, :cond_418

    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->cover:Ljava/lang/String;

    goto/16 :goto_376

    :cond_418
    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpCover:Ljava/lang/String;

    if-eqz v6, :cond_420

    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpCover:Ljava/lang/String;

    goto/16 :goto_376

    :cond_420
    move-object v6, v7

    goto/16 :goto_376

    .line 403
    :cond_423
    iget-wide v8, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->ctime:J

    const-wide/16 v18, 0x0

    cmp-long v6, v8, v18

    if-lez v6, :cond_42f

    iget-wide v8, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->ctime:J

    goto/16 :goto_38a

    :cond_42f
    move-wide v8, v10

    goto/16 :goto_38a

    .line 405
    :cond_432
    const/4 v6, 0x0

    goto/16 :goto_39d

    .line 420
    :cond_435
    iget v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    move-object/from16 v0, v17

    iput v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    goto :goto_3e9

    .line 425
    :cond_43c
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-static {v0, v13, v1, v2}, Lbl/xg;->a(Landroid/app/Activity;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;I)V

    .line 525
    :goto_445
    return-void

    .line 429
    :cond_446
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_681

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-lez v4, :cond_681

    .line 430
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    .line 432
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    if-eqz v5, :cond_68c

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_68c

    .line 433
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v4

    :cond_474
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    .line 434
    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v6, :cond_4a1

    .line 435
    const/4 v6, 0x0

    :goto_485
    iget-object v8, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_4a1

    .line 436
    iget-object v8, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 437
    const-string v9, "cid"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iget-wide v10, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_593

    .line 438
    iget-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    .line 443
    :cond_4a1
    iget-object v4, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-ne v5, v4, :cond_474

    .line 449
    :cond_4a5
    :goto_4a5
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    .line 450
    iget-object v4, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v4, v6}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v7

    .line 451
    const/4 v4, 0x0

    :goto_4b0
    if-ge v4, v6, :cond_676

    .line 452
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 453
    const-string v9, "cid"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    .line 454
    iget-wide v0, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    move-wide/from16 v16, v0

    cmp-long v9, v10, v16

    if-nez v9, :cond_597

    .line 455
    iget-object v9, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v9, v9, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iput v4, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 456
    iget-object v9, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v9, v9, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const/4 v10, 0x3

    iput v10, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    .line 457
    const-string v9, "arc"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 458
    if-eqz v8, :cond_589

    .line 459
    iget-object v9, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v9, v9, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v9, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    if-eqz v9, :cond_4ed

    iget-object v9, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v9, v9, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v9, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4f9

    .line 460
    :cond_4ed
    iget-object v9, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v9, v9, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const-string v10, "pic"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 462
    :cond_4f9
    const-string v9, "author"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 463
    if-eqz v9, :cond_521

    iget-object v10, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    if-eqz v10, :cond_515

    iget-object v10, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_521

    .line 464
    :cond_515
    iget-object v10, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const-string v11, "name"

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    .line 466
    :cond_521
    const-string v9, "stat"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 467
    if-eqz v9, :cond_571

    .line 468
    iget-object v10, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    if-eqz v10, :cond_53d

    iget-object v10, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_54d

    .line 469
    :cond_53d
    iget-object v10, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const-string v11, "view"

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    .line 471
    :cond_54d
    iget-object v10, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    if-eqz v10, :cond_561

    iget-object v10, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_571

    .line 472
    :cond_561
    iget-object v10, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v10, v10, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const-string v11, "danmaku"

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    .line 475
    :cond_571
    iget-object v9, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v9, v9, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v10, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPubDate:J

    const-wide/16 v16, 0x0

    cmp-long v9, v10, v16

    if-nez v9, :cond_589

    .line 476
    iget-object v9, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v9, v9, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const-string v10, "pubdate"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPubDate:J

    .line 479
    :cond_589
    iget-object v8, v13, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    aput-object v8, v7, v4

    .line 451
    :goto_58f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4b0

    .line 435
    :cond_593
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_485

    .line 481
    :cond_597
    new-instance v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {v9}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;-><init>()V

    .line 482
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSpid()I

    move-result v12

    iput v12, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 483
    const-string v12, "aid"

    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 484
    const-string v12, "page"

    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    const-string v15, "page"

    invoke-virtual {v12, v15}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 485
    const-string v12, "page"

    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    const-string v15, "from"

    invoke-virtual {v12, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 486
    const-string v12, "page"

    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    const-string v15, "vid"

    invoke-virtual {v12, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 487
    iput-wide v10, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 488
    const-string v10, "page"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    const-string v11, "weblink"

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 489
    const-string v10, "title"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 490
    const-string v10, "page"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    const-string v11, "duration"

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    .line 491
    iget-object v10, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    iput-object v10, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 492
    const-string v10, "arc"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 493
    if-eqz v10, :cond_648

    .line 494
    const-string v11, "pic"

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 495
    const-string v11, "author"

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 496
    if-eqz v11, :cond_620

    .line 497
    const-string v12, "name"

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    .line 499
    :cond_620
    const-string v11, "stat"

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 500
    if-eqz v11, :cond_640

    .line 501
    const-string v12, "view"

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    .line 502
    const-string v12, "danmaku"

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    .line 504
    :cond_640
    const-string v11, "pubdate"

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPubDate:J

    .line 506
    :cond_648
    const-string v10, "badge_info"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 507
    if-eqz v8, :cond_660

    .line 508
    const-string v10, "text"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeText:Ljava/lang/String;

    .line 509
    const-string v10, "bg_color"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeBgColor:Ljava/lang/String;

    .line 511
    :cond_660
    const/4 v8, 0x3

    iput v8, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    .line 512
    if-lez p4, :cond_671

    .line 513
    move/from16 v0, p4

    iput v0, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 517
    :goto_669
    sget-boolean v8, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v8, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 518
    aput-object v9, v7, v4

    goto/16 :goto_58f

    .line 515
    :cond_671
    iget v8, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    iput v8, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    goto :goto_669

    .line 521
    :cond_676
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-static {v0, v13, v1, v2}, Lbl/xg;->a(Landroid/app/Activity;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;I)V

    goto/16 :goto_445

    .line 524
    :cond_681
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-static {v0, v13, v1, v2}, Lbl/xg;->a(Landroid/app/Activity;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;I)V

    goto/16 :goto_445

    :cond_68c
    move-object v5, v4

    goto/16 :goto_4a5
.end method

.method public static b(Landroid/content/Context;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;I)V
    .locals 18

    .prologue
    .line 122
    invoke-static/range {p0 .. p0}, Lbl/aaj;->a(Landroid/content/Context;)Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v11

    .line 123
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v11, v2}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lbl/yr;->c(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-static {v11, v2}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getUGCseason()V

    .line 129
    iget-object v2, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v12

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSpid()I

    move-result v2

    iput v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 131
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iput-wide v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 132
    move-object/from16 v0, p2

    iget v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    iput v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 133
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    iput-object v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 134
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    iput-object v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 135
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mVid:Ljava/lang/String;

    iput-object v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 136
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mRawVid:Ljava/lang/String;

    iput-object v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 137
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    iput-wide v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 138
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mWebLink:Ljava/lang/String;

    iput-object v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 139
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mHasAlias:Z

    iput-boolean v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    .line 140
    move-object/from16 v0, p1

    iget v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    iput v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    .line 141
    move-object/from16 v0, p2

    iget v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    iput v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    .line 143
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    if-eqz v2, :cond_21c

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21c

    .line 144
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    iput-object v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    .line 148
    :goto_80
    sget-boolean v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 149
    if-lez p4, :cond_8a

    .line 150
    move/from16 v0, p4

    iput v0, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 152
    :cond_8a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v2, :cond_ab

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 155
    :cond_ab
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_cd

    .line 156
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    iput-wide v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 157
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mSeasonId:Ljava/lang/String;

    iput-object v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 158
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->cover:Ljava/lang/String;

    if-eqz v2, :cond_224

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->cover:Ljava/lang/String;

    :goto_cb
    iput-object v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 160
    :cond_cd
    invoke-static {v11}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 161
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-static {v11, v2}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 164
    :cond_de
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v2, :cond_26b

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_26b

    .line 165
    const-string v2, "bangumi"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_107

    const-string v2, "movie"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22a

    :cond_107
    const/4 v2, 0x1

    move v4, v2

    .line 166
    :goto_109
    if-eqz v4, :cond_22e

    const/4 v2, 0x1

    move v3, v2

    .line 167
    :goto_10d
    const-string v2, "xg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPageList\u5206\u652f | isPgc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | page.mFrom="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | pageListType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .line 169
    iget-object v2, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2, v13}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v14

    .line 170
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 172
    const/4 v2, 0x0

    move v10, v2

    :goto_155
    if-ge v10, v13, :cond_263

    .line 173
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 174
    new-instance v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {v15}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;-><init>()V

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSpid()I

    move-result v4

    iput v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 176
    iget v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTid:I

    iput v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    .line 177
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iput-wide v6, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 178
    iget v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    iput v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 179
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    iput-object v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 180
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mVid:Ljava/lang/String;

    iput-object v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 181
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mRawVid:Ljava/lang/String;

    iput-object v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 182
    iget-wide v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    iput-wide v6, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 183
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mWebLink:Ljava/lang/String;

    iput-object v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 184
    iget-boolean v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mHasAlias:Z

    iput-boolean v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    .line 185
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    iput-object v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 186
    iget-object v4, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    iput-object v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 187
    iget-wide v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    iput-wide v6, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 188
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->firstFrame:Ljava/lang/String;

    if-eqz v4, :cond_232

    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->firstFrame:Ljava/lang/String;

    .line 191
    :goto_1a4
    iput-object v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 192
    iget v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    iput v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    .line 193
    iget-wide v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->pubTime:J

    const-wide/16 v16, 0x0

    cmp-long v4, v6, v16

    if-lez v4, :cond_245

    iget-wide v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->pubTime:J

    :goto_1b4
    iput-wide v6, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPubDate:J

    .line 194
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->subtitle:Ljava/lang/String;

    iput-object v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    .line 195
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->subtitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_254

    const/4 v4, 0x1

    :goto_1c3
    iput-boolean v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHideUpIcon:Z

    .line 196
    iput v3, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    .line 197
    iget-wide v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->plays:J

    const-wide/16 v16, 0x0

    cmp-long v4, v6, v16

    if-lez v4, :cond_1d7

    .line 198
    iget-wide v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->plays:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    .line 200
    :cond_1d7
    iget-wide v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->danmakus:J

    const-wide/16 v16, 0x0

    cmp-long v4, v6, v16

    if-lez v4, :cond_1e7

    .line 201
    iget-wide v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->danmakus:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    .line 203
    :cond_1e7
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->badgeText:Ljava/lang/String;

    if-eqz v4, :cond_1fb

    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->badgeText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1fb

    .line 204
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->badgeText:Ljava/lang/String;

    iput-object v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeText:Ljava/lang/String;

    .line 205
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->badgeBgColor:Ljava/lang/String;

    iput-object v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeBgColor:Ljava/lang/String;

    .line 207
    :cond_1fb
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    if-eqz v4, :cond_257

    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_257

    .line 208
    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    iput-object v2, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    .line 212
    :goto_20b
    if-lez p4, :cond_25e

    .line 213
    move/from16 v0, p4

    iput v0, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 217
    :goto_211
    sget-boolean v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v2, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 218
    aput-object v15, v14, v10

    .line 172
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_155

    .line 146
    :cond_21c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    iput-object v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    goto/16 :goto_80

    .line 158
    :cond_224
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpCover:Ljava/lang/String;

    goto/16 :goto_cb

    .line 165
    :cond_22a
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_109

    .line 166
    :cond_22e
    const/4 v2, 0x2

    move v3, v2

    goto/16 :goto_10d

    .line 188
    :cond_232
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->cover:Ljava/lang/String;

    if-eqz v4, :cond_23a

    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->cover:Ljava/lang/String;

    goto/16 :goto_1a4

    :cond_23a
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpCover:Ljava/lang/String;

    if-eqz v4, :cond_242

    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpCover:Ljava/lang/String;

    goto/16 :goto_1a4

    :cond_242
    move-object v4, v5

    goto/16 :goto_1a4

    .line 193
    :cond_245
    iget-wide v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->ctime:J

    const-wide/16 v16, 0x0

    cmp-long v4, v6, v16

    if-lez v4, :cond_251

    iget-wide v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->ctime:J

    goto/16 :goto_1b4

    :cond_251
    move-wide v6, v8

    goto/16 :goto_1b4

    .line 195
    :cond_254
    const/4 v4, 0x0

    goto/16 :goto_1c3

    .line 210
    :cond_257
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    iput-object v2, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    goto :goto_20b

    .line 215
    :cond_25e
    iget v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    iput v2, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    goto :goto_211

    .line 220
    :cond_263
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v11, v1}, Lbl/xg;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;)V

    .line 322
    :goto_26a
    return-void

    .line 224
    :cond_26b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_4f6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_4f6

    .line 225
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    .line 227
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    if-eqz v3, :cond_4ff

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4ff

    .line 228
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v2

    :cond_299
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2ca

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    .line 229
    iget-object v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_2c6

    .line 230
    const/4 v4, 0x0

    :goto_2aa
    iget-object v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_2c6

    .line 231
    iget-object v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 232
    const-string v7, "cid"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    iget-wide v8, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3b8

    .line 233
    iget-object v3, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    .line 238
    :cond_2c6
    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-ne v3, v2, :cond_299

    .line 244
    :cond_2ca
    :goto_2ca
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    .line 245
    iget-object v2, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2, v5}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v6

    .line 246
    const/4 v2, 0x0

    move v4, v2

    :goto_2d6
    if-ge v4, v5, :cond_4ed

    .line 247
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 248
    const-string v2, "cid"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    .line 249
    iget-wide v14, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v2, v8, v14

    if-nez v2, :cond_3bc

    .line 250
    iget-object v2, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iput v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 251
    iget-object v2, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const/4 v8, 0x3

    iput v8, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    .line 252
    const-string v2, "arc"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 253
    if-eqz v2, :cond_3ad

    .line 254
    iget-object v7, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v7, v7, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v7, v7, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    if-eqz v7, :cond_311

    iget-object v7, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v7, v7, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v7, v7, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_31d

    .line 255
    :cond_311
    iget-object v7, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v7, v7, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const-string v8, "pic"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 257
    :cond_31d
    const-string v7, "author"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 258
    if-eqz v7, :cond_345

    iget-object v8, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    if-eqz v8, :cond_339

    iget-object v8, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_345

    .line 259
    :cond_339
    iget-object v8, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const-string v9, "name"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    .line 261
    :cond_345
    const-string v7, "stat"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 262
    if-eqz v7, :cond_395

    .line 263
    iget-object v8, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    if-eqz v8, :cond_361

    iget-object v8, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_371

    .line 264
    :cond_361
    iget-object v8, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const-string v9, "view"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    .line 266
    :cond_371
    iget-object v8, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    if-eqz v8, :cond_385

    iget-object v8, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_395

    .line 267
    :cond_385
    iget-object v8, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v8, v8, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const-string v9, "danmaku"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    .line 270
    :cond_395
    iget-object v7, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v7, v7, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v8, v7, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPubDate:J

    const-wide/16 v14, 0x0

    cmp-long v7, v8, v14

    if-nez v7, :cond_3ad

    .line 271
    iget-object v7, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v7, v7, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const-string v8, "pubdate"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPubDate:J

    .line 274
    :cond_3ad
    iget-object v2, v11, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    aput-object v2, v6, v4

    .line 246
    :goto_3b3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_2d6

    .line 230
    :cond_3b8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2aa

    .line 276
    :cond_3bc
    new-instance v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {v10}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;-><init>()V

    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSpid()I

    move-result v2

    iput v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 278
    const-string v2, "aid"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 279
    const-string v2, "page"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v13, "page"

    invoke-virtual {v2, v13}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 280
    const-string v2, "page"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v13, "from"

    invoke-virtual {v2, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 281
    const-string v2, "page"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v13, "vid"

    invoke-virtual {v2, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 282
    iput-wide v8, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 283
    const-string v2, "page"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v13, "weblink"

    invoke-virtual {v2, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 284
    const-string v2, "title"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 285
    const-string v2, "page"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v13, "duration"

    invoke-virtual {v2, v13}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    .line 286
    iget-object v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    iput-object v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 287
    const-string v2, "arc"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    .line 288
    if-eqz v13, :cond_495

    .line 289
    const-string v2, "pic"

    invoke-virtual {v13, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 290
    const-string v2, "author"

    invoke-virtual {v13, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    .line 291
    const-string v15, "xg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UGC\u5408\u96c6\u8f6c\u6362 | cid="

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " | arc.author="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v14, :cond_4e4

    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    :goto_458
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-eqz v14, :cond_46d

    .line 293
    const-string v2, "name"

    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    .line 295
    :cond_46d
    const-string v2, "stat"

    invoke-virtual {v13, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 296
    if-eqz v2, :cond_48d

    .line 297
    const-string v8, "view"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    .line 298
    const-string v8, "danmaku"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    .line 300
    :cond_48d
    const-string v2, "pubdate"

    invoke-virtual {v13, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPubDate:J

    .line 302
    :cond_495
    const-string v2, "xg"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UGC\u5408\u96c6\u8f6c\u6362 | mAuthor="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | mListType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v2, "badge_info"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 304
    if-eqz v2, :cond_4d3

    .line 305
    const-string v7, "text"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeText:Ljava/lang/String;

    .line 306
    const-string v7, "bg_color"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeBgColor:Ljava/lang/String;

    .line 308
    :cond_4d3
    const/4 v2, 0x3

    iput v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    .line 309
    if-lez p4, :cond_4e8

    .line 310
    move/from16 v0, p4

    iput v0, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 314
    :goto_4dc
    sget-boolean v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 315
    aput-object v10, v6, v4

    goto/16 :goto_3b3

    .line 291
    :cond_4e4
    const-string v2, "null"

    goto/16 :goto_458

    .line 312
    :cond_4e8
    iget v2, v12, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    iput v2, v10, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    goto :goto_4dc

    .line 318
    :cond_4ed
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v11, v1}, Lbl/xg;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;)V

    goto/16 :goto_26a

    .line 321
    :cond_4f6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v11, v1}, Lbl/xg;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;)V

    goto/16 :goto_26a

    :cond_4ff
    move-object v3, v2

    goto/16 :goto_2ca
.end method

.method private static getVtText(Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 630
    const-string v1, ""

    .line 631
    const-string v2, "xg"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVtText | epid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->epid:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " | statForUnity="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    :goto_25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "vt"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 633
    iget-object v0, p0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "vt"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 634
    if-eqz v2, :cond_7c

    .line 635
    const-string v0, "pure_text"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 646
    :cond_54
    :goto_54
    const-string v1, "xg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVtText | vtText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-object v0

    .line 631
    :cond_6d
    const-string v0, "null"

    goto :goto_25

    .line 639
    :cond_70
    const-string v0, "text"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    :cond_7c
    move-object v0, v1

    goto :goto_54
.end method

.method public static playCheese(Landroid/content/Context;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 554
    invoke-static {p0}, Lbl/aaj;->a(Landroid/content/Context;)Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 555
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbl/yr;->c(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 557
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 559
    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    .line 560
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSpid()I

    move-result v2

    iput v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 561
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iput-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 562
    iget v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    iput v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 563
    const-string v2, "cheese"

    iput-object v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 564
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 565
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mVid:Ljava/lang/String;

    iput-object v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 566
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mRawVid:Ljava/lang/String;

    iput-object v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 567
    iget-wide v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    iput-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 568
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mWebLink:Ljava/lang/String;

    iput-object v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 569
    iget-boolean v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mHasAlias:Z

    iput-boolean v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    .line 570
    iget v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    iput v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    .line 571
    iget v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    iput v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    .line 573
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCheeseInfo:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "season_id"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 574
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectLink:Ljava/lang/String;

    const-string v3, "ep"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 576
    if-lez p3, :cond_6c

    .line 577
    iput p3, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 579
    :cond_6c
    invoke-static {v0}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 580
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-static {v0, v2}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 582
    :cond_7b
    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v2, :cond_92

    .line 583
    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v3

    iput-object v3, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 584
    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 586
    :cond_92
    invoke-static {p0, v0}, Lcom/bilibili/tv/player/PlayerActivity;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 587
    return-void
.end method

.method public static playCheese2(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10

    .prologue
    .line 591
    invoke-static {p0}, Lbl/aaj;->a(Landroid/content/Context;)Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    .line 592
    const-string v0, "cover"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 593
    const-string v0, "up_info"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v2, "uname"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbl/yr;->c(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 594
    const-string v0, "title"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 596
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    .line 597
    const-string v0, "aid"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 598
    const-string v0, "index"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 599
    const-string v0, "cheese"

    iput-object v0, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 600
    const-string v0, "title"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 601
    const-string v0, "cid"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 602
    const-string v0, "duration"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    .line 604
    const-string v0, "season_id"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 605
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 607
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_d0

    .line 608
    const-string v0, "episodes"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .line 609
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v4

    .line 610
    const/4 v0, 0x0

    :goto_7e
    if-ge v0, v3, :cond_d0

    .line 611
    const-string v5, "episodes"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 612
    new-instance v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {v6}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;-><init>()V

    .line 613
    const-string v7, "aid"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 614
    const-string v7, "index"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 615
    const-string v7, "cheese"

    iput-object v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 616
    const-string v7, "cid"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 617
    const-string v7, "title"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 618
    const-string v7, "duration"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    .line 619
    iget-object v7, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    iput-object v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 620
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 621
    iget v5, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    iput v5, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 622
    aput-object v6, v4, v0

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 626
    :cond_d0
    invoke-static {p0, v1}, Lcom/bilibili/tv/player/PlayerActivity;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 627
    return-void
.end method
