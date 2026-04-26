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
    .line 177
    iput-object p1, p0, Lbl/yt$a;->this$0:Lbl/yt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Lbl/yt;Lbl/yt$1;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lbl/yt$a;-><init>(Lbl/yt;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 182
    iget-object v0, p0, Lbl/yt$a;->this$0:Lbl/yt;

    iget-object v0, v0, Lbl/yt;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 183
    if-nez v0, :cond_e

    .line 240
    :cond_d
    :goto_d
    return-void

    .line 186
    :cond_e
    const/16 v1, 0x27db

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    iget-object v1, p0, Lbl/yt$a;->this$0:Lbl/yt;

    iget-object v1, v1, Lbl/yt;->b:Lbl/yh;

    iget-object v2, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 188
    iget-object v1, p0, Lbl/yt$a;->this$0:Lbl/yt;

    # getter for: Lbl/yt;->c:Landroid/content/Context;
    invoke-static {v1}, Lbl/yt;->access$100(Lbl/yt;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lbl/ym;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Lbl/yl;

    move-result-object v1

    .line 189
    invoke-static {}, Lbl/yn;->a()Lbl/yn;

    move-result-object v3

    invoke-virtual {v3, v4}, Lbl/yn;->a(I)V

    .line 190
    if-nez v1, :cond_18d

    .line 191
    iget-object v1, p0, Lbl/yt$a;->this$0:Lbl/yt;

    # getter for: Lbl/yt;->j:Lbl/yu;
    invoke-static {v1}, Lbl/yt;->access$200(Lbl/yt;)Lbl/yu;

    move-result-object v1

    iget-object v3, p0, Lbl/yt$a;->this$0:Lbl/yt;

    # getter for: Lbl/yt;->c:Landroid/content/Context;
    invoke-static {v3}, Lbl/yt;->access$100(Lbl/yt;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lbl/yt$a;->this$0:Lbl/yt;

    iget-object v4, v4, Lbl/yt;->b:Lbl/yh;

    iget-boolean v4, v4, Lbl/yh;->c:Z

    invoke-virtual {v1, v3, v2, v4}, Lbl/yu;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;Z)Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    move-result-object v1

    .line 196
    :goto_42
    if-nez v1, :cond_49

    .line 197
    const/16 v2, 0x27dd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 199
    :cond_49
    iget-object v0, p0, Lbl/yt$a;->this$0:Lbl/yt;

    iget-object v0, v0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->setDanmakuDocument(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;)V

    .line 200
    iget-object v0, p0, Lbl/yt$a;->this$0:Lbl/yt;

    iget-object v0, v0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 201
    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 202
    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 203
    iget-object v0, p0, Lbl/yt$a;->this$0:Lbl/yt;

    iget-object v0, v0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuDocument()Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    move-result-object v0

    .line 204
    instance-of v3, v0, Lbl/yl;

    if-eqz v3, :cond_d

    .line 205
    check-cast v0, Lbl/yl;

    .line 206
    invoke-virtual {v0}, Lbl/yl;->getAid()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-virtual {v0}, Lbl/yl;->getCid()Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-virtual {v0}, Lbl/yl;->getCommentStorageSize()I

    move-result v5

    .line 209
    invoke-virtual {v0}, Lbl/yl;->getInputStreamCount()I

    move-result v6

    .line 211
    const-string v7, "DanmakuInit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[\u5206P\u5207\u6362] oldAid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " oldCid="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newAid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newCid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldStorageSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldStreamCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v3, "new_danmaku"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lbl/yl;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    invoke-virtual {v0, v1, v2}, Lbl/yl;->setAidAndCid(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v3, 0x0

    iput-object v3, v0, Lbl/yl;->e:Ljava/io/InputStream;

    .line 218
    invoke-virtual {v0}, Lbl/yl;->clearInputStreams()V

    .line 219
    invoke-virtual {v0}, Lbl/yl;->clearCommentStorage()V

    .line 221
    const-string v3, "DanmakuInit"

    const-string v4, "[\u6e05\u7406\u5b8c\u6210] storageCleared=true streamsCleared=true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :try_start_f2
    iget-object v3, p0, Lbl/yt$a;->this$0:Lbl/yt;

    # getter for: Lbl/yt;->c:Landroid/content/Context;
    invoke-static {v3}, Lbl/yt;->access$100(Lbl/yt;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v1, v2, v4}, Lmybl/DanmakuSegmentLoader;->loadSegmentDanmakuStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 225
    if-eqz v3, :cond_124

    .line 226
    invoke-virtual {v0, v3}, Lbl/yl;->addInputStream(Ljava/io/InputStream;)V

    .line 227
    const-string v0, "DanmakuInit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u521d\u59cb\u52a0\u8f7d] segment=1 \u6210\u529f aid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_124} :catch_16e

    .line 230
    :cond_124
    :try_start_124
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 231
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0x57e40

    invoke-virtual {v1, v0, v3, v4}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->add(III)Z

    .line 232
    const-string v1, "DanmakuInit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u8bb0\u5f55\u521d\u59cb\u5206\u6bb5] cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " segment=1 range=0-360000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_151
    .catch Ljava/lang/NumberFormatException; {:try_start_124 .. :try_end_151} :catch_153
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_151} :catch_16e

    goto/16 :goto_d

    .line 233
    :catch_153
    move-exception v0

    .line 234
    :try_start_154
    const-string v0, "DanmakuInit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u8bb0\u5f55\u521d\u59cb\u5206\u6bb5\u5931\u8d25] cid parse error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_16c} :catch_16e

    goto/16 :goto_d

    .line 236
    :catch_16e
    move-exception v0

    .line 237
    const-string v1, "DanmakuInit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u521d\u59cb\u52a0\u8f7d] segment=1 \u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 193
    :cond_18d
    invoke-static {}, Lbl/yn;->a()Lbl/yn;

    move-result-object v2

    invoke-virtual {v2}, Lbl/yn;->b()V

    .line 194
    invoke-static {}, Lbl/yn;->a()Lbl/yn;

    move-result-object v2

    invoke-virtual {v2}, Lbl/yn;->d()V

    goto/16 :goto_42
.end method
