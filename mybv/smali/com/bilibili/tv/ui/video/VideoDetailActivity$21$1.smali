.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

.field final synthetic val$history:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;Lcom/bilibili/tv/api/video/BiliVideoDetail$History;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2151
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->val$history:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2163
    :cond_a
    :goto_a
    return-void

    .line 2157
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->val$history:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 2158
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2159
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2160
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 2161
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    goto :goto_a
.end method
