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

    move-result-object v16

    .line 123
    if-eqz v16, :cond_a2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

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

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    .line 127
    const-string v6, "DownloadWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4e0b\u8f7d\u76ee\u6807: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v17, :cond_1a4

    const-string v5, " (SAF)"

    :goto_e7
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
    if-eqz v17, :cond_1ca

    .line 136
    :try_start_f8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->context:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->getFileSize(Landroid/content/Context;Ljava/lang/String;)J
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_101} :catch_1a8

    move-result-wide v6

    .line 137
    const-wide/16 v12, 0x0

    cmp-long v10, v6, v12

    if-lez v10, :cond_520

    .line 139
    :try_start_108
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
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_124} :catch_519

    :goto_124
    move-object v10, v5

    move-wide v8, v6

    .line 159
    :goto_126
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

    if-lez v5, :cond_163

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
    :cond_163
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

    move-result-object v18

    .line 176
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    if-nez v4, :cond_233

    .line 177
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->code()I

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

    if-ne v5, v6, :cond_22b

    .line 181
    const-string v4, "\u8d44\u6e90\u4e0d\u5b58\u5728(404)"

    .line 186
    :cond_19e
    :goto_19e
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    :cond_1a4
    const-string v5, " (File)"

    goto/16 :goto_e7

    .line 141
    :catch_1a8
    move-exception v10

    move-wide v6, v8

    .line 142
    :goto_1aa
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
    goto/16 :goto_126

    .line 146
    :cond_1ca
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 147
    if-eqz v5, :cond_1e0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1e0

    .line 148
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 150
    :cond_1e0
    new-instance v6, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".tmp"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_227

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

    :cond_227
    move-object v10, v5

    move-object v11, v6

    goto/16 :goto_126

    .line 182
    :cond_22b
    const/16 v6, 0x193

    if-ne v5, v6, :cond_19e

    .line 183
    const-string v4, "\u8bbf\u95ee\u88ab\u62d2\u7edd(403)"

    goto/16 :goto_19e

    .line 190
    :cond_233
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 191
    const-wide/16 v6, 0x0

    cmp-long v6, v8, v6

    if-lez v6, :cond_24a

    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->code()I

    move-result v6

    const/16 v7, 0xce

    if-ne v6, v7, :cond_24a

    .line 193
    add-long/2addr v4, v8

    .line 196
    :cond_24a
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_51d

    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTotalSize()J

    move-result-wide v4

    move-wide v12, v4

    .line 200
    :goto_259
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

    .line 206
    const/4 v6, 0x0

    .line 207
    const/4 v5, 0x0

    .line 209
    :try_start_27e
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;
    :try_end_285
    .catchall {:try_start_27e .. :try_end_285} :catchall_516

    move-result-object v15

    .line 210
    if-eqz v17, :cond_312

    .line 212
    const-wide/16 v6, 0x0

    cmp-long v4, v8, v6

    if-lez v4, :cond_2ba

    :try_start_28e
    const-string v4, "wa"

    .line 213
    :goto_290
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 214
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 213
    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v5

    .line 215
    if-nez v5, :cond_2bd

    .line 216
    new-instance v4, Ljava/io/IOException;

    const-string v6, "\u65e0\u6cd5\u6253\u5f00SAF\u8f93\u51fa\u6d41"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2aa
    .catchall {:try_start_28e .. :try_end_2aa} :catchall_2aa

    .line 316
    :catchall_2aa
    move-exception v4

    move-object v6, v15

    :goto_2ac
    if-eqz v5, :cond_2b1

    .line 318
    :try_start_2ae
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2b1
    .catch Ljava/io/IOException; {:try_start_2ae .. :try_end_2b1} :catch_4f8

    .line 324
    :cond_2b1
    :goto_2b1
    if-eqz v6, :cond_2b6

    .line 326
    :try_start_2b3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2b6
    .catch Ljava/io/IOException; {:try_start_2b3 .. :try_end_2b6} :catch_502

    .line 334
    :cond_2b6
    :goto_2b6
    :try_start_2b6
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->close()V
    :try_end_2b9
    .catch Ljava/lang/Exception; {:try_start_2b6 .. :try_end_2b9} :catch_50c

    .line 338
    :goto_2b9
    throw v4

    .line 212
    :cond_2ba
    :try_start_2ba
    const-string v4, "w"
    :try_end_2bc
    .catchall {:try_start_2ba .. :try_end_2bc} :catchall_2aa

    goto :goto_290

    :cond_2bd
    move-object v14, v5

    .line 222
    :goto_2be
    const/16 v4, 0x2000

    :try_start_2c0
    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 228
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastSpeedCalcTime:J

    .line 229
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastDownloadedSize:J

    .line 231
    :goto_2d2
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_421

    .line 233
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isPaused:Z

    if-eqz v5, :cond_33c

    .line 234
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

    .line 235
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V
    :try_end_304
    .catchall {:try_start_2c0 .. :try_end_304} :catchall_3a5

    .line 316
    if-eqz v14, :cond_309

    .line 318
    :try_start_306
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_309
    .catch Ljava/io/IOException; {:try_start_306 .. :try_end_309} :catch_321

    .line 324
    :cond_309
    :goto_309
    if-eqz v15, :cond_30e

    .line 326
    :try_start_30b
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_30e
    .catch Ljava/io/IOException; {:try_start_30b .. :try_end_30e} :catch_32a

    .line 334
    :cond_30e
    :goto_30e
    :try_start_30e
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->close()V
    :try_end_311
    .catch Ljava/lang/Exception; {:try_start_30e .. :try_end_311} :catch_333

    .line 339
    :goto_311
    return-void

    .line 219
    :cond_312
    :try_start_312
    new-instance v14, Ljava/io/FileOutputStream;

    const-wide/16 v6, 0x0

    cmp-long v4, v8, v6

    if-lez v4, :cond_31f

    const/4 v4, 0x1

    :goto_31b
    invoke-direct {v14, v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_31e
    .catchall {:try_start_312 .. :try_end_31e} :catchall_2aa

    goto :goto_2be

    :cond_31f
    const/4 v4, 0x0

    goto :goto_31b

    .line 319
    :catch_321
    move-exception v4

    .line 320
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_309

    .line 327
    :catch_32a
    move-exception v4

    .line 328
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30e

    .line 335
    :catch_333
    move-exception v4

    .line 336
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u54cd\u5e94\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_311

    .line 239
    :cond_33c
    :try_start_33c
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isCancelled:Z

    if-eqz v5, :cond_3c2

    .line 240
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

    .line 241
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_365
    .catchall {:try_start_33c .. :try_end_365} :catchall_3a5

    .line 242
    if-eqz v17, :cond_3aa

    .line 245
    :try_start_367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->context:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->delete(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_370
    .catch Ljava/lang/Exception; {:try_start_367 .. :try_end_370} :catch_387
    .catchall {:try_start_367 .. :try_end_370} :catchall_3a5

    .line 316
    :cond_370
    :goto_370
    if-eqz v14, :cond_375

    .line 318
    :try_start_372
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_375
    .catch Ljava/io/IOException; {:try_start_372 .. :try_end_375} :catch_3b0

    .line 324
    :cond_375
    :goto_375
    if-eqz v15, :cond_37a

    .line 326
    :try_start_377
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_37a
    .catch Ljava/io/IOException; {:try_start_377 .. :try_end_37a} :catch_3b9

    .line 334
    :cond_37a
    :goto_37a
    :try_start_37a
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->close()V
    :try_end_37d
    .catch Ljava/lang/Exception; {:try_start_37a .. :try_end_37d} :catch_37e

    goto :goto_311

    .line 335
    :catch_37e
    move-exception v4

    .line 336
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u54cd\u5e94\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_311

    .line 246
    :catch_387
    move-exception v4

    .line 247
    :try_start_388
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

    goto :goto_370

    .line 316
    :catchall_3a5
    move-exception v4

    move-object v5, v14

    move-object v6, v15

    goto/16 :goto_2ac

    .line 249
    :cond_3aa
    if-eqz v11, :cond_370

    .line 250
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_3af
    .catchall {:try_start_388 .. :try_end_3af} :catchall_3a5

    goto :goto_370

    .line 319
    :catch_3b0
    move-exception v4

    .line 320
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_375

    .line 327
    :catch_3b9
    move-exception v4

    .line 328
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37a

    .line 256
    :cond_3c2
    const/4 v5, 0x0

    :try_start_3c3
    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 257
    int-to-long v4, v4

    add-long v5, v8, v4

    .line 260
    const/4 v7, 0x0

    .line 261
    const-wide/16 v8, 0x0

    cmp-long v4, v12, v8

    if-lez v4, :cond_3d7

    .line 262
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v5

    div-long/2addr v8, v12

    long-to-int v7, v8

    .line 266
    :cond_3d7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 267
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastSpeedCalcTime:J

    sub-long v8, v22, v8

    .line 269
    const-wide/16 v24, 0x3e8

    cmp-long v4, v8, v24

    if-ltz v4, :cond_403

    .line 270
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastDownloadedSize:J

    move-wide/from16 v24, v0

    sub-long v24, v5, v24

    .line 271
    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    div-long v8, v24, v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->currentSpeed:J

    .line 273
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastSpeedCalcTime:J

    .line 274
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastDownloadedSize:J

    .line 278
    :cond_403
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastProgressUpdateTime:J

    sub-long v8, v22, v8

    const-wide/16 v24, 0x1f4

    cmp-long v4, v8, v24

    if-ltz v4, :cond_41e

    .line 279
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->currentSpeed:J

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/bilibili/tv/ui/download/DownloadWorker;->notifyProgress(JIJ)V

    .line 280
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastProgressUpdateTime:J

    :cond_41e
    move-wide v8, v5

    .line 282
    goto/16 :goto_2d2

    .line 285
    :cond_421
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 286
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 287
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 289
    if-eqz v17, :cond_487

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 292
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    div-long v4, v6, v4

    .line 293
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

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/bilibili/tv/ui/download/DownloadWorker;->notifyComplete()V
    :try_end_46e
    .catchall {:try_start_3c3 .. :try_end_46e} :catchall_3a5

    .line 316
    :goto_46e
    if-eqz v14, :cond_473

    .line 318
    :try_start_470
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_473
    .catch Ljava/io/IOException; {:try_start_470 .. :try_end_473} :catch_4e6

    .line 324
    :cond_473
    :goto_473
    if-eqz v15, :cond_478

    .line 326
    :try_start_475
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_478
    .catch Ljava/io/IOException; {:try_start_475 .. :try_end_478} :catch_4ef

    .line 334
    :cond_478
    :goto_478
    :try_start_478
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->close()V
    :try_end_47b
    .catch Ljava/lang/Exception; {:try_start_478 .. :try_end_47b} :catch_47d

    goto/16 :goto_311

    .line 335
    :catch_47d
    move-exception v4

    .line 336
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u54cd\u5e94\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_311

    .line 299
    :cond_487
    :try_start_487
    invoke-virtual {v11, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4de

    .line 300
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

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 304
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    div-long v4, v6, v4

    .line 305
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

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/bilibili/tv/ui/download/DownloadWorker;->notifyComplete()V

    goto :goto_46e

    .line 310
    :cond_4de
    new-instance v4, Ljava/io/IOException;

    const-string v5, "\u91cd\u547d\u540d\u6587\u4ef6\u5931\u8d25"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4e6
    .catchall {:try_start_487 .. :try_end_4e6} :catchall_3a5

    .line 319
    :catch_4e6
    move-exception v4

    .line 320
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_473

    .line 327
    :catch_4ef
    move-exception v4

    .line 328
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_478

    .line 319
    :catch_4f8
    move-exception v5

    .line 320
    const-string v7, "DownloadWorker"

    const-string v8, "\u5173\u95ed\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b1

    .line 327
    :catch_502
    move-exception v5

    .line 328
    const-string v6, "DownloadWorker"

    const-string v7, "\u5173\u95ed\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b6

    .line 335
    :catch_50c
    move-exception v5

    .line 336
    const-string v6, "DownloadWorker"

    const-string v7, "\u5173\u95ed\u54cd\u5e94\u5931\u8d25"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b9

    .line 316
    :catchall_516
    move-exception v4

    goto/16 :goto_2ac

    .line 141
    :catch_519
    move-exception v8

    move-object v10, v8

    goto/16 :goto_1aa

    :cond_51d
    move-wide v12, v4

    goto/16 :goto_259

    :cond_520
    move-wide v6, v8

    goto/16 :goto_124
.end method

.method private notifyComplete()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    if-eqz v0, :cond_b

    .line 383
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;->onComplete(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 385
    :cond_b
    return-void
.end method

.method private notifyError(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    if-eqz v0, :cond_b

    .line 392
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-interface {v0, v1, p1, p2}, Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;->onError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V

    .line 394
    :cond_b
    return-void
.end method

.method private notifyProgress(JIJ)V
    .locals 7

    .prologue
    .line 373
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    if-eqz v0, :cond_e

    .line 374
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;->onProgress(Lcom/bilibili/tv/ui/download/model/DownloadTask;JIJ)V

    .line 376
    :cond_e
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 358
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

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isCancelled:Z

    .line 362
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 363
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 365
    :cond_32
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 345
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

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isPaused:Z

    .line 349
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 350
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 352
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
