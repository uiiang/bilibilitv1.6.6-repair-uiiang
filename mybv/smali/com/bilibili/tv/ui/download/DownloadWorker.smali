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
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getVideoUrl()Ljava/lang/String;

    move-result-object v6

    .line 101
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 102
    :cond_10
    new-instance v4, Ljava/io/IOException;

    const-string v5, "\u89c6\u9891URL\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u4e0b\u8f7d"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 105
    :cond_18
    const-string v4, "DownloadWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4f7f\u7528\u4e0b\u8f7dURL: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 109
    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4c

    .line 110
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 114
    :cond_4c
    new-instance v12, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    const-wide/16 v4, 0x0

    .line 119
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 120
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 121
    const-string v7, "DownloadWorker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u65ad\u70b9\u7eed\u4f20\uff0c\u5df2\u4e0b\u8f7d: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->formatFileSize(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_a1
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 126
    invoke-virtual {v7, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    const-string v7, "User-Agent"

    const-string v8, "BilibiliTV/1.0"

    .line 127
    invoke-virtual {v6, v7, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    const-string v7, "Referer"

    const-string v8, "https://www.bilibili.com"

    .line 128
    invoke-virtual {v6, v7, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 131
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_de

    .line 132
    const-string v7, "Range"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 135
    :cond_de
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    .line 138
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v7, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    .line 139
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v14

    .line 142
    invoke-virtual {v14}, Lokhttp3/Response;->isSuccessful()Z

    move-result v6

    if-nez v6, :cond_126

    .line 143
    invoke-virtual {v14}, Lokhttp3/Response;->code()I

    move-result v5

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP\u9519\u8bef: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    const/16 v6, 0x194

    if-ne v5, v6, :cond_11f

    .line 147
    const-string v4, "\u8d44\u6e90\u4e0d\u5b58\u5728(404)"

    .line 152
    :cond_119
    :goto_119
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    :cond_11f
    const/16 v6, 0x193

    if-ne v5, v6, :cond_119

    .line 149
    const-string v4, "\u8bbf\u95ee\u88ab\u62d2\u7edd(403)"

    goto :goto_119

    .line 156
    :cond_126
    invoke-virtual {v14}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    .line 157
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_13d

    invoke-virtual {v14}, Lokhttp3/Response;->code()I

    move-result v8

    const/16 v9, 0xce

    if-ne v8, v9, :cond_13d

    .line 159
    add-long/2addr v6, v4

    .line 162
    :cond_13d
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_332

    .line 163
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v6}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTotalSize()J

    move-result-wide v6

    move-wide v10, v6

    .line 166
    :goto_14c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v6, v10, v11}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setTotalSize(J)V

    .line 167
    const-string v6, "DownloadWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6587\u4ef6\u603b\u5927\u5c0f: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v10, v11}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->formatFileSize(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v14}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v15

    .line 171
    new-instance v16, Ljava/io/FileOutputStream;

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1d5

    const/4 v6, 0x1

    :goto_180
    move-object/from16 v0, v16

    invoke-direct {v0, v12, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 173
    const/16 v6, 0x2000

    new-array v0, v6, [B

    move-object/from16 v17, v0

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 179
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastSpeedCalcTime:J

    .line 180
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastDownloadedSize:J

    .line 183
    :goto_199
    :try_start_199
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_292

    .line 185
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isPaused:Z

    if-eqz v7, :cond_1e9

    .line 186
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

    .line 187
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1cb
    .catchall {:try_start_199 .. :try_end_1cb} :catchall_303

    .line 250
    :try_start_1cb
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1ce} :catch_1d7

    .line 256
    :goto_1ce
    :try_start_1ce
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1d1
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_1d1} :catch_1e0

    .line 262
    :goto_1d1
    invoke-virtual {v14}, Lokhttp3/Response;->close()V

    .line 264
    :goto_1d4
    return-void

    .line 171
    :cond_1d5
    const/4 v6, 0x0

    goto :goto_180

    .line 251
    :catch_1d7
    move-exception v4

    .line 252
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1ce

    .line 257
    :catch_1e0
    move-exception v4

    .line 258
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d1

    .line 191
    :cond_1e9
    :try_start_1e9
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isCancelled:Z

    if-eqz v7, :cond_231

    .line 192
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

    .line 193
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 194
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_215
    .catchall {:try_start_1e9 .. :try_end_215} :catchall_303

    .line 250
    :try_start_215
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_218
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_218} :catch_21f

    .line 256
    :goto_218
    :try_start_218
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_21b
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_21b} :catch_228

    .line 262
    :goto_21b
    invoke-virtual {v14}, Lokhttp3/Response;->close()V

    goto :goto_1d4

    .line 251
    :catch_21f
    move-exception v4

    .line 252
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_218

    .line 257
    :catch_228
    move-exception v4

    .line 258
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21b

    .line 199
    :cond_231
    const/4 v7, 0x0

    :try_start_232
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 200
    int-to-long v6, v6

    add-long v5, v4, v6

    .line 203
    const/4 v7, 0x0

    .line 204
    const-wide/16 v8, 0x0

    cmp-long v4, v10, v8

    if-lez v4, :cond_248

    .line 205
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v5

    div-long/2addr v8, v10

    long-to-int v7, v8

    .line 209
    :cond_248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 210
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastSpeedCalcTime:J

    sub-long v8, v20, v8

    .line 212
    const-wide/16 v22, 0x3e8

    cmp-long v4, v8, v22

    if-ltz v4, :cond_274

    .line 213
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastDownloadedSize:J

    move-wide/from16 v22, v0

    sub-long v22, v5, v22

    .line 214
    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    div-long v8, v22, v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->currentSpeed:J

    .line 216
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastSpeedCalcTime:J

    .line 217
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastDownloadedSize:J

    .line 221
    :cond_274
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastProgressUpdateTime:J

    sub-long v8, v20, v8

    const-wide/16 v22, 0x1f4

    cmp-long v4, v8, v22

    if-ltz v4, :cond_28f

    .line 222
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->currentSpeed:J

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/bilibili/tv/ui/download/DownloadWorker;->notifyProgress(JIJ)V

    .line 223
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bilibili/tv/ui/download/DownloadWorker;->lastProgressUpdateTime:J

    :cond_28f
    move-wide v4, v5

    .line 225
    goto/16 :goto_199

    .line 228
    :cond_292
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->flush()V

    .line 229
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 230
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 233
    invoke-virtual {v12, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2fb

    .line 234
    const-string v6, "DownloadWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4e0b\u8f7d\u5b8c\u6210: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v8}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v18

    .line 238
    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    div-long/2addr v4, v6

    .line 239
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

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/bilibili/tv/ui/download/DownloadWorker;->notifyComplete()V
    :try_end_2f0
    .catchall {:try_start_232 .. :try_end_2f0} :catchall_303

    .line 250
    :try_start_2f0
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f3
    .catch Ljava/io/IOException; {:try_start_2f0 .. :try_end_2f3} :catch_30e

    .line 256
    :goto_2f3
    :try_start_2f3
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2f6
    .catch Ljava/io/IOException; {:try_start_2f3 .. :try_end_2f6} :catch_317

    .line 262
    :goto_2f6
    invoke-virtual {v14}, Lokhttp3/Response;->close()V

    goto/16 :goto_1d4

    .line 244
    :cond_2fb
    :try_start_2fb
    new-instance v4, Ljava/io/IOException;

    const-string v5, "\u91cd\u547d\u540d\u6587\u4ef6\u5931\u8d25"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_303
    .catchall {:try_start_2fb .. :try_end_303} :catchall_303

    .line 249
    :catchall_303
    move-exception v4

    .line 250
    :try_start_304
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_307
    .catch Ljava/io/IOException; {:try_start_304 .. :try_end_307} :catch_320

    .line 256
    :goto_307
    :try_start_307
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_30a
    .catch Ljava/io/IOException; {:try_start_307 .. :try_end_30a} :catch_329

    .line 262
    :goto_30a
    invoke-virtual {v14}, Lokhttp3/Response;->close()V

    .line 263
    throw v4

    .line 251
    :catch_30e
    move-exception v4

    .line 252
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f3

    .line 257
    :catch_317
    move-exception v4

    .line 258
    const-string v5, "DownloadWorker"

    const-string v6, "\u5173\u95ed\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f6

    .line 251
    :catch_320
    move-exception v5

    .line 252
    const-string v6, "DownloadWorker"

    const-string v7, "\u5173\u95ed\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_307

    .line 257
    :catch_329
    move-exception v5

    .line 258
    const-string v6, "DownloadWorker"

    const-string v7, "\u5173\u95ed\u8f93\u5165\u6d41\u5931\u8d25"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30a

    :cond_332
    move-wide v10, v6

    goto/16 :goto_14c
.end method

.method private notifyComplete()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    if-eqz v0, :cond_b

    .line 308
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;->onComplete(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 310
    :cond_b
    return-void
.end method

.method private notifyError(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    if-eqz v0, :cond_b

    .line 317
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-interface {v0, v1, p1, p2}, Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;->onError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V

    .line 319
    :cond_b
    return-void
.end method

.method private notifyProgress(JIJ)V
    .locals 7

    .prologue
    .line 298
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    if-eqz v0, :cond_e

    .line 299
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->callback:Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;->onProgress(Lcom/bilibili/tv/ui/download/model/DownloadTask;JIJ)V

    .line 301
    :cond_e
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 283
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

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isCancelled:Z

    .line 287
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 288
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 290
    :cond_32
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 270
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

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->isPaused:Z

    .line 274
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 275
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadWorker;->downloadCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 277
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
