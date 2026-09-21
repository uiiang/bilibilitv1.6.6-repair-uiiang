.class Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->retryPlayUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 404
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->activityDestroyed:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$900(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 405
    const-string v0, "LivePlayerActivity"

    const-string v1, "retryPlayUrl: Activity \u5df2\u9500\u6bc1, \u5ffd\u7565\u672c\u6b21\u8bf7\u6c42"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_10
    return-void

    .line 408
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryRunning:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1000(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 409
    const-string v0, "LivePlayerActivity"

    const-string v1, "retryPlayUrl: \u4e0a\u4e00\u6b21\u91cd\u8bd5\u4ecd\u5728\u8fdb\u884c\u4e2d, \u5ffd\u7565\u672c\u6b21\u8bf7\u6c42"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 412
    :cond_21
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryCount:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$200(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)I

    move-result v0

    if-lt v0, v3, :cond_5f

    .line 413
    const-string v0, "LivePlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryPlayUrl: \u91cd\u8bd5\u6b21\u6570\u5df2\u8fbe\u4e0a\u9650("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryCount:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$200(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    const-string v1, "\u76f4\u64ad\u6d41\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_10

    .line 417
    :cond_5f
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # operator++ for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryCount:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$208(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)I

    .line 418
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    const/4 v1, 0x1

    # setter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryRunning:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1002(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;Z)Z

    .line 419
    const-string v0, "LivePlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryPlayUrl: \u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryCount:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$200(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6b21\u91cd\u65b0\u83b7\u53d6\u64ad\u653e\u5730\u5740, room="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$100(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->cdnExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1200(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_10
.end method
