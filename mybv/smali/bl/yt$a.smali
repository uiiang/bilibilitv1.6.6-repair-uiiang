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
    .line 176
    iput-object p1, p0, Lbl/yt$a;->this$0:Lbl/yt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Lbl/yt;Lbl/yt$1;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lbl/yt$a;-><init>(Lbl/yt;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 181
    iget-object v0, p0, Lbl/yt$a;->this$0:Lbl/yt;

    iget-object v0, v0, Lbl/yt;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 182
    if-nez v0, :cond_e

    .line 220
    :cond_d
    :goto_d
    return-void

    .line 185
    :cond_e
    const/16 v1, 0x27db

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    iget-object v1, p0, Lbl/yt$a;->this$0:Lbl/yt;

    iget-object v1, v1, Lbl/yt;->b:Lbl/yh;

    iget-object v2, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 187
    iget-object v1, p0, Lbl/yt$a;->this$0:Lbl/yt;

    # getter for: Lbl/yt;->c:Landroid/content/Context;
    invoke-static {v1}, Lbl/yt;->access$100(Lbl/yt;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lbl/ym;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Lbl/yl;

    move-result-object v1

    .line 188
    invoke-static {}, Lbl/yn;->a()Lbl/yn;

    move-result-object v3

    invoke-virtual {v3, v4}, Lbl/yn;->a(I)V

    .line 189
    if-nez v1, :cond_ee

    .line 190
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

    .line 195
    :goto_42
    if-nez v1, :cond_49

    .line 196
    const/16 v2, 0x27dd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    :cond_49
    iget-object v0, p0, Lbl/yt$a;->this$0:Lbl/yt;

    iget-object v0, v0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->setDanmakuDocument(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;)V

    .line 199
    iget-object v0, p0, Lbl/yt$a;->this$0:Lbl/yt;

    iget-object v0, v0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 200
    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 201
    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 202
    iget-object v0, p0, Lbl/yt$a;->this$0:Lbl/yt;

    iget-object v0, v0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuDocument()Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    move-result-object v0

    .line 203
    instance-of v3, v0, Lbl/yl;

    if-eqz v3, :cond_d

    .line 204
    check-cast v0, Lbl/yl;

    .line 205
    const-string v3, "new_danmaku"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lbl/yl;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v0, v1, v2}, Lbl/yl;->setAidAndCid(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v3, 0x0

    iput-object v3, v0, Lbl/yl;->e:Ljava/io/InputStream;

    .line 208
    invoke-virtual {v0}, Lbl/yl;->clearInputStreams()V

    .line 209
    const-string v3, "DanmakuInit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u8bbe\u7f6e\u6807\u5fd7] DANMAKU_NEW=true aid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cleared old data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :try_start_b6
    iget-object v3, p0, Lbl/yt$a;->this$0:Lbl/yt;

    # getter for: Lbl/yt;->c:Landroid/content/Context;
    invoke-static {v3}, Lbl/yt;->access$100(Lbl/yt;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v1, v2, v4}, Lmybl/DanmakuSegmentLoader;->loadSegmentDanmakuStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_d

    .line 213
    invoke-virtual {v0, v1}, Lbl/yl;->addInputStream(Ljava/io/InputStream;)V

    .line 214
    const-string v0, "DanmakuInit"

    const-string v1, "[\u521d\u59cb\u52a0\u8f7d] segment=1 \u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_cd} :catch_cf

    goto/16 :goto_d

    .line 216
    :catch_cf
    move-exception v0

    .line 217
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

    .line 192
    :cond_ee
    invoke-static {}, Lbl/yn;->a()Lbl/yn;

    move-result-object v2

    invoke-virtual {v2}, Lbl/yn;->b()V

    .line 193
    invoke-static {}, Lbl/yn;->a()Lbl/yn;

    move-result-object v2

    invoke-virtual {v2}, Lbl/yn;->d()V

    goto/16 :goto_42
.end method
