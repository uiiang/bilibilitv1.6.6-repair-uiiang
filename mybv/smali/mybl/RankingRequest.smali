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

    if-eqz v4, :cond_104

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

    .line 78
    :try_start_cc
    invoke-static {}, Lmybl/RankingRequest;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d7} :catch_10d

    move-result-object v4

    const/4 v5, 0x0

    .line 79
    :try_start_d9
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_130

    .line 80
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
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_fb} :catch_1d8
    .catchall {:try_start_d9 .. :try_end_fb} :catchall_3bd

    .line 168
    if-eqz v4, :cond_102

    if-eqz v1, :cond_12c

    :try_start_ff
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_102
    .catch Ljava/lang/Throwable; {:try_start_ff .. :try_end_102} :catch_108
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_102} :catch_10d

    :cond_102
    :goto_102
    move-object v0, v1

    .line 170
    :cond_103
    :goto_103
    return-object v0

    .line 61
    :cond_104
    const-string v0, "null"

    goto/16 :goto_83

    .line 168
    :catch_108
    move-exception v0

    :try_start_109
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_10c} :catch_10d

    goto :goto_102

    :catch_10d
    move-exception v0

    .line 169
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

    .line 170
    goto :goto_103

    .line 168
    :cond_12c
    :try_start_12c
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_12f} :catch_10d

    goto :goto_102

    .line 84
    :cond_130
    :try_start_130
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 85
    if-nez v0, :cond_14f

    .line 86
    const-string v0, "RankingRequest"

    const-string v2, "Response body is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_13d} :catch_1d8
    .catchall {:try_start_130 .. :try_end_13d} :catchall_3bd

    .line 168
    if-eqz v4, :cond_144

    if-eqz v1, :cond_14b

    :try_start_141
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_144
    .catch Ljava/lang/Throwable; {:try_start_141 .. :try_end_144} :catch_146
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_144} :catch_10d

    :cond_144
    :goto_144
    move-object v0, v1

    .line 87
    goto :goto_103

    .line 168
    :catch_146
    move-exception v0

    :try_start_147
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_144

    :cond_14b
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_14e} :catch_10d

    goto :goto_144

    .line 90
    :cond_14f
    :try_start_14f
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    .line 91
    const-string v0, "RankingRequest"

    const-string v6, "========== Response Details =========="

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
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

    .line 93
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

    .line 94
    const-string v0, "RankingRequest"

    const-string v6, "Response Headers:"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v4}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1a5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
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
    :try_end_1d7
    .catch Ljava/lang/Throwable; {:try_start_14f .. :try_end_1d7} :catch_1d8
    .catchall {:try_start_14f .. :try_end_1d7} :catchall_3bd

    goto :goto_1a5

    .line 78
    :catch_1d8
    move-exception v0

    :try_start_1d9
    throw v0
    :try_end_1da
    .catchall {:try_start_1d9 .. :try_end_1da} :catchall_1da

    .line 168
    :catchall_1da
    move-exception v2

    move-object v3, v0

    :goto_1dc
    if-eqz v4, :cond_1e3

    if-eqz v3, :cond_3fe

    :try_start_1e0
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_1e3
    .catch Ljava/lang/Throwable; {:try_start_1e0 .. :try_end_1e3} :catch_3f8
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1e3} :catch_10d

    :cond_1e3
    :goto_1e3
    :try_start_1e3
    throw v2
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_1e4} :catch_10d

    .line 98
    :cond_1e4
    :try_start_1e4
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

    .line 99
    const-string v6, "RankingRequest"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response Body (first 1000 chars): "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_298

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

    :goto_22d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 102
    const-string v3, "code"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 103
    const-string v6, "message"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 105
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

    .line 107
    if-eqz v3, :cond_2a3

    .line 108
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
    :try_end_28e
    .catch Ljava/lang/Throwable; {:try_start_1e4 .. :try_end_28e} :catch_1d8
    .catchall {:try_start_1e4 .. :try_end_28e} :catchall_3bd

    .line 168
    if-eqz v4, :cond_295

    if-eqz v1, :cond_29f

    :try_start_292
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_295
    .catch Ljava/lang/Throwable; {:try_start_292 .. :try_end_295} :catch_29a
    .catch Ljava/lang/Exception; {:try_start_292 .. :try_end_295} :catch_10d

    :cond_295
    :goto_295
    move-object v0, v1

    .line 109
    goto/16 :goto_103

    :cond_298
    move-object v0, v3

    .line 99
    goto :goto_22d

    .line 168
    :catch_29a
    move-exception v0

    :try_start_29b
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_295

    :cond_29f
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_2a2
    .catch Ljava/lang/Exception; {:try_start_29b .. :try_end_2a2} :catch_10d

    goto :goto_295

    .line 113
    :cond_2a3
    :try_start_2a3
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 114
    if-nez v0, :cond_2cb

    .line 115
    const-string v0, "RankingRequest"

    const-string v2, "Data is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2b7
    .catch Ljava/lang/Throwable; {:try_start_2a3 .. :try_end_2b7} :catch_1d8
    .catchall {:try_start_2a3 .. :try_end_2b7} :catchall_3bd

    .line 168
    if-eqz v4, :cond_103

    if-eqz v1, :cond_2c6

    :try_start_2bb
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_2be
    .catch Ljava/lang/Throwable; {:try_start_2bb .. :try_end_2be} :catch_2c0
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_2be} :catch_10d

    goto/16 :goto_103

    :catch_2c0
    move-exception v2

    :try_start_2c1
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_103

    :cond_2c6
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_2c9
    .catch Ljava/lang/Exception; {:try_start_2c1 .. :try_end_2c9} :catch_10d

    goto/16 :goto_103

    .line 120
    :cond_2cb
    :try_start_2cb
    const-string v3, "list"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 121
    if-eqz v6, :cond_2d9

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f9

    .line 122
    :cond_2d9
    const-string v0, "RankingRequest"

    const-string v2, "List is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2e5
    .catch Ljava/lang/Throwable; {:try_start_2cb .. :try_end_2e5} :catch_1d8
    .catchall {:try_start_2cb .. :try_end_2e5} :catchall_3bd

    .line 168
    if-eqz v4, :cond_103

    if-eqz v1, :cond_2f4

    :try_start_2e9
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_2ec
    .catch Ljava/lang/Throwable; {:try_start_2e9 .. :try_end_2ec} :catch_2ee
    .catch Ljava/lang/Exception; {:try_start_2e9 .. :try_end_2ec} :catch_10d

    goto/16 :goto_103

    :catch_2ee
    move-exception v2

    :try_start_2ef
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_103

    :cond_2f4
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_2f7
    .catch Ljava/lang/Exception; {:try_start_2ef .. :try_end_2f7} :catch_10d

    goto/16 :goto_103

    .line 126
    :cond_2f9
    :try_start_2f9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 127
    :goto_2ff
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I
    :try_end_302
    .catch Ljava/lang/Throwable; {:try_start_2f9 .. :try_end_302} :catch_1d8
    .catchall {:try_start_2f9 .. :try_end_302} :catchall_3bd

    move-result v2

    if-ge v3, v2, :cond_3c2

    .line 129
    :try_start_305
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 130
    new-instance v7, Lcom/bilibili/tv/api/area/BiliVideoV2;

    invoke-direct {v7}, Lcom/bilibili/tv/api/area/BiliVideoV2;-><init>()V

    .line 133
    const-string v8, "title"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->title:Ljava/lang/String;

    .line 134
    const-string v8, "pic"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->cover:Ljava/lang/String;

    .line 135
    const-string v8, "aid"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->param:Ljava/lang/String;

    .line 138
    const-string v8, "owner"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 139
    if-eqz v8, :cond_33a

    .line 140
    const-string v9, "name"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->name:Ljava/lang/String;

    .line 144
    :cond_33a
    const-string v8, "stat"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 145
    if-eqz v8, :cond_362

    .line 146
    const-string v9, "view"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->play:I

    .line 147
    const-string v9, "danmaku"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->danmaku:I

    .line 148
    const-string v9, "reply"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->reply:I

    .line 149
    const-string v9, "favorite"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->favourite:I

    .line 153
    :cond_362
    const-string v8, "duration"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->duration:I

    .line 154
    const-string v8, "pubdate"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->pubdate:J

    .line 155
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

    .line 156
    const-string v2, "av"

    iput-object v2, v7, Lcom/bilibili/tv/api/area/BiliVideoV2;->jumpTo:Ljava/lang/String;

    .line 158
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_390
    .catch Ljava/lang/Exception; {:try_start_305 .. :try_end_390} :catch_395
    .catch Ljava/lang/Throwable; {:try_start_305 .. :try_end_390} :catch_1d8
    .catchall {:try_start_305 .. :try_end_390} :catchall_3bd

    .line 127
    :goto_390
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2ff

    .line 159
    :catch_395
    move-exception v2

    .line 160
    :try_start_396
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

    goto :goto_390

    .line 168
    :catchall_3bd
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto/16 :goto_1dc

    .line 164
    :cond_3c2
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
    :try_end_3e4
    .catch Ljava/lang/Throwable; {:try_start_396 .. :try_end_3e4} :catch_1d8
    .catchall {:try_start_396 .. :try_end_3e4} :catchall_3bd

    .line 168
    if-eqz v4, :cond_103

    if-eqz v1, :cond_3f3

    :try_start_3e8
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_3eb
    .catch Ljava/lang/Throwable; {:try_start_3e8 .. :try_end_3eb} :catch_3ed
    .catch Ljava/lang/Exception; {:try_start_3e8 .. :try_end_3eb} :catch_10d

    goto/16 :goto_103

    :catch_3ed
    move-exception v2

    :try_start_3ee
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_103

    :cond_3f3
    invoke-virtual {v4}, Lokhttp3/Response;->close()V

    goto/16 :goto_103

    :catch_3f8
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1e3

    :cond_3fe
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_401
    .catch Ljava/lang/Exception; {:try_start_3ee .. :try_end_401} :catch_10d

    goto/16 :goto_1e3
.end method
