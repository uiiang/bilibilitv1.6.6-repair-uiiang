.class public Lbl/aaj;
.super Ljava/lang/Object;
.source "aaj.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bilibili/tv/player/basic/context/PlayerParams;
    .locals 8

    .prologue
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    const-string v2, "UI_TRANSITION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AAJ_START] aaj.a() creating PlayerParams, time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v2, Lcom/bilibili/tv/player/danmaku/DanmakuParams;

    invoke-direct {v2}, Lcom/bilibili/tv/player/danmaku/DanmakuParams;-><init>()V

    .line 18
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lbl/abd;->f(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/player/danmaku/DanmakuParams;->setDanmakuTextSizeScaleFactor(F)V

    .line 19
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lbl/abd;->g(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/player/danmaku/DanmakuParams;->setDanmakuAlphaFactor(F)V

    .line 20
    new-instance v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;

    new-instance v4, Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-direct {v4}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;-><init>()V

    invoke-direct {v3, v4, v2}, Lcom/bilibili/tv/player/basic/context/PlayerParams;-><init>(Lcom/bilibili/tv/player/basic/context/VideoViewParams;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;)V

    .line 21
    invoke-static {p0, v3}, Lbl/aaj;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)V

    .line 22
    const-string v2, "UI_TRANSITION"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AAJ_END] aaj.a() completed, elapsed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-object v3
.end method

.method public static a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 28
    invoke-static {p0}, Lbl/aam;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 29
    iput-boolean v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mResolveBiliCdnPlay:Z

    .line 30
    invoke-static {p0}, Lbl/abd;->h(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_54

    .line 41
    :goto_16
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    sget-boolean v1, Lbl/aam;->b:Z

    iput-boolean v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mEnableOpenSLES:Z

    .line 42
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    sget v1, Lbl/aam;->c:I

    iput v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mVoutViewType:I

    .line 43
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    sget v1, Lbl/aam;->e:I

    iput v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mCodecSkipLoopFilter:I

    .line 45
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0, v2}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->setDanmakuHideByDefault(Z)V

    .line 46
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    sget-boolean v1, Lbl/aam;->f:Z

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->setDanmakuDFMHardwareAcc(Z)V

    .line 47
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    sget-boolean v1, Lbl/aam;->h:Z

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->setDanmakuDuplicateMerging(Z)V

    .line 48
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    sget v1, Lbl/aam;->i:I

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->setDanmakuMaxOnScreen(I)V

    .line 49
    return-void

    .line 32
    :pswitch_43
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    const/4 v1, 0x3

    iput v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mCodecMode:I

    goto :goto_16

    .line 35
    :pswitch_49
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    const/4 v1, 0x4

    iput v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mCodecMode:I

    goto :goto_16

    .line 38
    :pswitch_4f
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iput v2, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mCodecMode:I

    goto :goto_16

    .line 30
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_43
        :pswitch_49
        :pswitch_4f
    .end packed-switch
.end method
