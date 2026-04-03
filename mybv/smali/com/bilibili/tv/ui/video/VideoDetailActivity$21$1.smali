.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->onSuccess(Lcom/bilibili/tv/api/video/PgcInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

.field final synthetic val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0

    .prologue
    .line 2236
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2239
    const-string v0, "PgcInfo"

    const-string v1, "=== runOnUiThread: showPgcInfo ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 2242
    if-eqz v0, :cond_17

    .line 2243
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2245
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 2246
    if-eqz v0, :cond_24

    .line 2247
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 2250
    :cond_24
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Ljava/lang/String;)V

    .line 2251
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2252
    if-eqz v0, :cond_44

    .line 2253
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2256
    :cond_44
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2257
    if-eqz v0, :cond_51

    .line 2258
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2260
    :cond_51
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2261
    if-eqz v0, :cond_5e

    .line 2262
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2265
    :cond_5e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 2266
    const-string v0, "PgcInfo"

    const-string v1, "showPgcInfo done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2269
    const-string v0, "PgcInfo"

    const-string v1, "updateBasicVideoInfo done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2272
    const-string v0, "PgcInfo"

    const-string v1, "initDefaultPlayButtons done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2275
    const-string v0, "PgcInfo"

    const-string v1, "loadArchiveRelation done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_e2

    .line 2278
    const-string v0, "PgcInfo"

    const-string v1, "History already set from PGC progress, updating display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2280
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2281
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e1

    .line 2282
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    .line 2288
    :cond_e1
    :goto_e1
    return-void

    .line 2285
    :cond_e2
    const-string v0, "PgcInfo"

    const-string v1, "No history, calling loadHistory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    goto :goto_e1
.end method
