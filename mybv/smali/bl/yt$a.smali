.class public Lbl/yt$a;
.super Ljava/lang/Object;
.source "yt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/yt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lbl/yt;


# direct methods
.method private constructor <init>(Lbl/yt;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lbl/yt$a;->this$0:Lbl/yt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Lbl/yt;Lbl/yt$1;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lbl/yt$a;-><init>(Lbl/yt;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 189
    iget-object v0, p0, Lbl/yt$a;->this$0:Lbl/yt;

    iget-object v0, v0, Lbl/yt;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 190
    if-nez v0, :cond_d

    .line 208
    :goto_c
    return-void

    .line 193
    :cond_d
    const/16 v1, 0x27db

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 194
    iget-object v0, p0, Lbl/yt$a;->this$0:Lbl/yt;

    iget-object v0, v0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 197
    new-instance v1, Lbl/yl;

    invoke-direct {v1}, Lbl/yl;-><init>()V

    .line 199
    :try_start_1d
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_5a

    .line 201
    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbl/yl;->setAidAndCid(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "DanmakuSegment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[yt] \u521d\u59cb\u5316\u5206\u6bb5\u6587\u6863 aid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_5a} :catch_66

    .line 207
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lbl/yt$a;->this$0:Lbl/yt;

    iget-object v0, v0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->setDanmakuDocument(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;)V

    goto :goto_c

    .line 204
    :catch_66
    move-exception v0

    .line 205
    const-string v2, "DanmakuSegment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set aid cid error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a
.end method
