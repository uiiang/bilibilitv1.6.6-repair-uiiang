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
    .line 292
    :try_start_0
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 293
    if-ltz v0, :cond_18

    .line 294
    add-int/lit8 v0, v0, 0x3

    .line 295
    const-string v1, "/"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 296
    if-le v1, v0, :cond_18

    .line 297
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    .line 302
    :goto_16
    return-object v0

    .line 300
    :catch_17
    move-exception v0

    .line 302
    :cond_18
    const-string v0, "unknown"

    goto :goto_16
.end method

.method private extractKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 313
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 315
    :cond_d
    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 316
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 318
    :cond_20
    return-object p1
.end method

.method private handleClient(Ljava/net/Socket;)V
    .locals 26

    .prologue
    .line 106
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 107
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_2b2
    .catchall {:try_start_0 .. :try_end_31} :catchall_36c

    .line 283
    :try_start_31
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    .line 288
    :goto_34
    return-void

    .line 284
    :catch_35
    move-exception v2

    .line 285
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
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_60} :catch_2b2
    .catchall {:try_start_53 .. :try_end_60} :catchall_36c

    .line 283
    :try_start_60
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_34

    .line 284
    :catch_64
    move-exception v2

    .line 285
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

    if-eqz v5, :cond_ea

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

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2, v3}, Lmybl/ProgressiveLocalHttpProxy;->sendError(Ljava/io/OutputStream;ILjava/lang/String;)V

    .line 132
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_c6} :catch_2b2
    .catchall {:try_start_83 .. :try_end_c6} :catchall_36c

    .line 283
    :try_start_c6
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_cb

    goto/16 :goto_34

    .line 284
    :catch_cb
    move-exception v2

    .line 285
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
    :cond_ea
    const/16 v16, 0x0

    .line 138
    :cond_ec
    :goto_ec
    :try_start_ec
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmybl/ProgressiveLocalHttpProxy;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_111

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_111

    .line 139
    const-string v5, "Range:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 140
    const-string v5, "Range:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    goto :goto_ec

    .line 144
    :cond_111
    const-string v4, "ProgressiveProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Range: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v16, :cond_2a2

    move-object/from16 v3, v16

    :goto_122
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

    move-result-object v18

    .line 150
    const/4 v3, 0x0

    move v10, v3

    :goto_135
    const/4 v3, 0x3

    if-ge v10, v3, :cond_5b8

    if-nez v6, :cond_5b8

    .line 151
    if-lez v10, :cond_166

    .line 152
    const-string v3, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RETRY] Attempt "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v7, v10, 0x1

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
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_161} :catch_2b2
    .catchall {:try_start_ec .. :try_end_161} :catchall_36c

    .line 154
    const-wide/16 v8, 0x1f4

    :try_start_163
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_166
    .catch Ljava/lang/InterruptedException; {:try_start_163 .. :try_end_166} :catch_5b7
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_166} :catch_2b2
    .catchall {:try_start_163 .. :try_end_166} :catchall_36c

    .line 160
    :cond_166
    const/4 v3, 0x0

    move v11, v3

    :goto_168
    :try_start_168
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_58a

    .line 161
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmybl/ProgressiveLocalHttpProxy;->extractCdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 164
    const-string v4, "ProgressiveProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CDN_FAILOVER] Trying URL["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: cdn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v7, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CDN_FAILOVER] URL: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v9, 0x64

    if-le v4, v9, :cond_2a6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/16 v12, 0x64

    invoke-virtual {v3, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "..."

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1db
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v8, "Bilibili Freedoooooom/MarkII"

    .line 169
    invoke-virtual {v4, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v7, "Connection"

    const-string v8, "close"

    .line 170
    invoke-virtual {v4, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 172
    const-string v7, "platform=pc"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 173
    if-eqz v3, :cond_2a9

    .line 174
    const-string v3, "Referer"

    const-string v7, "https://www.bilibili.com"

    invoke-virtual {v4, v3, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 175
    const-string v3, "ProgressiveProxy"

    const-string v7, "[CDN_FAILOVER] Request headers: User-Agent, Connection: close, Referer: https://www.bilibili.com (platform=pc detected)"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_215
    if-eqz v16, :cond_21e

    .line 181
    const-string v3, "Range"

    move-object/from16 v0, v16

    invoke-virtual {v4, v3, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 184
    :cond_21e
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    :try_end_221
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_221} :catch_2b2
    .catchall {:try_start_168 .. :try_end_221} :catchall_36c

    move-result-object v3

    .line 186
    :try_start_222
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_22b
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_22b} :catch_2f8
    .catchall {:try_start_222 .. :try_end_22b} :catchall_36c

    move-result-object v20

    const/4 v7, 0x0

    .line 187
    :try_start_22d
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->code()I

    move-result v4

    .line 188
    const-string v3, "ProgressiveProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CDN_FAILOVER] Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from cdn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/16 v3, 0x193

    if-ne v4, v3, :cond_371

    .line 191
    const-string v3, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CDN_FAILOVER] Got 403 from cdn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_293
    .catch Ljava/lang/Throwable; {:try_start_22d .. :try_end_293} :catch_44c
    .catchall {:try_start_22d .. :try_end_293} :catchall_52c

    .line 254
    if-eqz v20, :cond_29a

    if-eqz v7, :cond_367

    :try_start_297
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->close()V
    :try_end_29a
    .catch Ljava/lang/Throwable; {:try_start_297 .. :try_end_29a} :catch_2f3
    .catch Ljava/lang/Exception; {:try_start_297 .. :try_end_29a} :catch_2f8
    .catchall {:try_start_297 .. :try_end_29a} :catchall_36c

    :cond_29a
    :goto_29a
    move v4, v6

    .line 160
    :cond_29b
    :goto_29b
    add-int/lit8 v7, v11, 0x1

    move v11, v7

    move-object v5, v3

    move v6, v4

    goto/16 :goto_168

    .line 144
    :cond_2a2
    :try_start_2a2
    const-string v3, "none"

    goto/16 :goto_122

    :cond_2a6
    move-object v4, v3

    .line 165
    goto/16 :goto_1db

    .line 177
    :cond_2a9
    const-string v3, "ProgressiveProxy"

    const-string v7, "[CDN_FAILOVER] Request headers: User-Agent, Connection: close"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b0
    .catch Ljava/lang/Exception; {:try_start_2a2 .. :try_end_2b0} :catch_2b2
    .catchall {:try_start_2a2 .. :try_end_2b0} :catchall_36c

    goto/16 :goto_215

    .line 279
    :catch_2b2
    move-exception v2

    .line 280
    :try_start_2b3
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
    :try_end_2cf
    .catchall {:try_start_2b3 .. :try_end_2cf} :catchall_36c

    .line 283
    :try_start_2cf
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_2d2
    .catch Ljava/io/IOException; {:try_start_2cf .. :try_end_2d2} :catch_2d4

    goto/16 :goto_34

    .line 284
    :catch_2d4
    move-exception v2

    .line 285
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

    .line 254
    :catch_2f3
    move-exception v4

    :try_start_2f4
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2f7
    .catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_2f7} :catch_2f8
    .catchall {:try_start_2f4 .. :try_end_2f7} :catchall_36c

    goto :goto_29a

    :catch_2f8
    move-exception v3

    move v4, v6

    .line 255
    :try_start_2fa
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 256
    const-string v6, "ProgressiveProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CDN_FAILOVER] Error with cdn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-eqz v5, :cond_29b

    const-string v6, "stream was reset: CANCEL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_33c

    const-string v6, "Broken pipe"

    .line 259
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_33c

    const-string v6, "Connection reset"

    .line 260
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29b

    .line 261
    :cond_33c
    const-string v2, "ProgressiveProxy"

    const-string v3, "[CLIENT_CANCEL] Client\u4e3b\u52a8\u65ad\u5f00\u8fde\u63a5\uff0c\u8fd9\u662f\u6b63\u5e38\u884c\u4e3a\uff0c\u4e0d\u89c6\u4e3a\u9519\u8bef"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_343
    .catch Ljava/lang/Exception; {:try_start_2fa .. :try_end_343} :catch_2b2
    .catchall {:try_start_2fa .. :try_end_343} :catchall_36c

    .line 283
    :try_start_343
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_346
    .catch Ljava/io/IOException; {:try_start_343 .. :try_end_346} :catch_348

    goto/16 :goto_34

    .line 284
    :catch_348
    move-exception v2

    .line 285
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

    .line 254
    :cond_367
    :try_start_367
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->close()V
    :try_end_36a
    .catch Ljava/lang/Exception; {:try_start_367 .. :try_end_36a} :catch_2f8
    .catchall {:try_start_367 .. :try_end_36a} :catchall_36c

    goto/16 :goto_29a

    .line 282
    :catchall_36c
    move-exception v2

    .line 283
    :try_start_36d
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_370
    .catch Ljava/io/IOException; {:try_start_36d .. :try_end_370} :catch_613

    .line 287
    :goto_370
    throw v2

    .line 196
    :cond_371
    const/16 v3, 0x190

    if-lt v4, v3, :cond_3d6

    .line 197
    :try_start_375
    const-string v3, "ProgressiveProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CDN_FAILOVER] Got "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from cdn="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", trying next URL"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_3c3
    .catch Ljava/lang/Throwable; {:try_start_375 .. :try_end_3c3} :catch_44c
    .catchall {:try_start_375 .. :try_end_3c3} :catchall_52c

    .line 254
    if-eqz v20, :cond_3ca

    if-eqz v7, :cond_3d2

    :try_start_3c7
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->close()V
    :try_end_3ca
    .catch Ljava/lang/Throwable; {:try_start_3c7 .. :try_end_3ca} :catch_3cd
    .catch Ljava/lang/Exception; {:try_start_3c7 .. :try_end_3ca} :catch_2f8
    .catchall {:try_start_3c7 .. :try_end_3ca} :catchall_36c

    :cond_3ca
    :goto_3ca
    move v4, v6

    goto/16 :goto_29b

    :catch_3cd
    move-exception v4

    :try_start_3ce
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3ca

    :cond_3d2
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->close()V
    :try_end_3d5
    .catch Ljava/lang/Exception; {:try_start_3ce .. :try_end_3d5} :catch_2f8
    .catchall {:try_start_3ce .. :try_end_3d5} :catchall_36c

    goto :goto_3ca

    .line 202
    :cond_3d6
    :try_start_3d6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    const-string v3, "HTTP/1.1 "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_404
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_458

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 207
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_41c
    :goto_41c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_404

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 208
    const-string v13, "Connection"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_41c

    const-string v13, "Keep-Alive"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_41c

    .line 209
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "\r\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_44b
    .catch Ljava/lang/Throwable; {:try_start_3d6 .. :try_end_44b} :catch_44c
    .catchall {:try_start_3d6 .. :try_end_44b} :catchall_52c

    goto :goto_41c

    .line 186
    :catch_44c
    move-exception v3

    :try_start_44d
    throw v3
    :try_end_44e
    .catchall {:try_start_44d .. :try_end_44e} :catchall_44e

    .line 254
    :catchall_44e
    move-exception v4

    move-object v5, v3

    :goto_450
    if-eqz v20, :cond_457

    if-eqz v5, :cond_5b2

    :try_start_454
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->close()V
    :try_end_457
    .catch Ljava/lang/Throwable; {:try_start_454 .. :try_end_457} :catch_5ac
    .catch Ljava/lang/Exception; {:try_start_454 .. :try_end_457} :catch_2f8
    .catchall {:try_start_454 .. :try_end_457} :catchall_36c

    :cond_457
    :goto_457
    :try_start_457
    throw v4
    :try_end_458
    .catch Ljava/lang/Exception; {:try_start_457 .. :try_end_458} :catch_2f8
    .catchall {:try_start_457 .. :try_end_458} :catchall_36c

    .line 213
    :cond_458
    :try_start_458
    const-string v3, "Connection: close\r\n"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v3, "\r\n"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 217
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    .line 219
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_598

    .line 220
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    .line 221
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 223
    const-wide/16 v12, 0x0

    .line 224
    const-wide/16 v8, 0x0

    .line 226
    if-eqz v16, :cond_632

    const-string v14, "bytes="

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_493
    .catch Ljava/lang/Throwable; {:try_start_458 .. :try_end_493} :catch_44c
    .catchall {:try_start_458 .. :try_end_493} :catchall_52c

    move-result v14

    if-eqz v14, :cond_632

    .line 228
    const/4 v8, 0x6

    :try_start_497
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 229
    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_4a2
    .catch Ljava/lang/Exception; {:try_start_497 .. :try_end_4a2} :catch_540
    .catch Ljava/lang/Throwable; {:try_start_497 .. :try_end_4a2} :catch_44c
    .catchall {:try_start_497 .. :try_end_4a2} :catchall_52c

    move-result v9

    if-eqz v9, :cond_531

    .line 230
    const-wide/16 v8, 0x0

    :goto_4a7
    move-wide v14, v8

    .line 239
    :goto_4a8
    :try_start_4a8
    const-string v8, "ProgressiveProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[DATA_TRANSFER] Start transferring data from cdn="

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v21, ", range="

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v21, ", startByte="

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v8, v12

    .line 241
    :cond_4df
    :goto_4df
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_546

    .line 242
    const/4 v13, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v13, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 243
    int-to-long v12, v12

    add-long/2addr v8, v12

    .line 245
    const-wide/32 v12, 0x100000

    rem-long v12, v8, v12

    const-wide/16 v22, 0x0

    cmp-long v12, v12, v22

    if-nez v12, :cond_4df

    .line 246
    const-string v12, "ProgressiveProxy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[DATA_TRANSFER] Transferred "

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-wide/16 v22, 0x400

    div-long v22, v8, v22

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v21, "MB from cdn="

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52b
    .catch Ljava/lang/Throwable; {:try_start_4a8 .. :try_end_52b} :catch_44c
    .catchall {:try_start_4a8 .. :try_end_52b} :catchall_52c

    goto :goto_4df

    .line 254
    :catchall_52c
    move-exception v3

    move-object v4, v3

    move-object v5, v7

    goto/16 :goto_450

    .line 232
    :cond_531
    :try_start_531
    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_53d
    .catch Ljava/lang/Exception; {:try_start_531 .. :try_end_53d} :catch_540
    .catch Ljava/lang/Throwable; {:try_start_531 .. :try_end_53d} :catch_44c
    .catchall {:try_start_531 .. :try_end_53d} :catchall_52c

    move-result-wide v8

    goto/16 :goto_4a7

    .line 234
    :catch_540
    move-exception v8

    .line 235
    const-wide/16 v8, 0x0

    move-wide v14, v8

    goto/16 :goto_4a8

    .line 250
    :cond_546
    :try_start_546
    const-string v3, "ProgressiveProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DATA_TRANSFER] Completed! Total="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " bytes, range="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, "-"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-long/2addr v8, v14

    const-wide/16 v12, 0x1

    sub-long/2addr v8, v12

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " from cdn="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_582
    .catch Ljava/lang/Throwable; {:try_start_546 .. :try_end_582} :catch_44c
    .catchall {:try_start_546 .. :try_end_582} :catchall_52c

    .line 251
    const/4 v6, 0x1

    .line 254
    if-eqz v20, :cond_58a

    if-eqz v7, :cond_594

    :try_start_587
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->close()V
    :try_end_58a
    .catch Ljava/lang/Throwable; {:try_start_587 .. :try_end_58a} :catch_58f
    .catch Ljava/lang/Exception; {:try_start_587 .. :try_end_58a} :catch_2f8
    .catchall {:try_start_587 .. :try_end_58a} :catchall_36c

    .line 150
    :cond_58a
    :goto_58a
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto/16 :goto_135

    .line 254
    :catch_58f
    move-exception v3

    :try_start_590
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_58a

    :cond_594
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->close()V
    :try_end_597
    .catch Ljava/lang/Exception; {:try_start_590 .. :try_end_597} :catch_2f8
    .catchall {:try_start_590 .. :try_end_597} :catchall_36c

    goto :goto_58a

    :cond_598
    if-eqz v20, :cond_59f

    if-eqz v7, :cond_5a8

    :try_start_59c
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->close()V
    :try_end_59f
    .catch Ljava/lang/Throwable; {:try_start_59c .. :try_end_59f} :catch_5a3
    .catch Ljava/lang/Exception; {:try_start_59c .. :try_end_59f} :catch_2f8
    .catchall {:try_start_59c .. :try_end_59f} :catchall_36c

    :cond_59f
    :goto_59f
    move-object v3, v5

    move v4, v6

    .line 266
    goto/16 :goto_29b

    .line 254
    :catch_5a3
    move-exception v3

    :try_start_5a4
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_59f

    :cond_5a8
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->close()V

    goto :goto_59f

    :catch_5ac
    move-exception v3

    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_457

    :cond_5b2
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Response;->close()V
    :try_end_5b5
    .catch Ljava/lang/Exception; {:try_start_5a4 .. :try_end_5b5} :catch_2f8
    .catchall {:try_start_5a4 .. :try_end_5b5} :catchall_36c

    goto/16 :goto_457

    .line 155
    :catch_5b7
    move-exception v2

    .line 270
    :cond_5b8
    if-nez v6, :cond_5e3

    .line 271
    :try_start_5ba
    const-string v2, "ProgressiveProxy"

    const-string v3, "[CDN_FAILOVER] All URLs failed, sending error to client"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-eqz v5, :cond_607

    .line 273
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

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2, v3}, Lmybl/ProgressiveLocalHttpProxy;->sendError(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_5e3
    .catch Ljava/lang/Exception; {:try_start_5ba .. :try_end_5e3} :catch_2b2
    .catchall {:try_start_5ba .. :try_end_5e3} :catchall_36c

    .line 283
    :cond_5e3
    :goto_5e3
    :try_start_5e3
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_5e6
    .catch Ljava/io/IOException; {:try_start_5e3 .. :try_end_5e6} :catch_5e8

    goto/16 :goto_34

    .line 284
    :catch_5e8
    move-exception v2

    .line 285
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

    .line 275
    :cond_607
    const/16 v2, 0x1f6

    :try_start_609
    const-string v3, "Bad Gateway"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2, v3}, Lmybl/ProgressiveLocalHttpProxy;->sendError(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_612
    .catch Ljava/lang/Exception; {:try_start_609 .. :try_end_612} :catch_2b2
    .catchall {:try_start_609 .. :try_end_612} :catchall_36c

    goto :goto_5e3

    .line 284
    :catch_613
    move-exception v3

    .line 285
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

    goto/16 :goto_370

    :cond_632
    move-wide v14, v8

    goto/16 :goto_4a8
.end method

.method private md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 343
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 344
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 346
    array-length v3, v1

    :goto_1a
    if-ge v0, v3, :cond_34

    aget-byte v4, v1, v0

    .line 347
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

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 349
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_39

    move-result-object v0

    .line 351
    :goto_38
    return-object v0

    .line 350
    :catch_39
    move-exception v0

    .line 351
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

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    :cond_8
    :goto_8
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v3, :cond_18

    .line 325
    if-ne v1, v4, :cond_27

    .line 326
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 327
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1d

    .line 338
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 330
    :cond_1d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    if-eq v1, v3, :cond_8

    .line 332
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 335
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
    .line 306
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

    .line 307
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 308
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 309
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
    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmybl/ProgressiveLocalHttpProxy;->running:Z

    .line 359
    :try_start_3
    iget-object v0, p0, Lmybl/ProgressiveLocalHttpProxy;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_15

    .line 363
    :goto_8
    iget-object v0, p0, Lmybl/ProgressiveLocalHttpProxy;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 364
    const-string v0, "ProgressiveProxy"

    const-string v1, "Proxy closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void

    .line 360
    :catch_15
    move-exception v0

    .line 361
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
