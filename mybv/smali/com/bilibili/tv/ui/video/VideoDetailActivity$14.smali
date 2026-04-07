.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;
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
    .line 1668
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;->val$accessKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;->val$seasonId:Ljava/lang/String;

    iput-object p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;->val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1672
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1673
    const-string v1, "access_key"

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;->val$accessKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    const-string v1, "season_id"

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;->val$seasonId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    const-string v1, "season_type"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    const-string v1, "track_path"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    const-string v1, "platform"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    const-string v1, "mobi_app"

    invoke-static {}, Lcom/bilibili/api/BiliConfig;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    const-string v1, "appkey"

    invoke-static {}, Lcom/bilibili/api/BiliConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    const-string v1, "build"

    invoke-static {}, Lcom/bilibili/api/BiliConfig;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    invoke-static {v0}, Lcom/bilibili/nativelibrary/LibBili;->a(Ljava/util/Map;)Lcom/bilibili/nativelibrary/SignedQuery;

    move-result-object v0

    .line 1683
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

    .line 1685
    const-string v0, "PgcSeasonApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-interface {v0, v1}, Lmybl/MyBiliApiService;->getPgcSeasonInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 1688
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 1690
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_ad

    .line 1691
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;->val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

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

    .line 1722
    :goto_ac
    return-void

    .line 1695
    :cond_ad
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 1696
    if-nez v0, :cond_e4

    .line 1697
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;->val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

    const-string v1, "Response body is null"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;->onError(Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_bc} :catch_bd

    goto :goto_ac

    .line 1718
    :catch_bd
    move-exception v0

    .line 1719
    const-string v1, "PgcSeasonApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPgcSeasonInfo error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1720
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;->val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;->onError(Ljava/lang/String;)V

    goto :goto_ac

    .line 1703
    :cond_e4
    :try_start_e4
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 1704
    if-eqz v1, :cond_10b

    .line 1705
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;->val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

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

    goto :goto_ac

    .line 1709
    :cond_10b
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1710
    if-nez v0, :cond_11b

    .line 1711
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;->val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

    const-string v1, "Result is null"

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;->onError(Ljava/lang/String;)V

    goto :goto_ac

    .line 1715
    :cond_11b
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/bilibili/tv/api/video/PgcInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo;

    .line 1716
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;->val$callback:Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;

    invoke-interface {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;->onSuccess(Lcom/bilibili/tv/api/video/PgcInfo;)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_12c} :catch_bd

    goto :goto_ac
.end method
