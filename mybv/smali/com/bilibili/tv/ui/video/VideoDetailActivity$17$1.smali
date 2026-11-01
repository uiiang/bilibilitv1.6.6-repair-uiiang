.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$17$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;

.field final synthetic val$fellBack:[Z


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1810
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17$1;->val$fellBack:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1813
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1827
    :cond_b
    :goto_b
    return-void

    .line 1818
    :cond_c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17$1;->val$fellBack:[Z

    aget-boolean v0, v0, v6

    if-nez v0, :cond_1a

    .line 1819
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const/4 v1, 0x1

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mHistoryResolved:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 1821
    :cond_1a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "history resolved \u2192 start UI build | fetchCost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1822
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;

    iget-wide v4, v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;->val$perfFetchStart:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms | fellBack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17$1;->val$fellBack:[Z

    aget-boolean v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1821
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    .line 1824
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 1825
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_b
.end method
