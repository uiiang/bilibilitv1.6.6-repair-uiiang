.class public Lmybl/RankingRequest;
.super Ljava/lang/Object;
.source "RankingRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RankingRequest"

.field private static volatile client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClient()Lokhttp3/OkHttpClient;
    .locals 5

    .prologue
    .line 25
    sget-object v0, Lmybl/RankingRequest;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_2f

    .line 26
    const-class v1, Lmybl/RankingRequest;

    monitor-enter v1

    .line 27
    :try_start_7
    sget-object v0, Lmybl/RankingRequest;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_2e

    .line 28
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v2, 0x1770

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x1770

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x1770

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lmybl/RankingRequest;->client:Lokhttp3/OkHttpClient;

    .line 34
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_32

    .line 36
    :cond_2f
    sget-object v0, Lmybl/RankingRequest;->client:Lokhttp3/OkHttpClient;

    return-object v0

    .line 34
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public static getRanking(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/area/BiliVideoV2;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x3e8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.bilibili.com/x/web-interface/ranking/v2?rid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&type=all"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v3, "RankingRequest"

    const-string v4, "========== Request Details =========="

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v3, "RankingRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v3, "RankingRequest"

    const-string v4, "Request Method: GET"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v3, "RankingRequest"

    const-string v4, "Request Headers:"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v3, "RankingRequest"

    const-string v4, "  User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v3, "RankingRequest"

    const-string v4, "  Referer: https://www.bilibili.com"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v3, "RankingRequest"

    const-string v4, "  Accept: application/json, text/plain, */*"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v3, "RankingRequest"

    const-string v4, "  Accept-Language: zh-CN,zh;q=0.9,en;q=0.8"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 56
    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v3, "User-Agent"

    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"

    .line 58
    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v3, "Referer"

    const-string v4, "https://www.bilibili.com"

    .line 59
    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v3, "Accept"

    const-string v4, "application/json, text/plain, */*"

    .line 60
    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v3, "Accept-Language"

    const-string v4, "zh-CN,zh;q=0.9,en;q=0.8"

    .line 61
    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 64
    :try_start_97
    invoke-static {}, Lmybl/RankingRequest;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a2} :catch_d4

    move-result-object v4

    const/4 v5, 0x0

    .line 65
    :try_start_a4
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_f7

    .line 66
    const-string v0, "RankingRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_c6} :catch_19f
    .catchall {:try_start_a4 .. :try_end_c6} :catchall_384

    .line 154
    if-eqz v4, :cond_cd

    if-eqz v1, :cond_f3

    :try_start_ca
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_cd} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_d4

    :cond_cd
    :goto_cd
    move-object v0, v1

    .line 156
    :cond_ce
    :goto_ce
    return-object v0

    .line 154
    :catch_cf
    move-exception v0

    :try_start_d0
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_d4

    goto :goto_cd

    :catch_d4
    move-exception v0

    .line 155
    const-string v2, "RankingRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 156
    goto :goto_ce

    .line 154
    :cond_f3
    :try_start_f3
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f6} :catch_d4

    goto :goto_cd

    .line 70
    :cond_f7
    :try_start_f7
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 71
    if-nez v0, :cond_116

    .line 72
    const-string v0, "RankingRequest"

    const-string v2, "Response body is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_f7 .. :try_end_104} :catch_19f
    .catchall {:try_start_f7 .. :try_end_104} :catchall_384

    .line 154
    if-eqz v4, :cond_10b

    if-eqz v1, :cond_112

    :try_start_108
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_10b} :catch_10d
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10b} :catch_d4

    :cond_10b
    :goto_10b
    move-object v0, v1

    .line 73
    goto :goto_ce

    .line 154
    :catch_10d
    move-exception v0

    :try_start_10e
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_10b

    :cond_112
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_115} :catch_d4

    goto :goto_10b

    .line 76
    :cond_116
    :try_start_116
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    .line 77
    const-string v0, "RankingRequest"

    const-string v6, "========== Response Details =========="

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v0, "RankingRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response Code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v0, "RankingRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response Message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "RankingRequest"

    const-string v6, "Response Headers:"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v4}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ab

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    const-string v7, "RankingRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19e
    .catch Ljava/lang/Throwable; {:try_start_116 .. :try_end_19e} :catch_19f
    .catchall {:try_start_116 .. :try_end_19e} :catchall_384

    goto :goto_16c

    .line 64
    :catch_19f
    move-exception v0

    :try_start_1a0
    throw v0
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_1a1

    .line 154
    :catchall_1a1
    move-exception v2

    move-object v3, v0

    :goto_1a3
    if-eqz v4, :cond_1aa

    if-eqz v3, :cond_3c5

    :try_start_1a7
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_1aa
    .catch Ljava/lang/Throwable; {:try_start_1a7 .. :try_end_1aa} :catch_3bf
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1aa} :catch_d4

    :cond_1aa
    :goto_1aa
    :try_start_1aa
    throw v2
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1ab} :catch_d4

    .line 84
    :cond_1ab
    :try_start_1ab
    const-string v0, "RankingRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response Body Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v6, "RankingRequest"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response Body (first 1000 chars): "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_25f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "..."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 88
    const-string v3, "code"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 89
    const-string v6, "message"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    const-string v7, "RankingRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "API Response: code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", message="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-eqz v3, :cond_26a

    .line 94
    const-string v0, "RankingRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "API error: code="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_255
    .catch Ljava/lang/Throwable; {:try_start_1ab .. :try_end_255} :catch_19f
    .catchall {:try_start_1ab .. :try_end_255} :catchall_384

    .line 154
    if-eqz v4, :cond_25c

    if-eqz v1, :cond_266

    :try_start_259
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_25c
    .catch Ljava/lang/Throwable; {:try_start_259 .. :try_end_25c} :catch_261
    .catch Ljava/lang/Exception; {:try_start_259 .. :try_end_25c} :catch_d4

    :cond_25c
    :goto_25c
    move-object v0, v1

    .line 95
    goto/16 :goto_ce

    :cond_25f
    move-object v0, v3

    .line 85
    goto :goto_1f4

    .line 154
    :catch_261
    move-exception v0

    :try_start_262
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_25c

    :cond_266
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_269
    .catch Ljava/lang/Exception; {:try_start_262 .. :try_end_269} :catch_d4

    goto :goto_25c

    .line 99
    :cond_26a
    :try_start_26a
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 100
    if-nez v0, :cond_292

    .line 101
    const-string v0, "RankingRequest"

    const-string v2, "Data is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_27e
    .catch Ljava/lang/Throwable; {:try_start_26a .. :try_end_27e} :catch_19f
    .catchall {:try_start_26a .. :try_end_27e} :catchall_384

    .line 154
    if-eqz v4, :cond_ce

    if-eqz v1, :cond_28d

    :try_start_282
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_285
    .catch Ljava/lang/Throwable; {:try_start_282 .. :try_end_285} :catch_287
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_285} :catch_d4

    goto/16 :goto_ce

    :catch_287
    move-exception v2

    :try_start_288
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_ce

    :cond_28d
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_290
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_290} :catch_d4

    goto/16 :goto_ce

    .line 106
    :cond_292
    :try_start_292
    const-string v3, "list"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 107
    if-eqz v6, :cond_2a0

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c0

    .line 108
    :cond_2a0
    const-string v0, "RankingRequest"

    const-string v2, "List is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2ac
    .catch Ljava/lang/Throwable; {:try_start_292 .. :try_end_2ac} :catch_19f
    .catchall {:try_start_292 .. :try_end_2ac} :catchall_384

    .line 154
    if-eqz v4, :cond_ce

    if-eqz v1, :cond_2bb

    :try_start_2b0
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_2b3
    .catch Ljava/lang/Throwable; {:try_start_2b0 .. :try_end_2b3} :catch_2b5
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2b3} :catch_d4

    goto/16 :goto_ce

    :catch_2b5
    move-exception v2

    :try_start_2b6
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_ce

    :cond_2bb
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_2be
    .catch Ljava/lang/Exception; {:try_start_2b6 .. :try_end_2be} :catch_d4

    goto/16 :goto_ce

    .line 112
    :cond_2c0
    :try_start_2c0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 113
    :goto_2c6
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I
    :try_end_2c9
    .catch Ljava/lang/Throwable; {:try_start_2c0 .. :try_end_2c9} :catch_19f
    .catchall {:try_start_2c0 .. :try_end_2c9} :catchall_384

    move-result v2

    if-ge v3, v2, :cond_389

    .line 115
    :try_start_2cc
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 116
    new-instance v7, Lcom/bilibili/tv/api/area/BiliVideoV2;

    invoke-direct {v7}, Lcom/bilibili/tv/api/area/BiliVideoV2;-><init>()V

    .line 119
    const-string v8, "title"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->title:Ljava/lang/String;

    .line 120
    const-string v8, "pic"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->cover:Ljava/lang/String;

    .line 121
    const-string v8, "aid"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->param:Ljava/lang/String;

    .line 124
    const-string v8, "owner"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 125
    if-eqz v8, :cond_301

    .line 126
    const-string v9, "name"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->name:Ljava/lang/String;

    .line 130
    :cond_301
    const-string v8, "stat"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 131
    if-eqz v8, :cond_329

    .line 132
    const-string v9, "view"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->play:I

    .line 133
    const-string v9, "danmaku"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->danmaku:I

    .line 134
    const-string v9, "reply"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->reply:I

    .line 135
    const-string v9, "favorite"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->favourite:I

    .line 139
    :cond_329
    const-string v8, "duration"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->duration:I

    .line 140
    const-string v8, "pubdate"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->pubdate:J

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bilibili://video/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->param:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->uri:Ljava/lang/String;

    .line 142
    const-string v2, "av"

    iput-object v2, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->jumpTo:Ljava/lang/String;

    .line 144
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_357
    .catch Ljava/lang/Exception; {:try_start_2cc .. :try_end_357} :catch_35c
    .catch Ljava/lang/Throwable; {:try_start_2cc .. :try_end_357} :catch_19f
    .catchall {:try_start_2cc .. :try_end_357} :catchall_384

    .line 113
    :goto_357
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2c6

    .line 145
    :catch_35c
    move-exception v2

    .line 146
    :try_start_35d
    const-string v7, "RankingRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing video "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_357

    .line 154
    :catchall_384
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto/16 :goto_1a3

    .line 150
    :cond_389
    const-string v2, "RankingRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsed "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " videos"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ab
    .catch Ljava/lang/Throwable; {:try_start_35d .. :try_end_3ab} :catch_19f
    .catchall {:try_start_35d .. :try_end_3ab} :catchall_384

    .line 154
    if-eqz v4, :cond_ce

    if-eqz v1, :cond_3ba

    :try_start_3af
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_3b2
    .catch Ljava/lang/Throwable; {:try_start_3af .. :try_end_3b2} :catch_3b4
    .catch Ljava/lang/Exception; {:try_start_3af .. :try_end_3b2} :catch_d4

    goto/16 :goto_ce

    :catch_3b4
    move-exception v2

    :try_start_3b5
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_ce

    :cond_3ba
    invoke-virtual {v4}, Lokhttp3/Response;->close()V

    goto/16 :goto_ce

    :catch_3bf
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1aa

    :cond_3c5
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_3c8
    .catch Ljava/lang/Exception; {:try_start_3b5 .. :try_end_3c8} :catch_d4

    goto/16 :goto_1aa
.end method
