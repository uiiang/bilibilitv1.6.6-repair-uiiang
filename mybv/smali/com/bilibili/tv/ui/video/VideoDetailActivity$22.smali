.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;
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
    .line 2243
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0}, Lbl/vm;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancel()Z
    .locals 1

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 2250
    return-void
.end method

.method public onSuccess(Lcom/bilibili/okretro/GeneralResponse;)V
    .locals 6
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
    .line 2253
    if-eqz p1, :cond_59

    iget-object v0, p1, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz v0, :cond_59

    .line 2254
    iget-object v0, p1, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 2255
    const-string v1, "history"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2256
    const-string v1, "history"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 2257
    if-eqz v0, :cond_59

    .line 2258
    new-instance v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v1}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 2259
    const-string v2, "cid"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 2260
    const-string v2, "progress"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 2261
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 2262
    const-string v0, "HistoryDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FETCH_FALLBACK] history cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", progressSec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :cond_59
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2268
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2269
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7d

    .line 2270
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    .line 2272
    :cond_7d
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2243
    check-cast p1, Lcom/bilibili/okretro/GeneralResponse;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->onSuccess(Lcom/bilibili/okretro/GeneralResponse;)V

    return-void
.end method
