.class public Lcom/bilibili/tv/ui/download/DownloadWorker;
.super Ljava/lang/Object;
.source "DownloadWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;
    }
.end annotation


# static fields
.field private static final PROGRESS_UPDATE_INTERVAL:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "DownloadWorker"


# instance fields
.field private callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

.field private context:Landroid/content/Context;

.field private currentSpeed:J

.field private downloadCall:Lokhttp3/Call;

.field private httpClient:Lokhttp3/OkHttpClient;

.field private volatile isCancelled:Z

.field private volatile isPaused:Z

.field private lastDownloadedSize:J

.field private lastProgressUpdateTime:J

.field private lastSpeedCalcTime:J

.field private task:Lcom/bilibili/tv/ui/download/model/DownloadTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bilibili/tv/ui/download/model/DownloadTask;Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x1e

    const-wide/16 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v4, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isPaused:Z

    .line 41
    iput-boolean v4, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isCancelled:Z

    .line 44
    iput-wide v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastProgressUpdateTime:J

    .line 48
    iput-wide v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastSpeedCalcTime:J

    .line 49
    iput-wide v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastDownloadedSize:J

    .line 50
    iput-wide v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->currentSpeed:J

    .line 65
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 67
    iput-object p3, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    .line 70
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 71
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 72
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 73
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->httpClient:Lokhttp3/OkHttpClient;

    .line 75
    return-void
.end method

.method private downloadFile()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    .line 103
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 104
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getAvid()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v7}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v8}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCid()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v10}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getQuality()I

    move-result v10

    invoke-static/range {v4 .. v10}, Lcom/bilibili/tv/ui/download/BilibiliDownloadApi;->getDownloadUrl(Landroid/content/Context;JLjava/lang/String;JI)Ljava/lang/String;

    move-result-object v4

    .line 105
    if-eqz v4, :cond_40

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 106
    :cond_40
    new-instance v4, Ljava/io/IOException;

    const-string v5, "\u83b7\u53d6\u4e0b\u8f7dURL\u5931\u8d25"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :cond_48
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v5, v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setVideoUrl(Ljava/lang/String;)V

    .line 111
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 112
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->updateVideoUrl(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_62} :catch_aa

    .line 116
    :goto_62
    const-string v5, "DownloadWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u83b7\u53d6\u4e0b\u8f7dURL\u6210\u529f: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_7a
    const-string v5, "DownloadWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4f7f\u7528\u4e0b\u8f7dURL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v15

    .line 123
    if-eqz v15, :cond_a2

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 124
    :cond_a2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "\u4e0b\u8f7d\u8def\u5f84\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    :catch_aa
    move-exception v5

    .line 114
    const-string v6, "DownloadWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u56de\u5199\u4e0b\u8f7dURL\u5230\u6570\u636e\u5e93\u5931\u8d25: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 126
    :cond_c8
    const-string v5, "content://"

    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    .line 127
    const-string v6, "DownloadWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4e0b\u8f7d\u76ee\u6807: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v16, :cond_19e

    const-string v5, " (SAF)"

    :goto_e3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-wide/16 v8, 0x0

    .line 131
    const/4 v11, 0x0

    .line 132
    const/4 v5, 0x0

    .line 133
    if-eqz v16, :cond_1c4

    .line 136
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->context:Landroid/content/Context;

    invoke-static {v6, v15}, Lcom/bilibili/tv/ui/download/SafFileHelper;->getFileSize(Landroid/content/Context;Ljava/lang/String;)J
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_fb} :catch_1a2

    move-result-wide v6

    .line 137
    const-wide/16 v12, 0x0

    cmp-long v10, v6, v12

    if-lez v10, :cond_4d0

    .line 139
    :try_start_102
    const-string v8, "DownloadWorker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SAF\u65ad\u70b9\u7eed\u4f20\uff0c\u5df2\u4e0b\u8f7d: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6, v7}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_11e} :catch_4c9

    :goto_11e
    move-object v10, v5

    move-wide v8, v6

    .line 159
    :goto_120
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 160
    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v5, "User-Agent"

    const-string v6, "BilibiliTV/1.0"

    .line 161
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v5, "Referer"

    const-string v6, "https://www.bilibili.com"

    .line 162
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 165
    const-wide/16 v6, 0x0

    cmp-long v5, v8, v6

    if-lez v5, :cond_15d

    .line 166
    const-string v5, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 169
    :cond_15d
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 172
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v17

    .line 176
    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    if-nez v4, :cond_227

    .line 177
    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->code()I

    move-result v5

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP\u9519\u8bef: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    const/16 v6, 0x194

    if-ne v5, v6, :cond_21f

    .line 181
    const-string v4, "\u8d44\u6e90\u4e0d\u5b58\u5728(404)"

    .line 186
    :cond_198
    :goto_198
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    :cond_19e
    const-string v5, " (File)"

    goto/16 :goto_e3

    .line 141
    :catch_1a2
    move-exception v10

    move-wide v6, v8

    .line 142
    :goto_1a4
    const-string v8, "DownloadWorker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u8bfb\u53d6SAF\u6587\u4ef6\u5927\u5c0f\u5931\u8d25: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v5

    move-wide v8, v6

    .line 143
    goto/16 :goto_120

    .line 146
    :cond_1c4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 147
    if-eqz v5, :cond_1d8

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1d8

    .line 148
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 150
    :cond_1d8
    new-instance v6, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".tmp"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_21b

    .line 153
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 154
    const-string v7, "DownloadWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u65ad\u70b9\u7eed\u4f20\uff0c\u5df2\u4e0b\u8f7d: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8, v9}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->formatFileSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21b
    move-object v10, v5

    move-object v11, v6

    goto/16 :goto_120

    .line 182
    :cond_21f
    const/16 v6, 0x193

    if-ne v5, v6, :cond_198

    .line 183
    const-string v4, "\u8bbf\u95ee\u88ab\u62d2\u7edd(403)"

    goto/16 :goto_198

    .line 190
    :cond_227
    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 191
    const-wide/16 v6, 0x0

    cmp-long v6, v8, v6

    if-lez v6, :cond_23e

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->code()I

    move-result v6

    const/16 v7, 0xce

    if-ne v6, v7, :cond_23e

    .line 193
    add-long/2addr v4, v8

    .line 196
    :cond_23e
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_4cd

    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTotalSize()J

    move-result-wide v4

    move-wide v12, v4

    .line 200
    :goto_24d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v4, v12, v13}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setTotalSize(J)V

    .line 201
    const-string v4, "DownloadWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6587\u4ef6\u603b\u5927\u5c0f: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v12, v13}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v18

    .line 206
    if-eqz v16, :cond_2ee

    .line 208
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-lez v4, :cond_29c

    const-string v4, "wa"

    .line 209
    :goto_282
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 210
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 209
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4

    .line 211
    if-nez v4, :cond_29f

    .line 212
    new-instance v4, Ljava/io/IOException;

    const-string v5, "\u65e0\u6cd5\u6253\u5f00SAF\u8f93\u51fa\u6d41"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :cond_29c
    const-string v4, "w"

    goto :goto_282

    :cond_29f
    move-object v14, v4

    .line 218
    :goto_2a0
    const/16 v4, 0x2000

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 224
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastSpeedCalcTime:J

    .line 225
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastDownloadedSize:J

    .line 228
    :goto_2b4
    :try_start_2b4
    invoke-virtual/range {v18 .. v19}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3ec

    .line 230
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isPaused:Z

    if-eqz v5, :cond_310

    .line 231
    const-string v4, "DownloadWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0b\u8f7d\u5df2\u6682\u505c: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v6}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V
    :try_end_2e4
    .catchall {:try_start_2b4 .. :try_end_2e4} :catchall_36a

    .line 314
    :try_start_2e4
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_2e7
    .catch Ljava/io/IOException; {:try_start_2e4 .. :try_end_2e7} :catch_2fe

    .line 320
    :goto_2e7
    :try_start_2e7
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_2ea
    .catch Ljava/io/IOException; {:try_start_2e7 .. :try_end_2ea} :catch_307

    .line 326
    :goto_2ea
    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->close()V

    .line 328
    :goto_2ed
    return-void

    .line 215
    :cond_2ee
    new-instance v5, Ljava/io/FileOutputStream;

    const-wide/16 v6, 0x0

    cmp-long v4, v8, v6

    if-lez v4, :cond_2fc

    const/4 v4, 0x1

    :goto_2f7
    invoke-direct {v5, v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v14, v5

    goto :goto_2a0

    :cond_2fc
    const/4 v4, 0x0

    goto :goto_2f7

    .line 315
    :catch_2fe
    move-exception v4

    .line 316
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e7

    .line 321
    :catch_307
    move-exception v4

    .line 322
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2ea

    .line 236
    :cond_310
    :try_start_310
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isCancelled:Z

    if-eqz v5, :cond_38d

    .line 237
    const-string v4, "DownloadWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0b\u8f7d\u5df2\u53d6\u6d88: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v6}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_339
    .catchall {:try_start_310 .. :try_end_339} :catchall_36a

    .line 239
    if-eqz v16, :cond_375

    .line 242
    :try_start_33b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->context:Landroid/content/Context;

    invoke-static {v4, v15}, Lcom/bilibili/tv/ui/download/SafFileHelper;->delete(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_342
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_342} :catch_34c
    .catchall {:try_start_33b .. :try_end_342} :catchall_36a

    .line 314
    :cond_342
    :goto_342
    :try_start_342
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_345
    .catch Ljava/io/IOException; {:try_start_342 .. :try_end_345} :catch_37b

    .line 320
    :goto_345
    :try_start_345
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_348
    .catch Ljava/io/IOException; {:try_start_345 .. :try_end_348} :catch_384

    .line 326
    :goto_348
    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->close()V

    goto :goto_2ed

    .line 243
    :catch_34c
    move-exception v4

    .line 244
    :try_start_34d
    const-string v5, "DownloadWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAF\u53d6\u6d88\u5220\u9664\u6587\u4ef6\u5931\u8d25: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_369
    .catchall {:try_start_34d .. :try_end_369} :catchall_36a

    goto :goto_342

    .line 313
    :catchall_36a
    move-exception v4

    .line 314
    :try_start_36b
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_36e
    .catch Ljava/io/IOException; {:try_start_36b .. :try_end_36e} :catch_4b5

    .line 320
    :goto_36e
    :try_start_36e
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_371
    .catch Ljava/io/IOException; {:try_start_36e .. :try_end_371} :catch_4bf

    .line 326
    :goto_371
    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->close()V

    .line 327
    throw v4

    .line 246
    :cond_375
    if-eqz v11, :cond_342

    .line 247
    :try_start_377
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_37a
    .catchall {:try_start_377 .. :try_end_37a} :catchall_36a

    goto :goto_342

    .line 315
    :catch_37b
    move-exception v4

    .line 316
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_345

    .line 321
    :catch_384
    move-exception v4

    .line 322
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_348

    .line 253
    :cond_38d
    const/4 v5, 0x0

    :try_start_38e
    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 254
    int-to-long v4, v4

    add-long v5, v8, v4

    .line 257
    const/4 v7, 0x0

    .line 258
    const-wide/16 v8, 0x0

    cmp-long v4, v12, v8

    if-lez v4, :cond_3a2

    .line 259
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v5

    div-long/2addr v8, v12

    long-to-int v7, v8

    .line 263
    :cond_3a2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 264
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastSpeedCalcTime:J

    sub-long v8, v22, v8

    .line 266
    const-wide/16 v24, 0x3e8

    cmp-long v4, v8, v24

    if-ltz v4, :cond_3ce

    .line 267
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastDownloadedSize:J

    move-wide/from16 v24, v0

    sub-long v24, v5, v24

    .line 268
    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    div-long v8, v24, v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->currentSpeed:J

    .line 270
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastSpeedCalcTime:J

    .line 271
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastDownloadedSize:J

    .line 275
    :cond_3ce
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastProgressUpdateTime:J

    sub-long v8, v22, v8

    const-wide/16 v24, 0x1f4

    cmp-long v4, v8, v24

    if-ltz v4, :cond_3e9

    .line 276
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->currentSpeed:J

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/bilibili/tv/ui/download/DownloadWorker;->notifyProgress(JIJ)V

    .line 277
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastProgressUpdateTime:J

    :cond_3e9
    move-wide v8, v5

    .line 279
    goto/16 :goto_2b4

    .line 282
    :cond_3ec
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 283
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 284
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 286
    if-eqz v16, :cond_444

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 289
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    div-long v4, v6, v4

    .line 290
    const-string v6, "DownloadWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAF\u4e0b\u8f7d\u5b8c\u6210: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v8}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", \u5e73\u5747\u901f\u5ea6: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/bilibili/tv/ui/download/DownloadWorker;->notifyComplete()V
    :try_end_439
    .catchall {:try_start_38e .. :try_end_439} :catchall_36a

    .line 314
    :goto_439
    :try_start_439
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_43c
    .catch Ljava/io/IOException; {:try_start_439 .. :try_end_43c} :catch_4a3

    .line 320
    :goto_43c
    :try_start_43c
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_43f
    .catch Ljava/io/IOException; {:try_start_43c .. :try_end_43f} :catch_4ac

    .line 326
    :goto_43f
    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->close()V

    goto/16 :goto_2ed

    .line 296
    :cond_444
    :try_start_444
    invoke-virtual {v11, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_49b

    .line 297
    const-string v4, "DownloadWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0b\u8f7d\u5b8c\u6210: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v6}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 301
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    div-long v4, v6, v4

    .line 302
    const-string v6, "DownloadWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5e73\u5747\u901f\u5ea6: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/bilibili/tv/ui/download/DownloadWorker;->notifyComplete()V

    goto :goto_439

    .line 307
    :cond_49b
    new-instance v4, Ljava/io/IOException;

    const-string v5, "\u91cd\u547d\u540d\u6587\u4ef6\u5931\u8d25"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4a3
    .catchall {:try_start_444 .. :try_end_4a3} :catchall_36a

    .line 315
    :catch_4a3
    move-exception v4

    .line 316
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43c

    .line 321
    :catch_4ac
    move-exception v4

    .line 322
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43f

    .line 315
    :catch_4b5
    move-exception v5

    .line 316
    const-string v6, "DownloadWorker"

    const-string v7, "\u5173\u95ed\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36e

    .line 321
    :catch_4bf
    move-exception v5

    .line 322
    const-string v6, "DownloadWorker"

    const-string v7, "\u5173\u95ed\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_371

    .line 141
    :catch_4c9
    move-exception v8

    move-object v10, v8

    goto/16 :goto_1a4

    :cond_4cd
    move-wide v12, v4

    goto/16 :goto_24d

    :cond_4d0
    move-wide v6, v8

    goto/16 :goto_11e
.end method

.method private notifyComplete()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    if-eqz v0, :cond_b

    .line 372
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;->onComplete(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 374
    :cond_b
    return-void
.end method

.method private notifyError(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    if-eqz v0, :cond_b

    .line 381
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-interface {v0, v1, p1, p2}, Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;->onError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V

    .line 383
    :cond_b
    return-void
.end method

.method private notifyProgress(JIJ)V
    .locals 7

    .prologue
    .line 362
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    if-eqz v0, :cond_e

    .line 363
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;->onProgress(Lcom/bilibili/tv/ui/download/model/DownloadTask;JIJ)V

    .line 365
    :cond_e
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 347
    const-string v0, "DownloadWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d6\u6d88\u4e0b\u8f7d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isCancelled:Z

    .line 351
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 352
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 354
    :cond_32
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 334
    const-string v0, "DownloadWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6682\u505c\u4e0b\u8f7d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isPaused:Z

    .line 338
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 339
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 341
    :cond_32
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 79
    const-string v0, "DownloadWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d\u4efb\u52a1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_1e
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadFile()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    .line 93
    :cond_21
    :goto_21
    return-void

    .line 85
    :catch_22
    move-exception v0

    .line 86
    const-string v1, "DownloadWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u8f7d\u5f02\u5e38: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isPaused:Z

    if-nez v1, :cond_21

    iget-boolean v1, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isCancelled:Z

    if-nez v1, :cond_21

    .line 90
    const/16 v1, 0x3e8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ui/download/DownloadWorker;->notifyError(ILjava/lang/String;)V

    goto :goto_21
.end method
