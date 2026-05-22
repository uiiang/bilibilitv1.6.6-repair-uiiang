.class public Lmybl/BuvidActivator;
.super Ljava/lang/Object;
.source "BuvidActivator.java"


# static fields
.field private static final AURORA_KEY:Ljava/lang/String; = "ad1va46a7lza"

.field private static final TAG:Ljava/lang/String; = "BuvidActivator"

.field private static lastActivatedDay:J

.field private static lastActivatedMid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 22
    sput-wide v0, Lmybl/BuvidActivator;->lastActivatedMid:J

    .line 23
    sput-wide v0, Lmybl/BuvidActivator;->lastActivatedDay:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ensureBuvidActive(JLjava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v10, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    const-class v3, Lmybl/BuvidActivator;

    monitor-enter v3

    const-wide/16 v4, 0x0

    cmp-long v2, p0, v4

    if-gtz v2, :cond_26

    .line 43
    :try_start_c
    const-string v1, "BuvidActivator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_21f

    .line 140
    :goto_24
    monitor-exit v3

    return v0

    .line 47
    :cond_26
    :try_start_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 48
    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    .line 50
    sget-wide v6, Lmybl/BuvidActivator;->lastActivatedMid:J

    cmp-long v2, v6, p0

    if-nez v2, :cond_54

    sget-wide v6, Lmybl/BuvidActivator;->lastActivatedDay:J

    cmp-long v2, v6, v4

    if-nez v2, :cond_54

    .line 51
    const-string v0, "BuvidActivator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already activated today for mid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_26 .. :try_end_52} :catchall_21f

    move v0, v1

    .line 52
    goto :goto_24

    .line 56
    :cond_54
    :try_start_54
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 57
    const/16 v6, 0x2c

    new-array v6, v6, [B

    .line 58
    invoke-virtual {v2, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 60
    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-byte v8, v6, v7

    .line 61
    const/16 v7, 0x21

    const/4 v8, 0x0

    aput-byte v8, v6, v7

    .line 62
    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-byte v8, v6, v7

    .line 63
    const/16 v7, 0x23

    const/4 v8, 0x0

    aput-byte v8, v6, v7

    .line 64
    const/16 v7, 0x24

    const/16 v8, 0x49

    aput-byte v8, v6, v7

    .line 65
    const/16 v7, 0x25

    const/16 v8, 0x45

    aput-byte v8, v6, v7

    .line 66
    const/16 v7, 0x26

    const/16 v8, 0x4e

    aput-byte v8, v6, v7

    .line 67
    const/16 v7, 0x27

    const/16 v8, 0x44

    aput-byte v8, v6, v7

    .line 68
    const/4 v7, 0x4

    new-array v7, v7, [B

    .line 69
    invoke-virtual {v2, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    move v2, v0

    .line 70
    :goto_93
    if-ge v2, v10, :cond_9e

    .line 71
    add-int/lit8 v8, v2, 0x28

    aget-byte v9, v7, v2

    aput-byte v9, v6, v8

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 74
    :cond_9e
    const/4 v2, 0x2

    invoke-static {v6, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 76
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 77
    const-string v7, "adca"

    const-string v8, "Linux"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v7, "bfe9"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x32

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "3064"

    const/4 v8, 0x1

    .line 81
    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "39c8"

    const-string v8, "333.1387.fp.risk"

    .line 82
    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "3c43"

    .line 83
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "payload"

    .line 87
    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string v6, "BuvidActivator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExClimbWuzhi request body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {p0, p1}, Lmybl/BuvidActivator;->genAuroraEid(J)Ljava/lang/String;

    move-result-object v6

    .line 94
    const-string v7, "application/json; charset=utf-8"

    .line 95
    invoke-static {v7}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v7

    .line 94
    invoke-static {v7, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 99
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    const-string v8, "https://api.bilibili.com/x/internal/gaia-gateway/ExClimbWuzhi"

    .line 100
    invoke-virtual {v7, v8}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 101
    invoke-virtual {v7, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v7, "Content-Type"

    const-string v8, "application/json"

    .line 102
    invoke-virtual {v2, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v7, "env"

    const-string v8, "prod"

    .line 103
    invoke-virtual {v2, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v7, "app-key"

    const-string v8, "android64"

    .line 104
    invoke-virtual {v2, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v7, "x-bili-aurora-zone"

    const-string v8, "sh001"

    .line 105
    invoke-virtual {v2, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v7, "x-bili-mid"

    .line 106
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v7, "Referer"

    const-string v8, "https://www.bilibili.com"

    .line 107
    invoke-virtual {v2, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v7, "X-Blbl-Skip-Origin"

    const-string v8, "1"

    .line 108
    invoke-virtual {v2, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 110
    if-eqz v6, :cond_161

    .line 111
    const-string v7, "x-bili-aurora-eid"

    invoke-virtual {v2, v7, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 114
    :cond_161
    if-eqz p2, :cond_16e

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16e

    .line 115
    const-string v6, "Cookie"

    invoke-virtual {v2, v6, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 118
    :cond_16e
    new-instance v6, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v6}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v8, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 119
    invoke-virtual {v6, v8, v9, v7}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v6

    const-wide/16 v8, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 120
    invoke-virtual {v6, v8, v9, v7}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v6

    const-wide/16 v8, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 121
    invoke-virtual {v6, v8, v9, v7}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v6

    .line 122
    invoke-virtual {v6}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v6

    .line 124
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v6, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v6

    .line 125
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_1f4

    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 127
    :goto_1a9
    const-string v7, "BuvidActivator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ExClimbWuzhi response: code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", body="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v6}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_1f7

    .line 130
    sput-wide p0, Lmybl/BuvidActivator;->lastActivatedMid:J

    .line 131
    sput-wide v4, Lmybl/BuvidActivator;->lastActivatedDay:J

    .line 132
    const-string v2, "BuvidActivator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buvid activated successfully for mid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 133
    goto/16 :goto_24

    .line 125
    :cond_1f4
    const-string v2, ""

    goto :goto_1a9

    .line 135
    :cond_1f7
    const-string v1, "BuvidActivator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExClimbWuzhi failed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_213
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_213} :catch_215
    .catchall {:try_start_54 .. :try_end_213} :catchall_21f

    goto/16 :goto_24

    .line 138
    :catch_215
    move-exception v1

    .line 139
    :try_start_216
    const-string v2, "BuvidActivator"

    const-string v4, "ensureBuvidActive failed"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21d
    .catchall {:try_start_216 .. :try_end_21d} :catchall_21f

    goto/16 :goto_24

    .line 42
    :catchall_21f
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static genAuroraEid(J)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 26
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gtz v1, :cond_8

    .line 37
    :goto_7
    return-object v0

    .line 28
    :cond_8
    :try_start_8
    const-string v1, "ad1va46a7lza"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 29
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 30
    array-length v1, v3

    new-array v4, v1, [B

    .line 31
    const/4 v1, 0x0

    :goto_1e
    array-length v5, v3

    if-ge v1, v5, :cond_2f

    .line 32
    aget-byte v5, v3, v1

    array-length v6, v2

    rem-int v6, v1, v6

    aget-byte v6, v2, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 34
    :cond_2f
    const/4 v1, 0x3

    invoke-static {v4, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_33} :catch_35

    move-result-object v0

    goto :goto_7

    .line 35
    :catch_35
    move-exception v1

    .line 36
    const-string v2, "BuvidActivator"

    const-string v3, "genAuroraEid failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method
