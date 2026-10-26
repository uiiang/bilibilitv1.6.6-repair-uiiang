.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$a2:Lbl/mg;

.field final synthetic val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$finalBvid:Ljava/lang/String;

.field final synthetic val$finalCid:J

.field final synthetic val$finalEpisodeId:J

.field final synthetic val$sessdata:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;JJLjava/lang/String;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lbl/mg;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$finalBvid:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$finalCid:J

    iput-wide p5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$finalEpisodeId:J

    iput-object p7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$sessdata:Ljava/lang/String;

    iput-object p8, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iput-object p9, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$a2:Lbl/mg;

    iput-object p10, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v1, -0x3e7

    const-wide/16 v12, 0x0

    const/4 v10, -0x1

    .line 1613
    :try_start_5
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1614
    const-string v2, "bvid"

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$finalBvid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    const-string v2, "cid"

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$finalCid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$finalEpisodeId:J

    cmp-long v2, v2, v12

    if-lez v2, :cond_2d

    .line 1617
    const-string v2, "ep_id"

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$finalEpisodeId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    :cond_2d
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 1621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.bilibili.com/x/player/wbi/v2?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1623
    new-instance v2, Lbl/qa$a;

    const-class v3, Lcom/bilibili/tv/api/video/BiliVideoDetail$JsonResponse;

    invoke-direct {v2, v3}, Lbl/qa$a;-><init>(Ljava/lang/Class;)V

    .line 1624
    invoke-virtual {v2, v0}, Lbl/qa$a;->a(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const/4 v2, 0x1

    .line 1625
    invoke-virtual {v0, v2}, Lbl/qa$a;->a(Z)Lbl/qa$a;

    move-result-object v0

    const-string v2, "Cookie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SESSDATA="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$sessdata:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1626
    invoke-virtual {v0, v2, v3}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v2, ""

    .line 1627
    invoke-virtual {v0, v2}, Lbl/qa$a;->b(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    new-instance v2, Lbl/qb;

    invoke-direct {v2}, Lbl/qb;-><init>()V

    .line 1628
    invoke-virtual {v0, v2}, Lbl/qa$a;->a(Lbl/qf;)Lbl/qa$a;

    move-result-object v0

    .line 1629
    invoke-virtual {v0}, Lbl/qa$a;->a()Lbl/qa;

    move-result-object v0

    .line 1631
    const-string v2, "GET"

    invoke-static {v0, v2}, Lbl/pz;->a(Lbl/qa;Ljava/lang/String;)Lbl/qe;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$JsonResponse;

    .line 1632
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$JsonResponse;->result()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 1634
    const-string v3, "HistoryDebug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FETCH_FORCE] resp code="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1635
    if-nez v2, :cond_16a

    move v0, v1

    :goto_a2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", msg="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1636
    if-nez v2, :cond_172

    const-string v0, "null"

    :goto_b0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1634
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    if-eqz v2, :cond_15f

    const-string v0, "code"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15f

    .line 1638
    const-string v0, "data"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1639
    if-eqz v0, :cond_15f

    .line 1640
    const-string v2, "last_play_cid"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 1641
    const-string v4, "last_play_time"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 1642
    div-int/lit16 v4, v0, 0x3e8

    .line 1643
    const-string v5, "HistoryDebug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FETCH_FORCE] reqCid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$finalCid:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", last_play_cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", last_play_time_raw="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", progressSec="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v8, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$finalCid:J

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getDurationForCid(Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I
    invoke-static {v5, v6, v8, v9}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I

    move-result v5

    .line 1654
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isLocalProgressProtected()Z
    invoke-static {v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z

    move-result v6

    if-eqz v6, :cond_17c

    if-eq v4, v10, :cond_17c

    .line 1655
    const-string v5, "HistoryDebug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FETCH_FORCE] stale backend ignored (protect 15000ms), keep player progressSec="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1657
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_17a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    :goto_140
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backendSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backendCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1655
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15f} :catch_1be

    .line 1696
    :cond_15f
    :goto_15f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1707
    return-void

    .line 1635
    :cond_16a
    :try_start_16a
    const-string v0, "code"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_a2

    .line 1636
    :cond_172
    const-string v0, "message"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b0

    :cond_17a
    move v0, v1

    .line 1657
    goto :goto_140

    .line 1659
    :cond_17c
    cmp-long v1, v2, v12

    if-lez v1, :cond_1d8

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$finalCid:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1d8

    .line 1665
    const-string v0, "HistoryDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FETCH_FORCE] auto-switch: last_play_cid(B)="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != reqCid(A)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$finalCid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; fall back to per-cid history (/x/v2/view) for A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$a2:Lbl/mg;

    invoke-virtual {v2}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_1bd} :catch_1be

    goto :goto_15f

    .line 1692
    :catch_1be
    move-exception v0

    .line 1693
    const-string v1, "HistoryDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FETCH_FORCE] error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15f

    .line 1669
    :cond_1d8
    if-ne v4, v10, :cond_206

    .line 1672
    :try_start_1da
    const-string v0, "HistoryDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FETCH_FORCE] backend marks finished (last_play_time=-1/-1000), set progress=-1, reqCid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$finalCid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 1674
    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$finalCid:J

    iput-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 1675
    const/4 v1, -0x1

    iput v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 1676
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    goto/16 :goto_15f

    .line 1677
    :cond_206
    if-gtz v4, :cond_240

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v1, :cond_240

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    if-lez v1, :cond_240

    .line 1679
    const-string v1, "HistoryDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FETCH_FORCE] backend progress invalid (raw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), keep local progressSec="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15f

    .line 1681
    :cond_240
    cmp-long v0, v2, v12

    if-lez v0, :cond_15f

    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$finalCid:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_15f

    .line 1685
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 1686
    iput-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 1687
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->normalizeFinishedProgress(JII)I
    invoke-static {v1, v2, v3, v4, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;JII)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 1688
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_25d} :catch_1be

    goto/16 :goto_15f
.end method
