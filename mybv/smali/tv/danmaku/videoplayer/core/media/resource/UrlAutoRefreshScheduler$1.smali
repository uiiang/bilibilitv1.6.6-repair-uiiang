.class Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler$1;
.super Ljava/lang/Object;
.source "UrlAutoRefreshScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->scheduleAutoRefresh(Ljava/util/List;Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;


# direct methods
.method constructor <init>(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler$1;->this$0:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler$1;->this$0:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    # getter for: Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->manager:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->access$100(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler$1;->this$0:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    # getter for: Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentToken:I
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->access$000(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->isTokenValid(I)Z

    move-result v0

    if-nez v0, :cond_45

    .line 57
    const-string v0, "UrlAutoRefreshScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token mismatch, skip refresh: expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler$1;->this$0:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    # getter for: Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentToken:I
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->access$000(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler$1;->this$0:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    .line 58
    # getter for: Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->manager:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->access$100(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

    move-result-object v2

    invoke-virtual {v2}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->getRefreshToken()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_44
    :goto_44
    return-void

    .line 62
    :cond_45
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler$1;->this$0:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    # getter for: Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->manager:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->access$100(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->shouldRefresh()Z

    move-result v0

    if-nez v0, :cond_59

    .line 63
    const-string v0, "UrlAutoRefreshScheduler"

    const-string v1, "Refresh throttled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 67
    :cond_59
    const-string v0, "UrlAutoRefreshScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto refresh triggered: bvid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler$1;->this$0:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    # getter for: Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentBvid:Ljava/lang/String;
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->access$200(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler$1;->this$0:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    # getter for: Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentCid:J
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->access$300(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler$1;->this$0:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    # getter for: Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->manager:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->access$100(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->getRefreshCallback()Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 70
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler$1;->this$0:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    # getter for: Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->manager:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->access$100(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->recordRefresh()V

    .line 71
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler$1;->this$0:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    # getter for: Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->manager:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->access$100(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->getRefreshCallback()Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;

    move-result-object v0

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;->onRefreshNeeded()V

    goto :goto_44
.end method
