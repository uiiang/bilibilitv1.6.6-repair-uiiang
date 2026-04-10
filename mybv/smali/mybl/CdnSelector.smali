.class public Lmybl/CdnSelector;
.super Ljava/lang/Object;
.source "CdnSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmybl/CdnSelector$RaceResult;,
        Lmybl/CdnSelector$CdnUrlInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCORE:I = 0x46

.field private static final KEY_CDN_SCORES:Ljava/lang/String; = "cdn_scores"

.field private static final MAX_SCORE:I = 0x64

.field private static final MIN_SCORE:I = 0x0

.field private static final PREF_NAME:Ljava/lang/String; = "cdn_selector"

.field private static final RACE_TIMEOUT_MS:I = 0x1388

.field private static final SINGLE_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "CdnSelector"

.field private static final TEST_BYTES:I = 0x400

.field private static final executor:Ljava/util/concurrent/ExecutorService;

.field private static prefs:Landroid/content/SharedPreferences;

.field private static volatile raceCancelled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lmybl/CdnSelector;->executor:Ljava/util/concurrent/ExecutorService;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lmybl/CdnSelector;->raceCancelled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmybl/CdnSelector$CdnUrlInfo;)Lmybl/CdnSelector$RaceResult;
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lmybl/CdnSelector;->testUrl(Lmybl/CdnSelector$CdnUrlInfo;)Lmybl/CdnSelector$RaceResult;

    move-result-object v0

    return-object v0
.end method

.method public static extractCdnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 257
    :goto_8
    return-object v0

    .line 256
    :catch_9
    move-exception v0

    .line 257
    const-string v0, ""

    goto :goto_8
.end method

.method public static getCdnScore(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/16 v0, 0x46

    .line 183
    :try_start_2
    sget-object v1, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_7

    .line 193
    :cond_6
    :goto_6
    return v0

    .line 184
    :cond_7
    sget-object v1, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "cdn_scores"

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 188
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 189
    const-string v2, "score"

    const/16 v3, 0x46

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_29

    move-result v0

    goto :goto_6

    .line 191
    :catch_29
    move-exception v1

    goto :goto_6
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cdn_selector"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    .line 41
    return-void
.end method

.method public static reportPlaybackResult(Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 249
    invoke-static {p0, p1, p2}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 250
    return-void
.end method

.method public static selectBestUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmybl/CdnSelector$CdnUrlInfo;",
            ">;)",
            "Lmybl/CdnSelector$RaceResult;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 75
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 76
    :cond_9
    const-string v0, "CdnSelector"

    const-string v1, "selectBestUrl: urlInfos is empty, returning null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    .line 138
    :goto_11
    return-object v0

    .line 80
    :cond_12
    sget-object v0, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_19

    .line 81
    invoke-static {p0}, Lmybl/CdnSelector;->init(Landroid/content/Context;)V

    .line 84
    :cond_19
    const-string v0, "CdnSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectBestUrl: videoId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", urlCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/CdnSelector$CdnUrlInfo;

    .line 87
    iget-object v2, v0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-static {v2}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lmybl/CdnSelector$CdnUrlInfo;->score:I

    .line 88
    const-string v2, "CdnSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectBestUrl: cdn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", score="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lmybl/CdnSelector$CdnUrlInfo;->score:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 91
    :cond_7e
    new-instance v0, Lmybl/CdnSelector$1;

    invoke-direct {v0}, Lmybl/CdnSelector$1;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 99
    sput-boolean v6, Lmybl/CdnSelector;->raceCancelled:Z

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_95
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/CdnSelector$CdnUrlInfo;

    .line 103
    new-instance v5, Lmybl/CdnSelector$2;

    invoke-direct {v5, v0}, Lmybl/CdnSelector$2;-><init>(Lmybl/CdnSelector$CdnUrlInfo;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_95

    .line 112
    :cond_aa
    :try_start_aa
    sget-object v0, Lmybl/CdnSelector;->executor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v4, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v4, v5, v7}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b8
    :goto_b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_138

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 115
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_cd} :catch_11b

    move-result v4

    if-nez v4, :cond_b8

    .line 117
    :try_start_d0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/CdnSelector$RaceResult;

    .line 118
    if-eqz v0, :cond_b8

    sget-boolean v4, Lmybl/CdnSelector;->raceCancelled:Z

    if-nez v4, :cond_b8

    .line 119
    const/4 v4, 0x1

    sput-boolean v4, Lmybl/CdnSelector;->raceCancelled:Z

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 121
    iput-wide v4, v0, Lmybl/CdnSelector$RaceResult;->raceTime:J

    .line 123
    iget-object v7, v0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 125
    const-string v7, "CdnSelector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u7ade\u901f\u5b8c\u6210 cdn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_117} :catch_119

    goto/16 :goto_11

    .line 128
    :catch_119
    move-exception v0

    goto :goto_b8

    .line 132
    :catch_11b
    move-exception v0

    .line 133
    const-string v1, "CdnSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ade\u901f\u5f02\u5e38: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_138
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/CdnSelector$CdnUrlInfo;

    .line 137
    const-string v1, "CdnSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ade\u901f\u5931\u8d25\uff0c\u4f7f\u7528\u6700\u9ad8\u5206CDN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v1, Lmybl/CdnSelector$RaceResult;

    iget-object v2, v0, Lmybl/CdnSelector$CdnUrlInfo;->url:Ljava/lang/String;

    iget-object v3, v0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lmybl/CdnSelector$RaceResult;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object v0, v1

    goto/16 :goto_11
.end method

.method private static testUrl(Lmybl/CdnSelector$CdnUrlInfo;)Lmybl/CdnSelector$RaceResult;
    .locals 12

    .prologue
    const/16 v9, 0x400

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 146
    :try_start_8
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lmybl/CdnSelector$CdnUrlInfo;->url:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_ef
    .catchall {:try_start_8 .. :try_end_15} :catchall_137

    .line 148
    const/16 v2, 0x7d0

    :try_start_17
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 149
    const/16 v2, 0x7d0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 150
    const-string v2, "Range"

    const-string v3, "bytes=0-1023"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "User-Agent"

    const-string v3, "Bilibili Freedoooooom/MarkII"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    .line 155
    const-string v3, "CdnSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "testUrl: cdn="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", responseCode="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", connectTime="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_72

    const/16 v3, 0xce

    if-ne v2, v3, :cond_e2

    .line 157
    :cond_72
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_75} :catch_15f
    .catchall {:try_start_17 .. :try_end_75} :catchall_154

    move-result-object v8

    .line 158
    const/16 v2, 0x400

    :try_start_78
    new-array v2, v2, [B

    .line 161
    :goto_7a
    if-ge v1, v9, :cond_86

    rsub-int v3, v1, 0x400

    invoke-virtual {v8, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_86

    .line 162
    add-int/2addr v1, v3

    goto :goto_7a

    .line 165
    :cond_86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    .line 166
    const-string v4, "CdnSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "testUrl: cdn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", read="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes, totalTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms, cancelled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lmybl/CdnSelector;->raceCancelled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-lez v1, :cond_e3

    sget-boolean v1, Lmybl/CdnSelector;->raceCancelled:Z

    if-nez v1, :cond_e3

    .line 168
    new-instance v1, Lmybl/CdnSelector$RaceResult;

    iget-object v2, p0, Lmybl/CdnSelector$CdnUrlInfo;->url:Ljava/lang/String;

    iget-object v3, p0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lmybl/CdnSelector$RaceResult;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_d7} :catch_163
    .catchall {:try_start_78 .. :try_end_d7} :catchall_158

    .line 175
    if-eqz v8, :cond_dc

    :try_start_d9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_146

    .line 176
    :cond_dc
    :goto_dc
    if-eqz v0, :cond_e1

    :try_start_de
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_148

    .line 178
    :cond_e1
    :goto_e1
    return-object v1

    :cond_e2
    move-object v8, v7

    .line 175
    :cond_e3
    if-eqz v8, :cond_e8

    :try_start_e5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e8} :catch_14a

    .line 176
    :cond_e8
    :goto_e8
    if-eqz v0, :cond_ed

    :try_start_ea
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ed} :catch_14c

    :cond_ed
    :goto_ed
    move-object v1, v7

    .line 178
    goto :goto_e1

    .line 171
    :catch_ef
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v3, v7

    .line 172
    :goto_f3
    :try_start_f3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    .line 173
    const-string v0, "CdnSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "testUrl: cdn="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", FAILED in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12a
    .catchall {:try_start_f3 .. :try_end_12a} :catchall_15b

    .line 175
    if-eqz v2, :cond_12f

    :try_start_12c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_12f} :catch_14e

    .line 176
    :cond_12f
    :goto_12f
    if-eqz v3, :cond_ed

    :try_start_131
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_135

    goto :goto_ed

    :catch_135
    move-exception v0

    goto :goto_ed

    .line 175
    :catchall_137
    move-exception v0

    move-object v1, v0

    move-object v8, v7

    move-object v3, v7

    :goto_13b
    if-eqz v8, :cond_140

    :try_start_13d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_140} :catch_150

    .line 176
    :cond_140
    :goto_140
    if-eqz v3, :cond_145

    :try_start_142
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_145} :catch_152

    .line 177
    :cond_145
    :goto_145
    throw v1

    .line 175
    :catch_146
    move-exception v2

    goto :goto_dc

    .line 176
    :catch_148
    move-exception v0

    goto :goto_e1

    .line 175
    :catch_14a
    move-exception v1

    goto :goto_e8

    .line 176
    :catch_14c
    move-exception v0

    goto :goto_ed

    .line 175
    :catch_14e
    move-exception v0

    goto :goto_12f

    :catch_150
    move-exception v0

    goto :goto_140

    .line 176
    :catch_152
    move-exception v0

    goto :goto_145

    .line 175
    :catchall_154
    move-exception v1

    move-object v8, v7

    move-object v3, v0

    goto :goto_13b

    :catchall_158
    move-exception v1

    move-object v3, v0

    goto :goto_13b

    :catchall_15b
    move-exception v0

    move-object v1, v0

    move-object v8, v2

    goto :goto_13b

    .line 171
    :catch_15f
    move-exception v1

    move-object v2, v7

    move-object v3, v0

    goto :goto_f3

    :catch_163
    move-exception v1

    move-object v2, v8

    move-object v3, v0

    goto :goto_f3
.end method

.method public static updateCdnScore(Ljava/lang/String;ZZ)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 198
    :try_start_1
    sget-object v0, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "cdn_scores"

    const-string v3, "{}"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 203
    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v4, v0

    .line 212
    :goto_1b
    const-string v0, "score"

    const/16 v1, 0x46

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 213
    const-string v0, "failStreak"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 214
    const-string v0, "timeoutCount"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 215
    const-string v0, "successCount"

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 217
    if-eqz p1, :cond_a4

    .line 218
    const/16 v6, 0x64

    add-int/lit8 v3, v3, 0xa

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 220
    add-int/lit8 v0, v0, 0x1

    .line 233
    :cond_44
    :goto_44
    const-string v6, "score"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    const-string v3, "failStreak"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 235
    const-string v2, "timeoutCount"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    const-string v1, "successCount"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 237
    const-string v0, "lastUpdateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 238
    if-nez p1, :cond_6c

    .line 239
    const-string v0, "lastFailTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 242
    :cond_6c
    invoke-virtual {v5, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    sget-object v0, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cdn_scores"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 246
    :goto_82
    return-void

    .line 205
    :cond_83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 206
    const-string v1, "score"

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    const-string v1, "failStreak"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 208
    const-string v1, "timeoutCount"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    const-string v1, "successCount"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v4, v0

    goto/16 :goto_1b

    .line 222
    :cond_a4
    const/4 v2, 0x0

    add-int/lit8 v3, v3, -0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 223
    add-int/lit8 v2, v6, 0x1

    .line 224
    if-eqz p2, :cond_b8

    .line 225
    const/4 v6, 0x0

    add-int/lit8 v3, v3, -0x1e

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 226
    add-int/lit8 v1, v1, 0x1

    .line 228
    :cond_b8
    const/4 v6, 0x3

    if-lt v2, v6, :cond_44

    .line 229
    const/4 v6, 0x0

    add-int/lit8 v3, v3, -0x1e

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c1} :catch_c3

    move-result v3

    goto :goto_44

    .line 244
    :catch_c3
    move-exception v0

    goto :goto_82
.end method
