.class public Lmybl/CdnSelector;
.super Ljava/lang/Object;
.source "CdnSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmybl/CdnSelector$CdnUrlInfo;,
        Lmybl/CdnSelector$RaceResult;
    }
.end annotation


# static fields
.field public static final CDN_TYPE_BILIVIDEO:I = 0x1

.field public static final CDN_TYPE_MCDN:I = 0x2

.field public static final CDN_TYPE_OTHER:I = 0x0

.field private static final DEFAULT_SCORE:I = 0x46

.field private static final KEY_CDN_SCORES:Ljava/lang/String; = "cdn_scores"

.field private static final LIVE_RACE_TIMEOUT_MS:I = 0x1388

.field private static final LIVE_SINGLE_TIMEOUT_MS:I = 0x7d0

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
    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lmybl/CdnSelector;->executor:Ljava/util/concurrent/ExecutorService;

    .line 39
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

.method static synthetic access$000(Lmybl/CdnSelector$CdnUrlInfo;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;
    .locals 1

    .prologue
    .line 23
    invoke-static {p0, p1}, Lmybl/CdnSelector;->testLiveUrl(Lmybl/CdnSelector$CdnUrlInfo;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lmybl/CdnSelector$CdnUrlInfo;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;
    .locals 1

    .prologue
    .line 23
    invoke-static {p0, p1}, Lmybl/CdnSelector;->testUrl(Lmybl/CdnSelector$CdnUrlInfo;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;

    move-result-object v0

    return-object v0
.end method

.method public static extractCdnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 350
    :goto_8
    return-object v0

    .line 349
    :catch_9
    move-exception v0

    .line 350
    const-string v0, ""

    goto :goto_8
.end method

.method private static failedResult(Lmybl/CdnSelector$CdnUrlInfo;IZ)Lmybl/CdnSelector$RaceResult;
    .locals 7

    .prologue
    .line 84
    new-instance v1, Lmybl/CdnSelector$RaceResult;

    const/4 v2, 0x0

    iget-object v3, p0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lmybl/CdnSelector$RaceResult;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, v1, Lmybl/CdnSelector$RaceResult;->failed:Z

    .line 86
    iput p1, v1, Lmybl/CdnSelector$RaceResult;->httpCode:I

    .line 87
    iput-boolean p2, v1, Lmybl/CdnSelector$RaceResult;->timeout:Z

    .line 88
    return-object v1
.end method

.method public static getCdnScore(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/16 v0, 0x46

    .line 276
    :try_start_2
    sget-object v1, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_7

    .line 286
    :cond_6
    :goto_6
    return v0

    .line 277
    :cond_7
    sget-object v1, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "cdn_scores"

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 281
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 282
    const-string v2, "score"

    const/16 v3, 0x46

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_29

    move-result v0

    goto :goto_6

    .line 284
    :catch_29
    move-exception v1

    goto :goto_6
.end method

.method public static getCdnType(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 366
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 371
    :cond_9
    :goto_9
    return v0

    .line 367
    :cond_a
    const-string v1, "bilivideo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 368
    const-string v2, "mcdn"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 369
    if-eqz v1, :cond_1c

    if-eqz v2, :cond_1c

    const/4 v0, 0x2

    goto :goto_9

    .line 370
    :cond_1c
    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cdn_selector"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    .line 43
    return-void
.end method

.method public static isBilivideo(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 379
    invoke-static {p0}, Lmybl/CdnSelector;->getCdnType(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isMcdn(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 375
    invoke-static {p0}, Lmybl/CdnSelector;->getCdnType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static isTimeoutException(Ljava/lang/Exception;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 93
    if-nez v1, :cond_8

    .line 95
    :cond_7
    :goto_7
    return v0

    .line 94
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v2, "timed out"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "timeout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_1c
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static reportPlaybackResult(Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 342
    invoke-static {p0, p1, p2}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 343
    return-void
.end method

.method public static selectBestUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;
    .locals 1
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
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmybl/CdnSelector;->selectBestUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lmybl/CdnSelector$RaceResult;

    move-result-object v0

    return-object v0
.end method

.method public static selectBestUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lmybl/CdnSelector$RaceResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmybl/CdnSelector$CdnUrlInfo;",
            ">;Z)",
            "Lmybl/CdnSelector$RaceResult;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x1388

    const/4 v6, 0x0

    .line 103
    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 104
    :cond_c
    const-string v0, "CdnSelector"

    const-string v2, "selectBestUrl: urlInfos is empty, returning null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 182
    :goto_14
    return-object v0

    .line 108
    :cond_15
    sget-object v0, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1c

    .line 109
    invoke-static {p0}, Lmybl/CdnSelector;->init(Landroid/content/Context;)V

    .line 112
    :cond_1c
    if-eqz p3, :cond_1e

    .line 113
    :cond_1e
    const-string v0, "CdnSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectBestUrl: videoId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", urlCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isLive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", raceTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/CdnSelector$CdnUrlInfo;

    .line 116
    iget-object v3, v0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-static {v3}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lmybl/CdnSelector$CdnUrlInfo;->score:I

    .line 117
    const-string v3, "CdnSelector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectBestUrl: cdn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", score="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Lmybl/CdnSelector$CdnUrlInfo;->score:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 120
    :cond_9d
    new-instance v0, Lmybl/CdnSelector$1;

    invoke-direct {v0}, Lmybl/CdnSelector$1;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 128
    sput-boolean v6, Lmybl/CdnSelector;->raceCancelled:Z

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 132
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_bd
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/CdnSelector$CdnUrlInfo;

    .line 134
    new-instance v7, Lmybl/CdnSelector$2;

    invoke-direct {v7, p3, v0, v4}, Lmybl/CdnSelector$2;-><init>(ZLmybl/CdnSelector$CdnUrlInfo;Ljava/util/List;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    .line 147
    :cond_d2
    :try_start_d2
    sget-object v0, Lmybl/CdnSelector;->executor:Ljava/util/concurrent/ExecutorService;

    int-to-long v6, v8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v5, v6, v7, v8}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_df
    :goto_df
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 150
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v6

    if-eqz v6, :cond_df

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_f4} :catch_15e

    move-result v6

    if-nez v6, :cond_df

    .line 152
    :try_start_f7
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/CdnSelector$RaceResult;

    .line 153
    if-eqz v0, :cond_df

    sget-boolean v6, Lmybl/CdnSelector;->raceCancelled:Z

    if-nez v6, :cond_df

    .line 154
    const/4 v6, 0x1

    sput-boolean v6, Lmybl/CdnSelector;->raceCancelled:Z

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 156
    iput-wide v6, v0, Lmybl/CdnSelector$RaceResult;->raceTime:J

    .line 158
    iget-object v8, v0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 160
    const-string v8, "CdnSelector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u7ade\u901f\u5b8c\u6210 cdn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_13e} :catch_140

    goto/16 :goto_14

    .line 163
    :catch_140
    move-exception v0

    .line 164
    :try_start_141
    const-string v6, "CdnSelector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u7ade\u901f\u4efb\u52a1\u5f02\u5e38: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_15d} :catch_15e

    goto :goto_df

    .line 168
    :catch_15e
    move-exception v0

    .line 169
    const-string v2, "CdnSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7ade\u901f\u5f02\u5e38: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_17b
    monitor-enter v4

    .line 176
    :try_start_17c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_180
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ca

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/CdnSelector$RaceResult;

    .line 177
    iget-object v3, v0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    const/4 v5, 0x0

    iget-boolean v6, v0, Lmybl/CdnSelector$RaceResult;->timeout:Z

    invoke-static {v3, v5, v6}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 178
    const-string v3, "CdnSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7ade\u901f\u5019\u9009\u4e0d\u53ef\u7528: cdn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", httpCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lmybl/CdnSelector$RaceResult;->httpCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v0, v0, Lmybl/CdnSelector$RaceResult;->timeout:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_180

    .line 180
    :catchall_1c7
    move-exception v0

    monitor-exit v4
    :try_end_1c9
    .catchall {:try_start_17c .. :try_end_1c9} :catchall_1c7

    throw v0

    :cond_1ca
    :try_start_1ca
    monitor-exit v4
    :try_end_1cb
    .catchall {:try_start_1ca .. :try_end_1cb} :catchall_1c7

    .line 181
    const-string v0, "CdnSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ade\u901f\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e2a\u5019\u9009CDN\u5747\u4e0d\u53ef\u7528, \u8fd4\u56denull"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 182
    goto/16 :goto_14
.end method

.method private static testLiveUrl(Lmybl/CdnSelector$CdnUrlInfo;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmybl/CdnSelector$CdnUrlInfo;",
            "Ljava/util/List",
            "<",
            "Lmybl/CdnSelector$RaceResult;",
            ">;)",
            "Lmybl/CdnSelector$RaceResult;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 235
    :try_start_5
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lmybl/CdnSelector$CdnUrlInfo;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_11a
    .catchall {:try_start_5 .. :try_end_12} :catchall_170

    .line 237
    const/16 v1, 0x7d0

    :try_start_14
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 238
    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 239
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 240
    const-string v1, "User-Agent"

    const-string v2, "Bilibili Freedoooooom/MarkII"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "Referer"

    const-string v2, "https://live.bilibili.com/"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    .line 245
    const-string v4, "CdnSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "testLiveUrl: cdn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", responseCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", connectTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_ec

    .line 248
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_73} :catch_19c
    .catchall {:try_start_14 .. :try_end_73} :catchall_191

    move-result-object v8

    .line 249
    const/16 v2, 0x100

    :try_start_76
    new-array v2, v2, [B

    .line 250
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    .line 253
    const-string v3, "CdnSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "testLiveUrl: cdn="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", read="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " bytes, totalTime="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, cancelled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lmybl/CdnSelector;->raceCancelled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-lez v2, :cond_d8

    sget-boolean v2, Lmybl/CdnSelector;->raceCancelled:Z

    if-nez v2, :cond_d8

    .line 255
    new-instance v1, Lmybl/CdnSelector$RaceResult;

    iget-object v2, p0, Lmybl/CdnSelector$CdnUrlInfo;->url:Ljava/lang/String;

    iget-object v3, p0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lmybl/CdnSelector$RaceResult;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_cd} :catch_1a1
    .catchall {:try_start_76 .. :try_end_cd} :catchall_195

    .line 268
    if-eqz v8, :cond_d2

    :try_start_cf
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_17f

    .line 269
    :cond_d2
    :goto_d2
    if-eqz v0, :cond_d7

    :try_start_d4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d7} :catch_182

    .line 271
    :cond_d7
    :goto_d7
    return-object v1

    .line 258
    :cond_d8
    const/4 v2, 0x0

    :try_start_d9
    invoke-static {p0, v1, v2}, Lmybl/CdnSelector;->failedResult(Lmybl/CdnSelector$CdnUrlInfo;IZ)Lmybl/CdnSelector$RaceResult;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_e0} :catch_1a1
    .catchall {:try_start_d9 .. :try_end_e0} :catchall_195

    .line 268
    :goto_e0
    if-eqz v8, :cond_e5

    :try_start_e2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_185

    .line 269
    :cond_e5
    :goto_e5
    if-eqz v0, :cond_ea

    :try_start_e7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ea} :catch_188

    :cond_ea
    :goto_ea
    move-object v1, v7

    .line 271
    goto :goto_d7

    .line 260
    :cond_ec
    :try_start_ec
    const-string v2, "CdnSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testLiveUrl: cdn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u975e200\u54cd\u5e94: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lmybl/CdnSelector;->failedResult(Lmybl/CdnSelector$CdnUrlInfo;IZ)Lmybl/CdnSelector$RaceResult;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_118} :catch_19c
    .catchall {:try_start_ec .. :try_end_118} :catchall_191

    move-object v8, v7

    goto :goto_e0

    .line 263
    :catch_11a
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v3, v7

    .line 264
    :goto_11e
    :try_start_11e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    .line 265
    const-string v0, "CdnSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "testLiveUrl: cdn="

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

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x0

    invoke-static {v1}, Lmybl/CdnSelector;->isTimeoutException(Ljava/lang/Exception;)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lmybl/CdnSelector;->failedResult(Lmybl/CdnSelector$CdnUrlInfo;IZ)Lmybl/CdnSelector$RaceResult;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_161
    .catchall {:try_start_11e .. :try_end_161} :catchall_198

    .line 268
    if-eqz v2, :cond_166

    :try_start_163
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_166} :catch_18b

    .line 269
    :cond_166
    :goto_166
    if-eqz v3, :cond_ea

    :try_start_168
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_16b} :catch_16d

    goto/16 :goto_ea

    :catch_16d
    move-exception v0

    goto/16 :goto_ea

    .line 268
    :catchall_170
    move-exception v0

    move-object v1, v0

    move-object v8, v7

    move-object v3, v7

    :goto_174
    if-eqz v8, :cond_179

    :try_start_176
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_179} :catch_18d

    .line 269
    :cond_179
    :goto_179
    if-eqz v3, :cond_17e

    :try_start_17b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_17e} :catch_18f

    .line 270
    :cond_17e
    :goto_17e
    throw v1

    .line 268
    :catch_17f
    move-exception v2

    goto/16 :goto_d2

    .line 269
    :catch_182
    move-exception v0

    goto/16 :goto_d7

    .line 268
    :catch_185
    move-exception v1

    goto/16 :goto_e5

    .line 269
    :catch_188
    move-exception v0

    goto/16 :goto_ea

    .line 268
    :catch_18b
    move-exception v0

    goto :goto_166

    :catch_18d
    move-exception v0

    goto :goto_179

    .line 269
    :catch_18f
    move-exception v0

    goto :goto_17e

    .line 268
    :catchall_191
    move-exception v1

    move-object v8, v7

    move-object v3, v0

    goto :goto_174

    :catchall_195
    move-exception v1

    move-object v3, v0

    goto :goto_174

    :catchall_198
    move-exception v0

    move-object v1, v0

    move-object v8, v2

    goto :goto_174

    .line 263
    :catch_19c
    move-exception v1

    move-object v2, v7

    move-object v3, v0

    goto/16 :goto_11e

    :catch_1a1
    move-exception v1

    move-object v2, v8

    move-object v3, v0

    goto/16 :goto_11e
.end method

.method private static testUrl(Lmybl/CdnSelector$CdnUrlInfo;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmybl/CdnSelector$CdnUrlInfo;",
            "Ljava/util/List",
            "<",
            "Lmybl/CdnSelector$RaceResult;",
            ">;)",
            "Lmybl/CdnSelector$RaceResult;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x400

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 190
    :try_start_8
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lmybl/CdnSelector$CdnUrlInfo;->url:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_100
    .catchall {:try_start_8 .. :try_end_15} :catchall_154

    .line 192
    const/16 v2, 0x7d0

    :try_start_17
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 193
    const/16 v2, 0x7d0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 194
    const-string v2, "Range"

    const-string v3, "bytes=0-1023"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "User-Agent"

    const-string v3, "Bilibili Freedoooooom/MarkII"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    .line 199
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

    .line 200
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_72

    const/16 v3, 0xce

    if-ne v2, v3, :cond_f6

    .line 201
    :cond_72
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_75} :catch_17e
    .catchall {:try_start_17 .. :try_end_75} :catchall_173

    move-result-object v8

    .line 202
    const/16 v3, 0x400

    :try_start_78
    new-array v3, v3, [B

    .line 205
    :goto_7a
    if-ge v1, v9, :cond_86

    rsub-int v4, v1, 0x400

    invoke-virtual {v8, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_86

    .line 206
    add-int/2addr v1, v4

    goto :goto_7a

    .line 209
    :cond_86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    .line 210
    const-string v3, "CdnSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "testUrl: cdn="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", read="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " bytes, totalTime="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, cancelled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lmybl/CdnSelector;->raceCancelled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-lez v1, :cond_e2

    sget-boolean v1, Lmybl/CdnSelector;->raceCancelled:Z

    if-nez v1, :cond_e2

    .line 212
    new-instance v1, Lmybl/CdnSelector$RaceResult;

    iget-object v2, p0, Lmybl/CdnSelector$CdnUrlInfo;->url:Ljava/lang/String;

    iget-object v3, p0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lmybl/CdnSelector$RaceResult;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_d7} :catch_182
    .catchall {:try_start_78 .. :try_end_d7} :catchall_177

    .line 224
    if-eqz v8, :cond_dc

    :try_start_d9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_163

    .line 225
    :cond_dc
    :goto_dc
    if-eqz v0, :cond_e1

    :try_start_de
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_166

    .line 227
    :cond_e1
    :goto_e1
    return-object v1

    .line 215
    :cond_e2
    const/4 v1, 0x0

    :try_start_e3
    invoke-static {p0, v2, v1}, Lmybl/CdnSelector;->failedResult(Lmybl/CdnSelector$CdnUrlInfo;IZ)Lmybl/CdnSelector$RaceResult;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_ea} :catch_182
    .catchall {:try_start_e3 .. :try_end_ea} :catchall_177

    .line 224
    :goto_ea
    if-eqz v8, :cond_ef

    :try_start_ec
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ef} :catch_169

    .line 225
    :cond_ef
    :goto_ef
    if-eqz v0, :cond_f4

    :try_start_f1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f4} :catch_16b

    :cond_f4
    :goto_f4
    move-object v1, v7

    .line 227
    goto :goto_e1

    .line 217
    :cond_f6
    const/4 v1, 0x0

    :try_start_f7
    invoke-static {p0, v2, v1}, Lmybl/CdnSelector;->failedResult(Lmybl/CdnSelector$CdnUrlInfo;IZ)Lmybl/CdnSelector$RaceResult;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fe} :catch_17e
    .catchall {:try_start_f7 .. :try_end_fe} :catchall_173

    move-object v8, v7

    goto :goto_ea

    .line 219
    :catch_100
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v3, v7

    .line 220
    :goto_104
    :try_start_104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    .line 221
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

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    invoke-static {v1}, Lmybl/CdnSelector;->isTimeoutException(Ljava/lang/Exception;)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lmybl/CdnSelector;->failedResult(Lmybl/CdnSelector$CdnUrlInfo;IZ)Lmybl/CdnSelector$RaceResult;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_147
    .catchall {:try_start_104 .. :try_end_147} :catchall_17a

    .line 224
    if-eqz v2, :cond_14c

    :try_start_149
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_14c} :catch_16d

    .line 225
    :cond_14c
    :goto_14c
    if-eqz v3, :cond_f4

    :try_start_14e
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_151} :catch_152

    goto :goto_f4

    :catch_152
    move-exception v0

    goto :goto_f4

    .line 224
    :catchall_154
    move-exception v0

    move-object v1, v0

    move-object v8, v7

    move-object v3, v7

    :goto_158
    if-eqz v8, :cond_15d

    :try_start_15a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_15d} :catch_16f

    .line 225
    :cond_15d
    :goto_15d
    if-eqz v3, :cond_162

    :try_start_15f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_162} :catch_171

    .line 226
    :cond_162
    :goto_162
    throw v1

    .line 224
    :catch_163
    move-exception v2

    goto/16 :goto_dc

    .line 225
    :catch_166
    move-exception v0

    goto/16 :goto_e1

    .line 224
    :catch_169
    move-exception v1

    goto :goto_ef

    .line 225
    :catch_16b
    move-exception v0

    goto :goto_f4

    .line 224
    :catch_16d
    move-exception v0

    goto :goto_14c

    :catch_16f
    move-exception v0

    goto :goto_15d

    .line 225
    :catch_171
    move-exception v0

    goto :goto_162

    .line 224
    :catchall_173
    move-exception v1

    move-object v8, v7

    move-object v3, v0

    goto :goto_158

    :catchall_177
    move-exception v1

    move-object v3, v0

    goto :goto_158

    :catchall_17a
    move-exception v0

    move-object v1, v0

    move-object v8, v2

    goto :goto_158

    .line 219
    :catch_17e
    move-exception v1

    move-object v2, v7

    move-object v3, v0

    goto :goto_104

    :catch_182
    move-exception v1

    move-object v2, v8

    move-object v3, v0

    goto/16 :goto_104
.end method

.method public static updateCdnScore(Ljava/lang/String;ZZ)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 291
    :try_start_1
    sget-object v0, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "cdn_scores"

    const-string v3, "{}"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 296
    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v4, v0

    .line 305
    :goto_1b
    const-string v0, "score"

    const/16 v1, 0x46

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 306
    const-string v0, "failStreak"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 307
    const-string v0, "timeoutCount"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 308
    const-string v0, "successCount"

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 310
    if-eqz p1, :cond_a4

    .line 311
    const/16 v6, 0x64

    add-int/lit8 v3, v3, 0xa

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 313
    add-int/lit8 v0, v0, 0x1

    .line 326
    :cond_44
    :goto_44
    const-string v6, "score"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    const-string v3, "failStreak"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    const-string v2, "timeoutCount"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 329
    const-string v1, "successCount"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 330
    const-string v0, "lastUpdateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 331
    if-nez p1, :cond_6c

    .line 332
    const-string v0, "lastFailTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 335
    :cond_6c
    invoke-virtual {v5, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    sget-object v0, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cdn_scores"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 339
    :goto_82
    return-void

    .line 298
    :cond_83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 299
    const-string v1, "score"

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 300
    const-string v1, "failStreak"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 301
    const-string v1, "timeoutCount"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    const-string v1, "successCount"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v4, v0

    goto/16 :goto_1b

    .line 315
    :cond_a4
    const/4 v2, 0x0

    add-int/lit8 v3, v3, -0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 316
    add-int/lit8 v2, v6, 0x1

    .line 317
    if-eqz p2, :cond_b8

    .line 318
    const/4 v6, 0x0

    add-int/lit8 v3, v3, -0x1e

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 319
    add-int/lit8 v1, v1, 0x1

    .line 321
    :cond_b8
    const/4 v6, 0x3

    if-lt v2, v6, :cond_44

    .line 322
    const/4 v6, 0x0

    add-int/lit8 v3, v3, -0x1e

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c1} :catch_c3

    move-result v3

    goto :goto_44

    .line 337
    :catch_c3
    move-exception v0

    goto :goto_82
.end method
