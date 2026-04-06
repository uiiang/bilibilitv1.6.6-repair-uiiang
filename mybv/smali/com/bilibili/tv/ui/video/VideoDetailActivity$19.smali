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
    .line 1926
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

    .line 1929
    const/4 v2, 0x0

    .line 1931
    :try_start_4
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1932
    const-string v3, "bvid"

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalBvid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    const-string v3, "cid"

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalCid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalEpisodeId:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_2c

    .line 1935
    const-string v3, "ep_id"

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalEpisodeId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    :cond_2c
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v3

    invoke-virtual {v3, v0}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 1939
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://api.bilibili.com/x/player/wbi/v2?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1940
    const-string v3, "HistoryApi"

    const-string v4, "========== History API Request =========="

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    const-string v3, "HistoryApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    const-string v3, "HistoryApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bvid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalBvid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalCid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ep_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalEpisodeId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    new-instance v3, Lbl/qa$a;

    const-class v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$JsonResponse;

    invoke-direct {v3, v4}, Lbl/qa$a;-><init>(Ljava/lang/Class;)V

    .line 1945
    invoke-virtual {v3, v0}, Lbl/qa$a;->a(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const/4 v3, 0x1

    .line 1946
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

    .line 1947
    invoke-virtual {v0, v3, v4}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v3, ""

    .line 1948
    invoke-virtual {v0, v3}, Lbl/qa$a;->b(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    new-instance v3, Lbl/qb;

    invoke-direct {v3}, Lbl/qb;-><init>()V

    .line 1949
    invoke-virtual {v0, v3}, Lbl/qa$a;->a(Lbl/qf;)Lbl/qa$a;

    move-result-object v0

    .line 1950
    invoke-virtual {v0}, Lbl/qa$a;->a()Lbl/qa;

    move-result-object v0

    .line 1952
    const-string v3, "GET"

    invoke-static {v0, v3}, Lbl/pz;->a(Lbl/qa;Ljava/lang/String;)Lbl/qe;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$JsonResponse;

    .line 1953
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$JsonResponse;->result()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 1955
    const-string v4, "HistoryApi"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_172

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    :goto_f5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    if-eqz v3, :cond_195

    const-string v0, "code"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_195

    .line 1958
    const-string v0, "data"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1959
    if-eqz v0, :cond_195

    .line 1960
    const-string v3, "last_play_cid"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    .line 1961
    const-string v3, "last_play_time"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 1963
    const-string v3, "HistoryApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "last_play_cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", last_play_time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_148} :catch_178

    .line 1965
    cmp-long v3, v4, v8

    if-lez v3, :cond_195

    .line 1967
    :try_start_14c
    new-instance v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v6}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 1968
    cmp-long v2, v4, v8

    if-lez v2, :cond_175

    move-wide v2, v4

    :goto_156
    iput-wide v2, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 1969
    iput v0, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 1971
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$1;

    invoke-direct {v2, p0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;Lcom/bilibili/tv/api/video/BiliVideoDetail$History;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_164} :catch_197

    move v0, v1

    .line 1992
    :goto_165
    if-nez v0, :cond_171

    .line 1993
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19$2;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2003
    :cond_171
    return-void

    .line 1955
    :cond_172
    :try_start_172
    const-string v0, "null"
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_174} :catch_178

    goto :goto_f5

    .line 1968
    :cond_175
    :try_start_175
    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;->val$finalCid:J
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_177} :catch_197

    goto :goto_156

    .line 1988
    :catch_178
    move-exception v0

    .line 1989
    :goto_179
    const-string v1, "HistoryApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadHistory error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_195
    move v0, v2

    goto :goto_165

    .line 1988
    :catch_197
    move-exception v0

    move v2, v1

    goto :goto_179
.end method
