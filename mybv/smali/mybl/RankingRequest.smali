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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClient()Lokhttp3/OkHttpClient;
    .locals 5

    .prologue
    .line 27
    sget-object v0, Lmybl/RankingRequest;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_2f

    .line 28
    const-class v1, Lmybl/RankingRequest;

    monitor-enter v1

    .line 29
    :try_start_7
    sget-object v0, Lmybl/RankingRequest;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_2e

    .line 30
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v2, 0x1770

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x1770

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x1770

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lmybl/RankingRequest;->client:Lokhttp3/OkHttpClient;

    .line 36
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_32

    .line 38
    :cond_2f
    sget-object v0, Lmybl/RankingRequest;->client:Lokhttp3/OkHttpClient;

    return-object v0

    .line 36
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public static getRanking(I)Ljava/util/List;
    .locals 10
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
    const/16 v9, 0x3e8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
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

    move-result-object v3

    .line 50
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v4

    .line 53
    const-string v0, "RankingRequest"

    const-string v5, "========== Request Details =========="

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v0, "RankingRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "RankingRequest"

    const-string v5, "Request Method: GET"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v0, "RankingRequest"

    const-string v5, "Request Headers:"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v0, "RankingRequest"

    const-string v5, "  User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, "RankingRequest"

    const-string v5, "  Referer: https://www.bilibili.com"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v0, "RankingRequest"

    const-string v5, "  Accept: application/json, text/plain, */*"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "RankingRequest"

    const-string v5, "  Accept-Language: zh-CN,zh;q=0.9,en;q=0.8"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v5, "RankingRequest"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Cookie: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_101

    const-string v0, "exists"

    :goto_83
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 64
    invoke-virtual {v0, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v3, "User-Agent"

    const-string v5, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"

    .line 66
    invoke-virtual {v0, v3, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v3, "Referer"

    const-string v5, "https://www.bilibili.com"

    .line 67
    invoke-virtual {v0, v3, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v3, "Accept"

    const-string v5, "application/json, text/plain, */*"

    .line 68
    invoke-virtual {v0, v3, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v3, "Accept-Language"

    const-string v5, "zh-CN,zh;q=0.9,en;q=0.8"

    .line 69
    invoke-virtual {v0, v3, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 72
    if-eqz v4, :cond_c8

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c8

    .line 73
    const-string v3, "Cookie"

    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 76
    :cond_c8
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 82
    :try_start_cc
    invoke-static {}, Lmybl/RankingRequest;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d7} :catch_3c8
    .catchall {:try_start_cc .. :try_end_d7} :catchall_3c2

    move-result-object v3

    .line 83
    :try_start_d8
    invoke-virtual {v3}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_104

    .line 84
    const-string v0, "RankingRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request failed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_fa} :catch_1a1
    .catchall {:try_start_d8 .. :try_end_fa} :catchall_381

    .line 176
    if-eqz v3, :cond_ff

    .line 178
    :try_start_fc
    invoke-virtual {v3}, Lokhttp3/Response;->close()V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_ff} :catch_3b4

    :cond_ff
    :goto_ff
    move-object v0, v1

    .line 174
    :cond_100
    :goto_100
    return-object v0

    .line 61
    :cond_101
    const-string v0, "null"

    goto :goto_83

    .line 88
    :cond_104
    :try_start_104
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 89
    if-nez v0, :cond_118

    .line 90
    const-string v0, "RankingRequest"

    const-string v2, "Response body is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_111} :catch_1a1
    .catchall {:try_start_104 .. :try_end_111} :catchall_381

    .line 176
    if-eqz v3, :cond_116

    .line 178
    :try_start_113
    invoke-virtual {v3}, Lokhttp3/Response;->close()V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_116} :catch_3b7

    :cond_116
    :goto_116
    move-object v0, v1

    .line 91
    goto :goto_100

    .line 94
    :cond_118
    :try_start_118
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    .line 95
    const-string v0, "RankingRequest"

    const-string v5, "========== Response Details =========="

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v0, "RankingRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response Code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "RankingRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v0, "RankingRequest"

    const-string v5, "Response Headers:"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_16e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    const-string v6, "RankingRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_1a0} :catch_1a1
    .catchall {:try_start_118 .. :try_end_1a0} :catchall_381

    goto :goto_16e

    .line 172
    :catch_1a1
    move-exception v0

    move-object v2, v3

    .line 173
    :goto_1a3
    :try_start_1a3
    const-string v3, "RankingRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1bf
    .catchall {:try_start_1a3 .. :try_end_1bf} :catchall_3c5

    .line 176
    if-eqz v2, :cond_1c4

    .line 178
    :try_start_1c1
    invoke-virtual {v2}, Lokhttp3/Response;->close()V
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1c4} :catch_3bd

    :cond_1c4
    :goto_1c4
    move-object v0, v1

    .line 174
    goto/16 :goto_100

    .line 102
    :cond_1c7
    :try_start_1c7
    const-string v0, "RankingRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response Body Length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v5, "RankingRequest"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response Body (first 1000 chars): "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v9, :cond_279

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "..."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_210
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 106
    const-string v4, "code"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    .line 107
    const-string v5, "message"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    const-string v6, "RankingRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "API Response: code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", message="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-eqz v4, :cond_27b

    .line 112
    const-string v0, "RankingRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "API error: code="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", message="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_271
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_271} :catch_1a1
    .catchall {:try_start_1c7 .. :try_end_271} :catchall_381

    .line 176
    if-eqz v3, :cond_276

    .line 178
    :try_start_273
    invoke-virtual {v3}, Lokhttp3/Response;->close()V
    :try_end_276
    .catch Ljava/lang/Exception; {:try_start_273 .. :try_end_276} :catch_3ba

    :cond_276
    :goto_276
    move-object v0, v1

    .line 113
    goto/16 :goto_100

    :cond_279
    move-object v0, v4

    .line 103
    goto :goto_210

    .line 117
    :cond_27b
    :try_start_27b
    const-string v4, "data"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 118
    if-nez v0, :cond_299

    .line 119
    const-string v0, "RankingRequest"

    const-string v2, "Data is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_28f
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_28f} :catch_1a1
    .catchall {:try_start_27b .. :try_end_28f} :catchall_381

    .line 176
    if-eqz v3, :cond_100

    .line 178
    :try_start_291
    invoke-virtual {v3}, Lokhttp3/Response;->close()V
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_294} :catch_296

    goto/16 :goto_100

    .line 179
    :catch_296
    move-exception v1

    goto/16 :goto_100

    .line 124
    :cond_299
    :try_start_299
    const-string v4, "list"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 125
    if-eqz v5, :cond_2a7

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2bd

    .line 126
    :cond_2a7
    const-string v0, "RankingRequest"

    const-string v2, "List is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_299 .. :try_end_2b3} :catch_1a1
    .catchall {:try_start_299 .. :try_end_2b3} :catchall_381

    .line 176
    if-eqz v3, :cond_100

    .line 178
    :try_start_2b5
    invoke-virtual {v3}, Lokhttp3/Response;->close()V
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_2b5 .. :try_end_2b8} :catch_2ba

    goto/16 :goto_100

    .line 179
    :catch_2ba
    move-exception v1

    goto/16 :goto_100

    .line 130
    :cond_2bd
    :try_start_2bd
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 131
    :goto_2c3
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I
    :try_end_2c6
    .catch Ljava/lang/Exception; {:try_start_2bd .. :try_end_2c6} :catch_1a1
    .catchall {:try_start_2bd .. :try_end_2c6} :catchall_381

    move-result v2

    if-ge v4, v2, :cond_388

    .line 133
    :try_start_2c9
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 134
    new-instance v6, Lcom/bilibili/tv/api/area/BiliVideoV2;

    invoke-direct {v6}, Lcom/bilibili/tv/api/area/BiliVideoV2;-><init>()V

    .line 137
    const-string v7, "title"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/area/BiliVideoV2;->title:Ljava/lang/String;

    .line 138
    const-string v7, "pic"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/area/BiliVideoV2;->cover:Ljava/lang/String;

    .line 139
    const-string v7, "aid"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/area/BiliVideoV2;->param:Ljava/lang/String;

    .line 142
    const-string v7, "owner"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 143
    if-eqz v7, :cond_2fe

    .line 144
    const-string v8, "name"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/area/BiliVideoV2;->name:Ljava/lang/String;

    .line 148
    :cond_2fe
    const-string v7, "stat"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 149
    if-eqz v7, :cond_326

    .line 150
    const-string v8, "view"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/bilibili/tv/api/area/BiliVideoV2;->play:I

    .line 151
    const-string v8, "danmaku"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/bilibili/tv/api/area/BiliVideoV2;->danmaku:I

    .line 152
    const-string v8, "reply"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/bilibili/tv/api/area/BiliVideoV2;->reply:I

    .line 153
    const-string v8, "favorite"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/bilibili/tv/api/area/BiliVideoV2;->favourite:I

    .line 157
    :cond_326
    const-string v7, "duration"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/bilibili/tv/api/area/BiliVideoV2;->duration:I

    .line 158
    const-string v7, "pubdate"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/api/area/BiliVideoV2;->pubdate:J

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bilibili://video/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v6, Lcom/bilibili/tv/api/area/BiliVideoV2;->param:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/bilibili/tv/api/area/BiliVideoV2;->uri:Ljava/lang/String;

    .line 160
    const-string v2, "av"

    iput-object v2, v6, Lcom/bilibili/tv/api/area/BiliVideoV2;->jumpTo:Ljava/lang/String;

    .line 162
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_354
    .catch Ljava/lang/Exception; {:try_start_2c9 .. :try_end_354} :catch_359
    .catchall {:try_start_2c9 .. :try_end_354} :catchall_381

    .line 131
    :goto_354
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_2c3

    .line 163
    :catch_359
    move-exception v2

    .line 164
    :try_start_35a
    const-string v6, "RankingRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing video "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_380
    .catch Ljava/lang/Exception; {:try_start_35a .. :try_end_380} :catch_1a1
    .catchall {:try_start_35a .. :try_end_380} :catchall_381

    goto :goto_354

    .line 176
    :catchall_381
    move-exception v0

    :goto_382
    if-eqz v3, :cond_387

    .line 178
    :try_start_384
    invoke-virtual {v3}, Lokhttp3/Response;->close()V
    :try_end_387
    .catch Ljava/lang/Exception; {:try_start_384 .. :try_end_387} :catch_3c0

    .line 182
    :cond_387
    :goto_387
    throw v0

    .line 168
    :cond_388
    :try_start_388
    const-string v2, "RankingRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " videos"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3aa
    .catch Ljava/lang/Exception; {:try_start_388 .. :try_end_3aa} :catch_1a1
    .catchall {:try_start_388 .. :try_end_3aa} :catchall_381

    .line 176
    if-eqz v3, :cond_100

    .line 178
    :try_start_3ac
    invoke-virtual {v3}, Lokhttp3/Response;->close()V
    :try_end_3af
    .catch Ljava/lang/Exception; {:try_start_3ac .. :try_end_3af} :catch_3b1

    goto/16 :goto_100

    .line 179
    :catch_3b1
    move-exception v1

    goto/16 :goto_100

    :catch_3b4
    move-exception v0

    goto/16 :goto_ff

    :catch_3b7
    move-exception v0

    goto/16 :goto_116

    :catch_3ba
    move-exception v0

    goto/16 :goto_276

    :catch_3bd
    move-exception v0

    goto/16 :goto_1c4

    :catch_3c0
    move-exception v1

    goto :goto_387

    .line 176
    :catchall_3c2
    move-exception v0

    move-object v3, v1

    goto :goto_382

    :catchall_3c5
    move-exception v0

    move-object v3, v2

    goto :goto_382

    .line 172
    :catch_3c8
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1a3
.end method
