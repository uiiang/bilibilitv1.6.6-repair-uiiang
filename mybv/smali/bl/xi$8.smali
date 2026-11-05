.class Lbl/xi$8;
.super Ljava/lang/Object;
.source "xi.java"

# interfaces
.implements Lbl/PlayUrlPrefetch$StateProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xi;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xi;


# direct methods
.method constructor <init>(Lbl/xi;)V
    .locals 0

    .prologue
    .line 1378
    iput-object p1, p0, Lbl/xi$8;->this$0:Lbl/xi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentEpisode()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;
    .locals 2

    .prologue
    .line 1404
    iget-object v0, p0, Lbl/xi$8;->this$0:Lbl/xi;

    invoke-virtual {v0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 1405
    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-nez v1, :cond_e

    .line 1406
    :cond_c
    const/4 v0, 0x0

    .line 1408
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    goto :goto_d
.end method

.method public currentPositionMs()I
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lbl/xi$8;->this$0:Lbl/xi;

    invoke-virtual {v0}, Lbl/xi;->x()I

    move-result v0

    return v0
.end method

.method public durationMs()I
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1386
    .line 1387
    iget-object v0, p0, Lbl/xi$8;->this$0:Lbl/xi;

    invoke-virtual {v0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 1388
    if-eqz v0, :cond_2e

    .line 1389
    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->getDuration()J

    move-result-wide v0

    .line 1391
    :goto_e
    cmp-long v4, v0, v2

    if-gtz v4, :cond_1d

    .line 1395
    :try_start_12
    iget-object v4, p0, Lbl/xi$8;->this$0:Lbl/xi;

    invoke-virtual {v4}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v4

    invoke-interface {v4}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getDuration()I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1b} :catch_2c

    move-result v0

    int-to-long v0, v0

    .line 1399
    :cond_1d
    :goto_1d
    cmp-long v2, v0, v2

    if-lez v2, :cond_2a

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29

    .line 1396
    :catch_2c
    move-exception v4

    goto :goto_1d

    :cond_2e
    move-wide v0, v2

    goto :goto_e
.end method

.method public episodeList()[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Lbl/xi$8;->this$0:Lbl/xi;

    invoke-virtual {v0}, Lbl/xi;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 1414
    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-nez v1, :cond_e

    .line 1415
    :cond_c
    const/4 v0, 0x0

    .line 1417
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->getResolveParamsArray()[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    goto :goto_d
.end method

.method public expectedQuality()I
    .locals 1

    .prologue
    .line 1422
    invoke-virtual {p0}, Lbl/xi$8;->currentEpisode()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 1423
    if-nez v0, :cond_9

    const/16 v0, 0x40

    :goto_8
    return v0

    :cond_9
    iget v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    goto :goto_8
.end method
