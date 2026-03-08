.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1049
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 1051
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_32

    .line 1052
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 1053
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 1054
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->playVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V
    invoke-static {v3, v4, v0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V

    .line 1058
    :goto_31
    return-void

    .line 1056
    :cond_32
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->playVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V

    goto :goto_31
.end method
