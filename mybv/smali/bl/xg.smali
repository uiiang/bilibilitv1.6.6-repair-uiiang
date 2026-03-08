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
    .line 90
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lbl/xg;->b(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;III)V

    .line 91
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 292
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_1e

    .line 293
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 294
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    aput-object v1, v0, v3

    .line 296
    :cond_1e
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    aget-object v0, v0, v3

    sget-boolean v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v1, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 297
    invoke-static {p0, p1}, Lcom/bilibili/tv/player/PlayerActivity;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Landroid/content/Intent;

    move-result-object v0

    .line 298
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 300
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lbl/xg;->b(Landroid/content/Context;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;I)V

    .line 87
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;I)V
    .locals 0

    .prologue
    .line 94
    invoke-static {p0, p1, p2, p3, p4}, Lbl/xg;->b(Landroid/content/Context;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;I)V

    .line 95
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_1e

    .line 285
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 286
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    aput-object v2, v0, v1

    .line 288
    :cond_1e
    invoke-static {p0, p1}, Lcom/bilibili/tv/player/PlayerActivity;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 289
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

    move-result-object v4

    .line 34
    iget-object v2, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v5

    .line 35
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->long_title:Ljava/lang/String;

    invoke-static {v4, v2}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 36
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->cover:Ljava/lang/String;

    invoke-static {v4, v2}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 37
    move/from16 v0, p5

    invoke-static {v4, v0}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;I)V

    .line 38
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->aid:J

    iput-wide v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 39
    if-nez p1, :cond_2b

    .line 40
    const/high16 v2, -0x80000000

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 42
    :cond_2b
    iput-object p1, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 43
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->epid:J

    iput-wide v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 44
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->cid:J

    iput-wide v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 45
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->long_title:Ljava/lang/String;

    iput-object v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 46
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->index:Ljava/lang/String;

    iput-object v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    .line 47
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->from:Ljava/lang/String;

    iput-object v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 48
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->vid:Ljava/lang/String;

    iput-object v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 49
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->cover:Ljava/lang/String;

    iput-object v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 51
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->progress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    if-eqz v2, :cond_72

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->progress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    iget-wide v2, v2, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;->lastEpId:J

    iget-wide v6, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_72

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->progress:Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;

    iget-wide v2, v2, Lcom/bilibili/bangumi/api/uniform/BangumiUserStatus$WatchProgress;->lastEpProgress:J

    long-to-int v2, v2

    iput v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    .line 53
    :cond_72
    if-lez p4, :cond_78

    .line 54
    move/from16 v0, p4

    iput v0, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 56
    :cond_78
    if-eqz p3, :cond_f2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f2

    .line 57
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    .line 58
    iget-object v2, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2, v6}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v7

    .line 59
    const/4 v2, 0x0

    move v3, v2

    :goto_8c
    if-ge v3, v6, :cond_f2

    .line 60
    new-instance v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {v8}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;-><init>()V

    .line 61
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;

    .line 62
    iget-wide v10, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->epid:J

    iget-object v9, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v9, v9, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v12, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    cmp-long v9, v10, v12

    if-nez v9, :cond_b7

    .line 63
    iget-object v2, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iput v3, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 64
    iget-object v2, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    aput-object v2, v7, v3

    .line 59
    :goto_b3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_8c

    .line 66
    :cond_b7
    iget-object v9, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->index:Ljava/lang/String;

    iput-object v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    .line 67
    iget-object v9, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v9, v9, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v9, v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    iput-object v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 68
    iget-wide v10, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->aid:J

    iput-wide v10, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 69
    iget-wide v10, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->epid:J

    iput-wide v10, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 70
    iget-object v9, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->long_title:Ljava/lang/String;

    iput-object v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 71
    iget-wide v10, v2, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->cid:J

    iput-wide v10, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 72
    iput v3, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 73
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->from:Ljava/lang/String;

    iput-object v2, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->vid:Ljava/lang/String;

    iput-object v2, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 75
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->cover:Ljava/lang/String;

    iput-object v2, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 76
    iget v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    iput v2, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 77
    sget-boolean v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v2, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 78
    aput-object v8, v7, v3

    goto :goto_b3

    .line 82
    :cond_f2
    invoke-static {p0, v4}, Lcom/bilibili/tv/player/PlayerActivity;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public static b(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;III)V
    .locals 12

    .prologue
    .line 190
    invoke-static {p0}, Lbl/aaj;->a(Landroid/content/Context;)Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v4

    .line 191
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v4, v2}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lbl/yr;->c(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 193
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-static {v4, v2}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getUGCseason()V

    .line 197
    iget-object v2, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v5

    .line 198
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSpid()I

    move-result v2

    iput v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 199
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iput-wide v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 200
    iget v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    iput v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 201
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    iput-object v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 202
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    iput-object v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 203
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mVid:Ljava/lang/String;

    iput-object v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 204
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mRawVid:Ljava/lang/String;

    iput-object v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 205
    iget-wide v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    iput-wide v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 206
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mWebLink:Ljava/lang/String;

    iput-object v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 207
    iget-boolean v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mHasAlias:Z

    iput-boolean v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    .line 208
    iget v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    iput v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    .line 210
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    iput-object v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    .line 211
    move/from16 v0, p6

    iput v0, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    .line 212
    sget-boolean v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 214
    if-lez p4, :cond_5e

    .line 215
    move/from16 v0, p4

    iput v0, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 217
    :cond_5e
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v2, :cond_7b

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 220
    :cond_7b
    invoke-static {v4}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 221
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-static {v4, v2}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 224
    :cond_8a
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_11c

    .line 225
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .line 226
    iget-object v2, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v6

    .line 227
    const/4 v2, 0x0

    :goto_9b
    if-ge v2, v3, :cond_116

    .line 228
    iget-object v7, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 229
    new-instance v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {v8}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;-><init>()V

    .line 230
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSpid()I

    move-result v9

    iput v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 231
    const-string v9, "aid"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 232
    const-string v9, "page"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    const-string v10, "page"

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 233
    const-string v9, "page"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    const-string v10, "from"

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 234
    const-string v9, "page"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    const-string v10, "vid"

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 235
    const-string v9, "cid"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 236
    const-string v9, "page"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    const-string v10, "weblink"

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 237
    const-string v9, "title"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 238
    iget-object v7, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    iput-object v7, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 239
    if-lez p4, :cond_111

    .line 240
    move/from16 v0, p4

    iput v0, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 244
    :goto_108
    sget-boolean v7, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v7, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 245
    aput-object v8, v6, v2

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 242
    :cond_111
    iget v7, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    iput v7, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    goto :goto_108

    .line 247
    :cond_116
    move/from16 v0, p5

    invoke-static {p0, v4, p3, v0}, Lbl/xg;->a(Landroid/app/Activity;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;I)V

    .line 281
    :goto_11b
    return-void

    .line 251
    :cond_11c
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v2, :cond_18a

    .line 252
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 253
    iget-object v2, v4, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2, v6}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v7

    .line 254
    const/4 v2, 0x0

    move v3, v2

    :goto_12e
    if-ge v3, v6, :cond_184

    .line 255
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 256
    new-instance v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {v8}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;-><init>()V

    .line 257
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSpid()I

    move-result v9

    iput v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 258
    iget v9, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTid:I

    iput v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    .line 259
    iget-wide v10, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iput-wide v10, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 260
    iget v9, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    iput v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 261
    iget-object v9, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    iput-object v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 262
    iget-object v9, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mVid:Ljava/lang/String;

    iput-object v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 263
    iget-object v9, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mRawVid:Ljava/lang/String;

    iput-object v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 264
    iget-wide v10, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    iput-wide v10, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 265
    iget-object v9, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mWebLink:Ljava/lang/String;

    iput-object v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 266
    iget-boolean v9, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mHasAlias:Z

    iput-boolean v9, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    .line 267
    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    iput-object v2, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 268
    iget-object v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    iput-object v2, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 269
    if-lez p4, :cond_17f

    .line 270
    move/from16 v0, p4

    iput v0, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 274
    :goto_175
    sget-boolean v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v2, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 275
    aput-object v8, v7, v3

    .line 254
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_12e

    .line 272
    :cond_17f
    iget v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    iput v2, v8, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    goto :goto_175

    .line 277
    :cond_184
    move/from16 v0, p5

    invoke-static {p0, v4, p3, v0}, Lbl/xg;->a(Landroid/app/Activity;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;I)V

    goto :goto_11b

    .line 280
    :cond_18a
    move/from16 v0, p5

    invoke-static {p0, v4, p3, v0}, Lbl/xg;->a(Landroid/app/Activity;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;I)V

    goto :goto_11b
.end method

.method public static b(Landroid/content/Context;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;I)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-static {p0}, Lbl/aaj;->a(Landroid/content/Context;)Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v2

    .line 99
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v2, v1}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lbl/yr;->c(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 101
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-static {v2, v1}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getUGCseason()V

    .line 105
    iget-object v1, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v3

    .line 106
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSpid()I

    move-result v1

    iput v1, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 107
    iget-wide v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iput-wide v4, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 108
    iget v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    iput v1, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 109
    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    iput-object v1, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 110
    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    iput-object v1, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 111
    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mVid:Ljava/lang/String;

    iput-object v1, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 112
    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mRawVid:Ljava/lang/String;

    iput-object v1, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 113
    iget-wide v4, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    iput-wide v4, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 114
    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mWebLink:Ljava/lang/String;

    iput-object v1, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 115
    iget-boolean v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mHasAlias:Z

    iput-boolean v1, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    .line 116
    iget v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    iput v1, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    .line 118
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    iput-object v1, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    .line 119
    sget-boolean v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v1, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 120
    if-lez p4, :cond_59

    .line 121
    iput p4, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 123
    :cond_59
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v1, :cond_76

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v4, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 126
    :cond_76
    invoke-static {v2}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 127
    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-static {v2, v1}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 130
    :cond_85
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_112

    .line 131
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    .line 132
    iget-object v4, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v4, v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v4

    .line 133
    :goto_95
    if-ge v0, v1, :cond_10e

    .line 134
    iget-object v5, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 135
    new-instance v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {v6}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;-><init>()V

    .line 136
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSpid()I

    move-result v7

    iput v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 137
    const-string v7, "aid"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 138
    const-string v7, "page"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-string v8, "page"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 139
    const-string v7, "page"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-string v8, "from"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 140
    const-string v7, "page"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-string v8, "vid"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 141
    const-string v7, "cid"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 142
    const-string v7, "page"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-string v8, "weblink"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 143
    const-string v7, "title"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 144
    iget-object v5, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    iput-object v5, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 145
    if-lez p4, :cond_109

    .line 146
    iput p4, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 150
    :goto_100
    sget-boolean v5, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v5, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 151
    aput-object v6, v4, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    .line 148
    :cond_109
    iget v5, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    iput v5, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    goto :goto_100

    .line 153
    :cond_10e
    invoke-static {p0, v2, p3}, Lbl/xg;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;)V

    .line 187
    :goto_111
    return-void

    .line 157
    :cond_112
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v1, :cond_17b

    .line 158
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 159
    iget-object v1, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1, v4}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v5

    move v1, v0

    .line 160
    :goto_123
    if-ge v1, v4, :cond_177

    .line 161
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 162
    new-instance v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {v6}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;-><init>()V

    .line 163
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSpid()I

    move-result v7

    iput v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 164
    iget v7, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTid:I

    iput v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    .line 165
    iget-wide v8, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iput-wide v8, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 166
    iget v7, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    iput v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 167
    iget-object v7, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    iput-object v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 168
    iget-object v7, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mVid:Ljava/lang/String;

    iput-object v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 169
    iget-object v7, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mRawVid:Ljava/lang/String;

    iput-object v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 170
    iget-wide v8, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    iput-wide v8, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 171
    iget-object v7, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mWebLink:Ljava/lang/String;

    iput-object v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 172
    iget-boolean v7, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mHasAlias:Z

    iput-boolean v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    .line 173
    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    iput-object v0, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 174
    iget-object v0, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    iput-object v0, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 175
    if-lez p4, :cond_172

    .line 176
    iput p4, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 180
    :goto_168
    sget-boolean v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    iput-boolean v0, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 181
    aput-object v6, v5, v1

    .line 160
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_123

    .line 178
    :cond_172
    iget v0, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    iput v0, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    goto :goto_168

    .line 183
    :cond_177
    invoke-static {p0, v2, p3}, Lbl/xg;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;)V

    goto :goto_111

    .line 186
    :cond_17b
    invoke-static {p0, v2, p3}, Lbl/xg;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;Landroid/os/Bundle;)V

    goto :goto_111
.end method

.method public static playCheese(Landroid/content/Context;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 303
    invoke-static {p0}, Lbl/aaj;->a(Landroid/content/Context;)Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 304
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbl/yr;->c(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 306
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 308
    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    .line 309
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getSpid()I

    move-result v2

    iput v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSpid:I

    .line 310
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iput-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 311
    iget v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    iput v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 312
    const-string v2, "cheese"

    iput-object v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 313
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 314
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mVid:Ljava/lang/String;

    iput-object v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mVid:Ljava/lang/String;

    .line 315
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mRawVid:Ljava/lang/String;

    iput-object v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mRawVid:Ljava/lang/String;

    .line 316
    iget-wide v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    iput-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 317
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mWebLink:Ljava/lang/String;

    iput-object v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mWeb:Ljava/lang/String;

    .line 318
    iget-boolean v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mHasAlias:Z

    iput-boolean v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHasAlias:Z

    .line 319
    iget v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    iput v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mTid:I

    .line 321
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCheeseInfo:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "season_id"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 322
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectLink:Ljava/lang/String;

    const-string v3, "ep"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 324
    if-lez p3, :cond_68

    .line 325
    iput p3, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 327
    :cond_68
    invoke-static {v0}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 328
    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-static {v0, v2}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 330
    :cond_77
    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v2, :cond_8e

    .line 331
    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v3

    iput-object v3, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 332
    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 334
    :cond_8e
    invoke-static {p0, v0}, Lcom/bilibili/tv/player/PlayerActivity;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 335
    return-void
.end method

.method public static playCheese2(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10

    .prologue
    .line 339
    invoke-static {p0}, Lbl/aaj;->a(Landroid/content/Context;)Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    .line 340
    const-string v0, "cover"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 341
    const-string v0, "up_info"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v2, "uname"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbl/yr;->c(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 342
    const-string v0, "title"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbl/yr;->b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V

    .line 344
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    .line 345
    const-string v0, "aid"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 346
    const-string v0, "index"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 347
    const-string v0, "cheese"

    iput-object v0, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 348
    const-string v0, "title"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 349
    const-string v0, "cid"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 351
    const-string v0, "season_id"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 352
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 354
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_c0

    .line 355
    const-string v0, "episodes"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .line 356
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParamsArray(I)[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v4

    .line 357
    const/4 v0, 0x0

    :goto_76
    if-ge v0, v3, :cond_c0

    .line 358
    const-string v5, "episodes"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 359
    new-instance v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {v6}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;-><init>()V

    .line 360
    const-string v7, "aid"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 361
    const-string v7, "index"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPage:I

    .line 362
    const-string v7, "cheese"

    iput-object v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 363
    const-string v7, "cid"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 364
    const-string v7, "title"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 365
    iget-object v7, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    iput-object v7, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    .line 366
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 367
    iget v5, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    iput v5, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 368
    aput-object v6, v4, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 372
    :cond_c0
    invoke-static {p0, v1}, Lcom/bilibili/tv/player/PlayerActivity;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 373
    return-void
.end method
