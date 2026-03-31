.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;->onSuccess(Lcom/bilibili/tv/api/video/PgcInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

.field final synthetic val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0

    .prologue
    .line 2131
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 2135
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_47

    .line 2136
    const-string v0, "PgcInfo"

    const-string v1, "History already set from PGC progress, updating display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2138
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2139
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_46

    .line 2140
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    .line 2145
    :cond_46
    :goto_46
    return-void

    .line 2143
    :cond_47
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    goto :goto_46
.end method
