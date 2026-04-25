.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$a2:Lbl/mg;

.field final synthetic val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

.field final synthetic val$finalBvid:Ljava/lang/String;

.field final synthetic val$finalCid:J

.field final synthetic val$finalEpisodeId:J

.field final synthetic val$sessdata:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;JJLjava/lang/String;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lbl/mg;)V
    .locals 1

    .prologue
    .line 1896
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalBvid:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalCid:J

    iput-wide p5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalEpisodeId:J

    iput-object p7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$sessdata:Ljava/lang/String;

    iput-object p8, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iput-object p9, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$a2:Lbl/mg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    .line 1899
    const/4 v2, 0x0

    .line 1901
    :try_start_4
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1902
    const-string v3, "bvid"

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalBvid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    const-string v3, "cid"

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalCid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalEpisodeId:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_2c

    .line 1905
    const-string v3, "ep_id"

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalEpisodeId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    :cond_2c
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v3

    invoke-virtual {v3, v0}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 1909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://api.bilibili.com/x/player/wbi/v2?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1911
    new-instance v3, Lbl/qa$a;

    const-class v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$JsonResponse;

    invoke-direct {v3, v4}, Lbl/qa$a;-><init>(Ljava/lang/Class;)V

    .line 1912
    invoke-virtual {v3, v0}, Lbl/qa$a;->a(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const/4 v3, 0x1

    .line 1913
    invoke-virtual {v0, v3}, Lbl/qa$a;->a(Z)Lbl/qa$a;

    move-result-object v0

    const-string v3, "Cookie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SESSDATA="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$sessdata:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1914
    invoke-virtual {v0, v3, v4}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v3, ""

    .line 1915
    invoke-virtual {v0, v3}, Lbl/qa$a;->b(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    new-instance v3, Lbl/qb;

    invoke-direct {v3}, Lbl/qb;-><init>()V

    .line 1916
    invoke-virtual {v0, v3}, Lbl/qa$a;->a(Lbl/qf;)Lbl/qa$a;

    move-result-object v0

    .line 1917
    invoke-virtual {v0}, Lbl/qa$a;->a()Lbl/qa;

    move-result-object v0

    .line 1919
    const-string v3, "GET"

    invoke-static {v0, v3}, Lbl/pz;->a(Lbl/qa;Ljava/lang/String;)Lbl/qe;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$JsonResponse;

    .line 1920
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$JsonResponse;->result()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1922
    if-eqz v0, :cond_e4

    const-string v3, "code"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_e4

    .line 1923
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1924
    if-eqz v0, :cond_e4

    .line 1925
    const-string v3, "last_play_cid"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    .line 1926
    const-string v3, "last_play_time"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b1} :catch_de

    .line 1928
    cmp-long v3, v4, v8

    if-lez v3, :cond_e4

    .line 1930
    :try_start_b5
    new-instance v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v6}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 1931
    cmp-long v2, v4, v8

    if-lez v2, :cond_db

    move-wide v2, v4

    :goto_bf
    iput-wide v2, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 1932
    iput v0, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 1934
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$1;

    invoke-direct {v2, p0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;Lcom/bilibili/tv/api/video/BiliVideoDetail$History;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_cd} :catch_e1

    move v0, v1

    .line 1955
    :goto_ce
    if-nez v0, :cond_da

    .line 1956
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$2;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1966
    :cond_da
    return-void

    .line 1931
    :cond_db
    :try_start_db
    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalCid:J
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_dd} :catch_e1

    goto :goto_bf

    .line 1951
    :catch_de
    move-exception v0

    :goto_df
    move v0, v2

    goto :goto_ce

    :catch_e1
    move-exception v0

    move v2, v1

    goto :goto_df

    :cond_e4
    move v0, v2

    goto :goto_ce
.end method
