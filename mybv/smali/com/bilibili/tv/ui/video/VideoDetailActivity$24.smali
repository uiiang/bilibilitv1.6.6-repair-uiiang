.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;
.super Lbl/vm;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vm",
        "<",
        "Lcom/bilibili/okretro/GeneralResponse",
        "<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 2372
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0}, Lbl/vm;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancel()Z
    .locals 1

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 2379
    return-void
.end method

.method public onSuccess(Lcom/bilibili/okretro/GeneralResponse;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/okretro/GeneralResponse",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2382
    if-eqz p1, :cond_59

    iget-object v0, p1, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz v0, :cond_59

    .line 2383
    iget-object v0, p1, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 2384
    const-string v1, "history"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2385
    const-string v1, "history"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 2386
    if-eqz v0, :cond_59

    .line 2387
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 2389
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isLocalProgressProtected()Z
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_81

    const/4 v2, -0x1

    if-eq v1, v2, :cond_81

    .line 2390
    const-string v2, "HistoryDebug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FETCH_FALLBACK] stale backend ignored (protect), keep player progressSec="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2392
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    :goto_44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", backendSec="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2390
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :cond_59
    :goto_59
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2408
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2409
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7d

    .line 2410
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    .line 2412
    :cond_7d
    return-void

    .line 2392
    :cond_7e
    const/16 v0, -0x3e7

    goto :goto_44

    .line 2395
    :cond_81
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 2396
    const-string v3, "cid"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 2397
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-wide v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v8, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 2399
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getDurationForCid(Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I
    invoke-static {v3, v6, v8, v9}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I

    move-result v3

    .line 2397
    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->normalizeFinishedProgress(JII)I
    invoke-static {v0, v4, v5, v1, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;JII)I

    move-result v0

    iput v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 2400
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iput-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 2401
    const-string v0, "HistoryDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FETCH_FALLBACK] history cid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", progressSec="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2372
    check-cast p1, Lcom/bilibili/okretro/GeneralResponse;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->onSuccess(Lcom/bilibili/okretro/GeneralResponse;)V

    return-void
.end method
