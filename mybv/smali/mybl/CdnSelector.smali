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
    .line 242
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 245
    :goto_8
    return-object v0

    .line 244
    :catch_9
    move-exception v0

    .line 245
    const-string v0, ""

    goto :goto_8
.end method

.method public static getCdnScore(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/16 v0, 0x46

    .line 171
    :try_start_2
    sget-object v1, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_7

    .line 181
    :cond_6
    :goto_6
    return v0

    .line 172
    :cond_7
    sget-object v1, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "cdn_scores"

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 176
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 177
    const-string v2, "score"

    const/16 v3, 0x46

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_29

    move-result v0

    goto :goto_6

    .line 179
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
    .line 237
    invoke-static {p0, p1, p2}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 238
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

    if-eqz v0, :cond_b

    .line 76
    :cond_9
    const/4 v0, 0x0

    .line 133
    :goto_a
    return-object v0

    .line 79
    :cond_b
    sget-object v0, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_12

    .line 80
    invoke-static {p0}, Lmybl/CdnSelector;->init(Landroid/content/Context;)V

    .line 83
    :cond_12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/CdnSelector$CdnUrlInfo;

    .line 84
    iget-object v2, v0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-static {v2}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lmybl/CdnSelector$CdnUrlInfo;->score:I

    goto :goto_16

    .line 87
    :cond_2b
    new-instance v0, Lmybl/CdnSelector$1;

    invoke-direct {v0}, Lmybl/CdnSelector$1;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 95
    sput-boolean v6, Lmybl/CdnSelector;->raceCancelled:Z

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/CdnSelector$CdnUrlInfo;

    .line 99
    new-instance v5, Lmybl/CdnSelector$2;

    invoke-direct {v5, v0}, Lmybl/CdnSelector$2;-><init>(Lmybl/CdnSelector$CdnUrlInfo;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 108
    :cond_57
    :try_start_57
    sget-object v0, Lmybl/CdnSelector;->executor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v4, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v4, v5, v7}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_65
    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 111
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_7a} :catch_c8

    move-result v4

    if-nez v4, :cond_65

    .line 113
    :try_start_7d
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/CdnSelector$RaceResult;

    .line 114
    if-eqz v0, :cond_65

    sget-boolean v4, Lmybl/CdnSelector;->raceCancelled:Z

    if-nez v4, :cond_65

    .line 115
    const/4 v4, 0x1

    sput-boolean v4, Lmybl/CdnSelector;->raceCancelled:Z

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 117
    iput-wide v4, v0, Lmybl/CdnSelector$RaceResult;->raceTime:J

    .line 119
    iget-object v7, v0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lmybl/CdnSelector;->updateCdnScore(Ljava/lang/String;ZZ)V

    .line 121
    const-string v7, "CdnSelector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[RACE] winner="

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
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_c4} :catch_c6

    goto/16 :goto_a

    .line 124
    :catch_c6
    move-exception v0

    goto :goto_65

    .line 128
    :catch_c8
    move-exception v0

    .line 131
    :cond_c9
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/CdnSelector$CdnUrlInfo;

    .line 132
    const-string v1, "CdnSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RACE] \u5168\u90e8\u5931\u8d25\uff0c\u4f7f\u7528\u6700\u9ad8\u5206CDN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v1, Lmybl/CdnSelector$RaceResult;

    iget-object v2, v0, Lmybl/CdnSelector$CdnUrlInfo;->url:Ljava/lang/String;

    iget-object v3, v0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lmybl/CdnSelector$RaceResult;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object v0, v1

    goto/16 :goto_a
.end method

.method private static testUrl(Lmybl/CdnSelector$CdnUrlInfo;)Lmybl/CdnSelector$RaceResult;
    .locals 9

    .prologue
    const/16 v4, 0x400

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 137
    .line 140
    :try_start_4
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lmybl/CdnSelector$CdnUrlInfo;->url:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_73
    .catchall {:try_start_4 .. :try_end_11} :catchall_83

    .line 142
    const/16 v2, 0x7d0

    :try_start_13
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 143
    const/16 v2, 0x7d0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 144
    const-string v2, "Range"

    const-string v3, "bytes=0-1023"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "User-Agent"

    const-string v3, "Bilibili Freedoooooom/MarkII"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 148
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_35

    const/16 v3, 0xce

    if-ne v2, v3, :cond_66

    .line 149
    :cond_35
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_38} :catch_a7
    .catchall {:try_start_13 .. :try_end_38} :catchall_a0

    move-result-object v8

    .line 150
    const/16 v2, 0x400

    :try_start_3b
    new-array v2, v2, [B

    .line 153
    :goto_3d
    if-ge v1, v4, :cond_49

    rsub-int v3, v1, 0x400

    invoke-virtual {v8, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_49

    .line 154
    add-int/2addr v1, v3

    goto :goto_3d

    .line 157
    :cond_49
    if-lez v1, :cond_67

    sget-boolean v1, Lmybl/CdnSelector;->raceCancelled:Z

    if-nez v1, :cond_67

    .line 158
    new-instance v1, Lmybl/CdnSelector$RaceResult;

    iget-object v2, p0, Lmybl/CdnSelector$CdnUrlInfo;->url:Ljava/lang/String;

    iget-object v3, p0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lmybl/CdnSelector$RaceResult;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5b} :catch_aa
    .catchall {:try_start_3b .. :try_end_5b} :catchall_a4

    .line 163
    if-eqz v8, :cond_60

    :try_start_5d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_92

    .line 164
    :cond_60
    :goto_60
    if-eqz v0, :cond_65

    :try_start_62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_94

    .line 166
    :cond_65
    :goto_65
    return-object v1

    :cond_66
    move-object v8, v7

    .line 163
    :cond_67
    if-eqz v8, :cond_6c

    :try_start_69
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_96

    .line 164
    :cond_6c
    :goto_6c
    if-eqz v0, :cond_71

    :try_start_6e
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_98

    :cond_71
    :goto_71
    move-object v1, v7

    .line 166
    goto :goto_65

    .line 161
    :catch_73
    move-exception v0

    move-object v1, v7

    move-object v0, v7

    .line 163
    :goto_76
    if-eqz v1, :cond_7b

    :try_start_78
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_9a

    .line 164
    :cond_7b
    :goto_7b
    if-eqz v0, :cond_71

    :try_start_7d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_71

    :catch_81
    move-exception v0

    goto :goto_71

    .line 163
    :catchall_83
    move-exception v0

    move-object v1, v0

    move-object v8, v7

    move-object v2, v7

    :goto_87
    if-eqz v8, :cond_8c

    :try_start_89
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_9c

    .line 164
    :cond_8c
    :goto_8c
    if-eqz v2, :cond_91

    :try_start_8e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_9e

    .line 165
    :cond_91
    :goto_91
    throw v1

    .line 163
    :catch_92
    move-exception v2

    goto :goto_60

    .line 164
    :catch_94
    move-exception v0

    goto :goto_65

    .line 163
    :catch_96
    move-exception v1

    goto :goto_6c

    .line 164
    :catch_98
    move-exception v0

    goto :goto_71

    .line 163
    :catch_9a
    move-exception v1

    goto :goto_7b

    :catch_9c
    move-exception v0

    goto :goto_8c

    .line 164
    :catch_9e
    move-exception v0

    goto :goto_91

    .line 163
    :catchall_a0
    move-exception v1

    move-object v8, v7

    move-object v2, v0

    goto :goto_87

    :catchall_a4
    move-exception v1

    move-object v2, v0

    goto :goto_87

    .line 161
    :catch_a7
    move-exception v1

    move-object v1, v7

    goto :goto_76

    :catch_aa
    move-exception v1

    move-object v1, v8

    goto :goto_76
.end method

.method public static updateCdnScore(Ljava/lang/String;ZZ)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 186
    :try_start_1
    sget-object v0, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "cdn_scores"

    const-string v3, "{}"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 191
    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v4, v0

    .line 200
    :goto_1b
    const-string v0, "score"

    const/16 v1, 0x46

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 201
    const-string v0, "failStreak"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 202
    const-string v0, "timeoutCount"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 203
    const-string v0, "successCount"

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 205
    if-eqz p1, :cond_a4

    .line 206
    const/16 v6, 0x64

    add-int/lit8 v3, v3, 0xa

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 208
    add-int/lit8 v0, v0, 0x1

    .line 221
    :cond_44
    :goto_44
    const-string v6, "score"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    const-string v3, "failStreak"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 223
    const-string v2, "timeoutCount"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    const-string v1, "successCount"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    const-string v0, "lastUpdateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 226
    if-nez p1, :cond_6c

    .line 227
    const-string v0, "lastFailTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 230
    :cond_6c
    invoke-virtual {v5, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    sget-object v0, Lmybl/CdnSelector;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cdn_scores"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    :goto_82
    return-void

    .line 193
    :cond_83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 194
    const-string v1, "score"

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    const-string v1, "failStreak"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    const-string v1, "timeoutCount"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string v1, "successCount"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v4, v0

    goto/16 :goto_1b

    .line 210
    :cond_a4
    const/4 v2, 0x0

    add-int/lit8 v3, v3, -0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 211
    add-int/lit8 v2, v6, 0x1

    .line 212
    if-eqz p2, :cond_b8

    .line 213
    const/4 v6, 0x0

    add-int/lit8 v3, v3, -0x1e

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 214
    add-int/lit8 v1, v1, 0x1

    .line 216
    :cond_b8
    const/4 v6, 0x3

    if-lt v2, v6, :cond_44

    .line 217
    const/4 v6, 0x0

    add-int/lit8 v3, v3, -0x1e

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c1} :catch_c3

    move-result v3

    goto :goto_44

    .line 232
    :catch_c3
    move-exception v0

    goto :goto_82
.end method
