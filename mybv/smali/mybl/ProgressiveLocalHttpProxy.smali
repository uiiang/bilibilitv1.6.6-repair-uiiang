.class public Lmybl/ProgressiveLocalHttpProxy;
.super Ljava/lang/Object;
.source "ProgressiveLocalHttpProxy.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MAX_RETRIES:I = 0x3

.field private static final RETRY_DELAY_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ProgressiveProxy"


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private volatile running:Z

.field private final serverSocket:Ljava/net/ServerSocket;

.field private final upstreamByKey:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmybl/ProgressiveLocalHttpProxy;->upstreamByKey:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmybl/ProgressiveLocalHttpProxy;->running:Z

    .line 32
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lmybl/ProgressiveLocalHttpProxy;->serverSocket:Ljava/net/ServerSocket;

    .line 33
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lmybl/ProgressiveLocalHttpProxy;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 35
    iget-object v0, p0, Lmybl/ProgressiveLocalHttpProxy;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lmybl/ProgressiveLocalHttpProxy$1;

    invoke-direct {v1, p0}, Lmybl/ProgressiveLocalHttpProxy$1;-><init>(Lmybl/ProgressiveLocalHttpProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 41
    const-string v0, "ProgressiveProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy started on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmybl/ProgressiveLocalHttpProxy;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method private acceptConnections()V
    .locals 4

    .prologue
    .line 87
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lmybl/ProgressiveLocalHttpProxy;->running:Z

    if-eqz v0, :cond_37

    .line 89
    :try_start_4
    iget-object v0, p0, Lmybl/ProgressiveLocalHttpProxy;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lmybl/ProgressiveLocalHttpProxy;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lmybl/ProgressiveLocalHttpProxy$2;

    invoke-direct {v2, p0, v0}, Lmybl/ProgressiveLocalHttpProxy$2;-><init>(Lmybl/ProgressiveLocalHttpProxy;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_0

    .line 96
    :catch_15
    move-exception v0

    .line 97
    iget-boolean v1, p0, Lmybl/ProgressiveLocalHttpProxy;->running:Z

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "ProgressiveProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error accepting connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_37
    return-void
.end method

.method static synthetic access$000(Lmybl/ProgressiveLocalHttpProxy;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lmybl/ProgressiveLocalHttpProxy;->acceptConnections()V

    return-void
.end method

.method static synthetic access$100(Lmybl/ProgressiveLocalHttpProxy;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lmybl/ProgressiveLocalHttpProxy;->handleClient(Ljava/net/Socket;)V

    return-void
.end method

.method private createClient()Lokhttp3/OkHttpClient;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x1e

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 45
    return-object v0
.end method

.method private extractCdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    :try_start_0
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 264
    if-ltz v0, :cond_18

    .line 265
    add-int/lit8 v0, v0, 0x3

    .line 266
    const-string v1, "/"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 267
    if-le v1, v0, :cond_18

    .line 268
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    .line 273
    :goto_16
    return-object v0

    .line 271
    :catch_17
    move-exception v0

    .line 273
    :cond_18
    const-string v0, "unknown"

    goto :goto_16
.end method

.method private extractKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 286
    :cond_d
    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 289
    :cond_20
    return-object p1
.end method

.method private handleClient(Ljava/net/Socket;)V
    .locals 20

    .prologue
    .line 106
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 107
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 109
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmybl/ProgressiveLocalHttpProxy;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 110
    const-string v4, "ProgressiveProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 113
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_2a4
    .catchall {:try_start_0 .. :try_end_31} :catchall_314

    .line 254
    :try_start_31
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    .line 259
    :goto_34
    return-void

    .line 255
    :catch_35
    move-exception v2

    .line 256
    const-string v3, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing client socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 117
    :cond_53
    :try_start_53
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 118
    array-length v4, v2

    const/4 v5, 0x3

    if-ge v4, v5, :cond_82

    .line 119
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_60} :catch_2a4
    .catchall {:try_start_53 .. :try_end_60} :catchall_314

    .line 254
    :try_start_60
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_34

    .line 255
    :catch_64
    move-exception v2

    .line 256
    const-string v3, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing client socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 123
    :cond_82
    const/4 v4, 0x0

    :try_start_83
    aget-object v4, v2, v4

    .line 124
    const/4 v4, 0x1

    aget-object v2, v2, v4

    .line 126
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmybl/ProgressiveLocalHttpProxy;->extractKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lmybl/ProgressiveLocalHttpProxy;->upstreamByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 129
    if-eqz v2, :cond_a0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 130
    :cond_a0
    const-string v2, "ProgressiveProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No upstream URL for key: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v2, 0x194

    const-string v3, "Not Found"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v3}, Lmybl/ProgressiveLocalHttpProxy;->sendError(Ljava/io/OutputStream;ILjava/lang/String;)V

    .line 132
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_c4} :catch_2a4
    .catchall {:try_start_83 .. :try_end_c4} :catchall_314

    .line 254
    :try_start_c4
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c9

    goto/16 :goto_34

    .line 255
    :catch_c9
    move-exception v2

    .line 256
    const-string v3, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing client socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 136
    :cond_e8
    const/4 v12, 0x0

    .line 138
    :cond_e9
    :goto_e9
    :try_start_e9
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmybl/ProgressiveLocalHttpProxy;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10e

    .line 139
    const-string v5, "Range:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 140
    const-string v5, "Range:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    goto :goto_e9

    .line 144
    :cond_10e
    const-string v4, "ProgressiveProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Range: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v12, :cond_294

    move-object v3, v12

    :goto_11e
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v6, 0x0

    .line 147
    const/4 v5, 0x0

    .line 148
    invoke-direct/range {p0 .. p0}, Lmybl/ProgressiveLocalHttpProxy;->createClient()Lokhttp3/OkHttpClient;

    move-result-object v14

    .line 150
    const/4 v3, 0x0

    move v8, v3

    :goto_131
    const/4 v3, 0x3

    if-ge v8, v3, :cond_4ae

    if-nez v6, :cond_4ae

    .line 151
    if-lez v8, :cond_162

    .line 152
    const-string v3, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RETRY] Attempt "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_15d} :catch_2a4
    .catchall {:try_start_e9 .. :try_end_15d} :catchall_314

    .line 154
    const-wide/16 v10, 0x1f4

    :try_start_15f
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_162
    .catch Ljava/lang/InterruptedException; {:try_start_15f .. :try_end_162} :catch_4ad
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_162} :catch_2a4
    .catchall {:try_start_15f .. :try_end_162} :catchall_314

    .line 160
    :cond_162
    const/4 v3, 0x0

    move v9, v3

    :goto_164
    :try_start_164
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_480

    .line 161
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmybl/ProgressiveLocalHttpProxy;->extractCdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 164
    const-string v4, "ProgressiveProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CDN_FAILOVER] Trying URL["

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "]: cdn="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v7, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CDN_FAILOVER] URL: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v11, 0x64

    if-le v4, v11, :cond_298

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    const/16 v16, 0x64

    move/from16 v0, v16

    invoke-virtual {v3, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "..."

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1d7
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 168
    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v7, "User-Agent"

    const-string v10, "Bilibili Freedoooooom/MarkII"

    .line 169
    invoke-virtual {v4, v7, v10}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v7, "Connection"

    const-string v10, "close"

    .line 170
    invoke-virtual {v4, v7, v10}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 172
    const-string v7, "platform=pc"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 173
    if-eqz v3, :cond_29b

    .line 174
    const-string v3, "Referer"

    const-string v7, "https://www.bilibili.com"

    invoke-virtual {v4, v3, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 175
    const-string v3, "ProgressiveProxy"

    const-string v7, "[CDN_FAILOVER] Request headers: User-Agent, Connection: close, Referer: https://www.bilibili.com (platform=pc detected)"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_211
    if-eqz v12, :cond_218

    .line 181
    const-string v3, "Range"

    invoke-virtual {v4, v3, v12}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 184
    :cond_218
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    :try_end_21b
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_21b} :catch_2a4
    .catchall {:try_start_164 .. :try_end_21b} :catchall_314

    move-result-object v3

    .line 186
    :try_start_21c
    invoke-virtual {v14, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_223} :catch_2ea
    .catchall {:try_start_21c .. :try_end_223} :catchall_314

    move-result-object v16

    const/4 v7, 0x0

    .line 187
    :try_start_225
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->code()I

    move-result v4

    .line 188
    const-string v3, "ProgressiveProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[CDN_FAILOVER] Response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from cdn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/16 v3, 0x193

    if-ne v4, v3, :cond_31e

    .line 191
    const-string v3, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CDN_FAILOVER] Got 403 from cdn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", trying next URL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP 403 from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_285
    .catch Ljava/lang/Throwable; {:try_start_225 .. :try_end_285} :catch_3fd
    .catchall {:try_start_225 .. :try_end_285} :catchall_524

    .line 234
    if-eqz v16, :cond_28c

    if-eqz v7, :cond_319

    :try_start_289
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V
    :try_end_28c
    .catch Ljava/lang/Throwable; {:try_start_289 .. :try_end_28c} :catch_2e5
    .catch Ljava/lang/Exception; {:try_start_289 .. :try_end_28c} :catch_2ea
    .catchall {:try_start_289 .. :try_end_28c} :catchall_314

    :cond_28c
    :goto_28c
    move v4, v6

    .line 160
    :goto_28d
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move-object v5, v3

    move v6, v4

    goto/16 :goto_164

    .line 144
    :cond_294
    :try_start_294
    const-string v3, "none"

    goto/16 :goto_11e

    :cond_298
    move-object v4, v3

    .line 165
    goto/16 :goto_1d7

    .line 177
    :cond_29b
    const-string v3, "ProgressiveProxy"

    const-string v7, "[CDN_FAILOVER] Request headers: User-Agent, Connection: close"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a2
    .catch Ljava/lang/Exception; {:try_start_294 .. :try_end_2a2} :catch_2a4
    .catchall {:try_start_294 .. :try_end_2a2} :catchall_314

    goto/16 :goto_211

    .line 250
    :catch_2a4
    move-exception v2

    .line 251
    :try_start_2a5
    const-string v3, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error handling client: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c1
    .catchall {:try_start_2a5 .. :try_end_2c1} :catchall_314

    .line 254
    :try_start_2c1
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_2c4
    .catch Ljava/io/IOException; {:try_start_2c1 .. :try_end_2c4} :catch_2c6

    goto/16 :goto_34

    .line 255
    :catch_2c6
    move-exception v2

    .line 256
    const-string v3, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing client socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 234
    :catch_2e5
    move-exception v4

    :try_start_2e6
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2e9
    .catch Ljava/lang/Exception; {:try_start_2e6 .. :try_end_2e9} :catch_2ea
    .catchall {:try_start_2e6 .. :try_end_2e9} :catchall_314

    goto :goto_28c

    :catch_2ea
    move-exception v3

    move v4, v6

    .line 235
    :try_start_2ec
    const-string v5, "ProgressiveProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CDN_FAILOVER] Error with cdn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_312
    .catch Ljava/lang/Exception; {:try_start_2ec .. :try_end_312} :catch_2a4
    .catchall {:try_start_2ec .. :try_end_312} :catchall_314

    goto/16 :goto_28d

    .line 253
    :catchall_314
    move-exception v2

    .line 254
    :try_start_315
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_318
    .catch Ljava/io/IOException; {:try_start_315 .. :try_end_318} :catch_505

    .line 258
    :goto_318
    throw v2

    .line 234
    :cond_319
    :try_start_319
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V
    :try_end_31c
    .catch Ljava/lang/Exception; {:try_start_319 .. :try_end_31c} :catch_2ea
    .catchall {:try_start_319 .. :try_end_31c} :catchall_314

    goto/16 :goto_28c

    .line 196
    :cond_31e
    const/16 v3, 0x190

    if-lt v4, v3, :cond_37f

    .line 197
    :try_start_322
    const-string v3, "ProgressiveProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CDN_FAILOVER] Got "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " from cdn="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", trying next URL"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTTP "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_36c
    .catch Ljava/lang/Throwable; {:try_start_322 .. :try_end_36c} :catch_3fd
    .catchall {:try_start_322 .. :try_end_36c} :catchall_524

    .line 234
    if-eqz v16, :cond_373

    if-eqz v7, :cond_37b

    :try_start_370
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V
    :try_end_373
    .catch Ljava/lang/Throwable; {:try_start_370 .. :try_end_373} :catch_376
    .catch Ljava/lang/Exception; {:try_start_370 .. :try_end_373} :catch_2ea
    .catchall {:try_start_370 .. :try_end_373} :catchall_314

    :cond_373
    :goto_373
    move v4, v6

    goto/16 :goto_28d

    :catch_376
    move-exception v4

    :try_start_377
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_373

    :cond_37b
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V
    :try_end_37e
    .catch Ljava/lang/Exception; {:try_start_377 .. :try_end_37e} :catch_2ea
    .catchall {:try_start_377 .. :try_end_37e} :catchall_314

    goto :goto_373

    .line 202
    :cond_37f
    :try_start_37f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    const-string v3, "HTTP/1.1 "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3ad
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_409

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 207
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3c5
    :goto_3c5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3ad

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 208
    const-string v18, "Connection"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3c5

    const-string v18, "Keep-Alive"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3c5

    .line 209
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3fc
    .catch Ljava/lang/Throwable; {:try_start_37f .. :try_end_3fc} :catch_3fd
    .catchall {:try_start_37f .. :try_end_3fc} :catchall_524

    goto :goto_3c5

    .line 186
    :catch_3fd
    move-exception v3

    :try_start_3fe
    throw v3
    :try_end_3ff
    .catchall {:try_start_3fe .. :try_end_3ff} :catchall_3ff

    .line 234
    :catchall_3ff
    move-exception v4

    move-object v5, v3

    :goto_401
    if-eqz v16, :cond_408

    if-eqz v5, :cond_4a8

    :try_start_405
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V
    :try_end_408
    .catch Ljava/lang/Throwable; {:try_start_405 .. :try_end_408} :catch_4a2
    .catch Ljava/lang/Exception; {:try_start_405 .. :try_end_408} :catch_2ea
    .catchall {:try_start_405 .. :try_end_408} :catchall_314

    :cond_408
    :goto_408
    :try_start_408
    throw v4
    :try_end_409
    .catch Ljava/lang/Exception; {:try_start_408 .. :try_end_409} :catch_2ea
    .catchall {:try_start_408 .. :try_end_409} :catchall_314

    .line 213
    :cond_409
    :try_start_409
    const-string v3, "Connection: close\r\n"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v3, "\r\n"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/io/OutputStream;->write([B)V

    .line 217
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 219
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_48e

    .line 220
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    .line 221
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 223
    const-wide/16 v10, 0x0

    .line 225
    :goto_437
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_454

    .line 226
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v13, v4, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 227
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v10, v10, v18

    goto :goto_437

    .line 230
    :cond_454
    const-string v3, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[CDN_FAILOVER] Success! Transferred "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " bytes from cdn="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_478
    .catch Ljava/lang/Throwable; {:try_start_409 .. :try_end_478} :catch_3fd
    .catchall {:try_start_409 .. :try_end_478} :catchall_524

    .line 231
    const/4 v6, 0x1

    .line 234
    if-eqz v16, :cond_480

    if-eqz v7, :cond_48a

    :try_start_47d
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V
    :try_end_480
    .catch Ljava/lang/Throwable; {:try_start_47d .. :try_end_480} :catch_485
    .catch Ljava/lang/Exception; {:try_start_47d .. :try_end_480} :catch_2ea
    .catchall {:try_start_47d .. :try_end_480} :catchall_314

    .line 150
    :cond_480
    :goto_480
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto/16 :goto_131

    .line 234
    :catch_485
    move-exception v3

    :try_start_486
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_480

    :cond_48a
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V
    :try_end_48d
    .catch Ljava/lang/Exception; {:try_start_486 .. :try_end_48d} :catch_2ea
    .catchall {:try_start_486 .. :try_end_48d} :catchall_314

    goto :goto_480

    :cond_48e
    if-eqz v16, :cond_495

    if-eqz v7, :cond_49e

    :try_start_492
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V
    :try_end_495
    .catch Ljava/lang/Throwable; {:try_start_492 .. :try_end_495} :catch_499
    .catch Ljava/lang/Exception; {:try_start_492 .. :try_end_495} :catch_2ea
    .catchall {:try_start_492 .. :try_end_495} :catchall_314

    :cond_495
    :goto_495
    move-object v3, v5

    move v4, v6

    .line 237
    goto/16 :goto_28d

    .line 234
    :catch_499
    move-exception v3

    :try_start_49a
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_495

    :cond_49e
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V

    goto :goto_495

    :catch_4a2
    move-exception v3

    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_408

    :cond_4a8
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->close()V
    :try_end_4ab
    .catch Ljava/lang/Exception; {:try_start_49a .. :try_end_4ab} :catch_2ea
    .catchall {:try_start_49a .. :try_end_4ab} :catchall_314

    goto/16 :goto_408

    .line 155
    :catch_4ad
    move-exception v2

    .line 241
    :cond_4ae
    if-nez v6, :cond_4d7

    .line 242
    :try_start_4b0
    const-string v2, "ProgressiveProxy"

    const-string v3, "[CDN_FAILOVER] All URLs failed, sending error to client"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-eqz v5, :cond_4fb

    .line 244
    const/16 v2, 0x1f6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad Gateway: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v3}, Lmybl/ProgressiveLocalHttpProxy;->sendError(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_4d7
    .catch Ljava/lang/Exception; {:try_start_4b0 .. :try_end_4d7} :catch_2a4
    .catchall {:try_start_4b0 .. :try_end_4d7} :catchall_314

    .line 254
    :cond_4d7
    :goto_4d7
    :try_start_4d7
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_4da
    .catch Ljava/io/IOException; {:try_start_4d7 .. :try_end_4da} :catch_4dc

    goto/16 :goto_34

    .line 255
    :catch_4dc
    move-exception v2

    .line 256
    const-string v3, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing client socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 246
    :cond_4fb
    const/16 v2, 0x1f6

    :try_start_4fd
    const-string v3, "Bad Gateway"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v3}, Lmybl/ProgressiveLocalHttpProxy;->sendError(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_504
    .catch Ljava/lang/Exception; {:try_start_4fd .. :try_end_504} :catch_2a4
    .catchall {:try_start_4fd .. :try_end_504} :catchall_314

    goto :goto_4d7

    .line 255
    :catch_505
    move-exception v3

    .line 256
    const-string v4, "ProgressiveProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing client socket: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_318

    .line 234
    :catchall_524
    move-exception v3

    move-object v4, v3

    move-object v5, v7

    goto/16 :goto_401
.end method

.method private md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 314
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 315
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 317
    array-length v3, v1

    :goto_1a
    if-ge v0, v3, :cond_34

    aget-byte v4, v1, v0

    .line 318
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 320
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_39

    move-result-object v0

    .line 322
    :goto_38
    return-object v0

    .line 321
    :catch_39
    move-exception v0

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_38
.end method

.method private readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/4 v3, -0x1

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    :cond_8
    :goto_8
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v3, :cond_18

    .line 296
    if-ne v1, v4, :cond_27

    .line 297
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 298
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1d

    .line 309
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 301
    :cond_1d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    if-eq v1, v3, :cond_8

    .line 303
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 306
    :cond_27
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method private sendError(Ljava/io/OutputStream;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/1.1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 279
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 280
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmybl/ProgressiveLocalHttpProxy;->running:Z

    .line 330
    :try_start_3
    iget-object v0, p0, Lmybl/ProgressiveLocalHttpProxy;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_15

    .line 334
    :goto_8
    iget-object v0, p0, Lmybl/ProgressiveLocalHttpProxy;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 335
    const-string v0, "ProgressiveProxy"

    const-string v1, "Proxy closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void

    .line 331
    :catch_15
    move-exception v0

    .line 332
    const-string v1, "ProgressiveProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing server socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmybl/ProgressiveLocalHttpProxy;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public register(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p0, v0}, Lmybl/ProgressiveLocalHttpProxy;->registerWithBackup(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerWithBackup(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x64

    const/4 v2, 0x0

    .line 63
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 64
    :cond_b
    const/4 v0, 0x0

    .line 78
    :goto_c
    return-object v0

    .line 67
    :cond_d
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    invoke-direct {p0, v0}, Lmybl/ProgressiveLocalHttpProxy;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lmybl/ProgressiveLocalHttpProxy;->upstreamByKey:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://127.0.0.1:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmybl/ProgressiveLocalHttpProxy;->getPort()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".mp4"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    const-string v1, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " URLs"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 73
    :goto_75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c4

    .line 74
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    const-string v4, "ProgressiveProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  URL["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_b5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_75

    .line 77
    :cond_c4
    const-string v0, "ProgressiveProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 78
    goto/16 :goto_c
.end method

.method public resetRegistrations()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lmybl/ProgressiveLocalHttpProxy;->upstreamByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 83
    const-string v0, "ProgressiveProxy"

    const-string v1, "All registrations cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method
