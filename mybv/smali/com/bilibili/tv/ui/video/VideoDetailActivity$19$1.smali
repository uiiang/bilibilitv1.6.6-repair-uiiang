.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;

.field final synthetic val$history:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;Lcom/bilibili/tv/api/video/BiliVideoDetail$History;)V
    .locals 0

    .prologue
    .line 1955
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$1;->val$history:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$1;->val$history:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 1959
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 1960
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 1961
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_36

    .line 1962
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    .line 1964
    :cond_36
    return-void
.end method
