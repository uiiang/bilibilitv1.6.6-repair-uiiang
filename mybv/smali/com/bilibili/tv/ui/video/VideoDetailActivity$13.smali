.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcSeasonInfo(Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$accessKey:Ljava/lang/String;

.field final synthetic val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

.field final synthetic val$seasonId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V
    .locals 0

    .prologue
    .line 1621
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;->val$accessKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;->val$seasonId:Ljava/lang/String;

    iput-object p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;->val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1625
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1626
    const-string v1, "access_key"

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;->val$accessKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    const-string v1, "season_id"

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;->val$seasonId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    const-string v1, "season_type"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    const-string v1, "track_path"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    const-string v1, "platform"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    const-string v1, "mobi_app"

    invoke-static {}, Lcom/bilibili/api/BiliConfig;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    const-string v1, "appkey"

    invoke-static {}, Lcom/bilibili/api/BiliConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    const-string v1, "build"

    invoke-static {}, Lcom/bilibili/api/BiliConfig;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    invoke-static {v0}, Lcom/bilibili/nativelibrary/LibBili;->a(Ljava/util/Map;)Lcom/bilibili/nativelibrary/SignedQuery;

    move-result-object v0

    .line 1636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://api.bilibili.com/pgc/view/app/season?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bilibili/nativelibrary/SignedQuery;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1638
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-interface {v0, v1}, Lmybl/MyBiliApiService;->getPgcSeasonInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 1639
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 1641
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_95

    .line 1642
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;->val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;->onError(Ljava/lang/String;)V

    .line 1670
    :goto_94
    return-void

    .line 1646
    :cond_95
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 1647
    if-nez v0, :cond_b0

    .line 1648
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;->val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

    const-string v1, "Response body is null"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;->onError(Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a4} :catch_a5

    goto :goto_94

    .line 1667
    :catch_a5
    move-exception v0

    .line 1668
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;->val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;->onError(Ljava/lang/String;)V

    goto :goto_94

    .line 1652
    :cond_b0
    :try_start_b0
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 1653
    if-eqz v1, :cond_d7

    .line 1654
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;->val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "API error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;->onError(Ljava/lang/String;)V

    goto :goto_94

    .line 1658
    :cond_d7
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1659
    if-nez v0, :cond_e7

    .line 1660
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;->val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

    const-string v1, "Result is null"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;->onError(Ljava/lang/String;)V

    goto :goto_94

    .line 1664
    :cond_e7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/bilibili/tv/api/video/PgcInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo;

    .line 1665
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;->val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

    invoke-interface {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;->onSuccess(Lcom/bilibili/tv/api/video/PgcInfo;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_f8} :catch_a5

    goto :goto_94
.end method
