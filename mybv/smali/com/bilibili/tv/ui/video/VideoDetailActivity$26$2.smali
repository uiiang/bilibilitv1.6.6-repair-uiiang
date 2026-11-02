.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$2;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;)V
    .locals 0

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2603
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2607
    :goto_a
    return-void

    .line 2606
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$a2:Lbl/mg;

    invoke-virtual {v2}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V

    goto :goto_a
.end method
