.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

.field final synthetic val$history:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;Lcom/bilibili/tv/api/video/BiliVideoDetail$History;)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->val$history:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->val$history:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 1133
    const-string v0, "VideoDetailApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "History from wbi/v2: cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->val$history:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->val$history:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 1135
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 1136
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_60

    .line 1137
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    .line 1139
    :cond_60
    return-void
.end method
