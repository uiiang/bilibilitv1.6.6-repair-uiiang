.class public final Lcom/google/android/exoplayer2/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/Log$Logger;,
        Lcom/google/android/exoplayer2/util/Log$LogLevel;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final LOG_LEVEL_ALL:I = 0x0

.field public static final LOG_LEVEL_ERROR:I = 0x3

.field public static final LOG_LEVEL_INFO:I = 0x1

.field public static final LOG_LEVEL_OFF:I = 0x7fffffff

.field public static final LOG_LEVEL_WARNING:I = 0x2

.field private static final lock:Ljava/lang/Object;

.field private static logLevel:I

.field private static logStackTraces:Z

.field private static logger:Lcom/google/android/exoplayer2/util/Log$Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    .line 131
    const/4 v0, 0x0

    sput v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    .line 134
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    .line 137
    sget-object v0, Lcom/google/android/exoplayer2/util/Log$Logger;->DEFAULT:Lcom/google/android/exoplayer2/util/Log$Logger;

    sput-object v0, Lcom/google/android/exoplayer2/util/Log;->logger:Lcom/google/android/exoplayer2/util/Log$Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 299
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Log;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "throwableString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 303
    :cond_2d
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 188
    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    sget v1, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    if-nez v1, :cond_c

    .line 190
    sget-object v1, Lcom/google/android/exoplayer2/util/Log;->logger:Lcom/google/android/exoplayer2/util/Log$Logger;

    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/util/Log$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_c
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 200
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 248
    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    sget v1, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_d

    .line 250
    sget-object v1, Lcom/google/android/exoplayer2/util/Log;->logger:Lcom/google/android/exoplayer2/util/Log$Logger;

    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/util/Log$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_d
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 260
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public static getLogLevel()I
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 144
    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    sget v1, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    monitor-exit v0

    return v1

    .line 146
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 277
    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    if-nez p0, :cond_8

    .line 279
    :try_start_5
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_8
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Log;->isCausedByUnknownHostException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 288
    const-string v1, "UnknownHostException (no network)"

    monitor-exit v0

    return-object v1

    .line 289
    :cond_12
    sget-boolean v1, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    if-nez v1, :cond_1c

    .line 290
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 292
    :cond_1c
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\t"

    const-string v3, "    "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 294
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 208
    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_3
    sget v1, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_d

    .line 210
    sget-object v1, Lcom/google/android/exoplayer2/util/Log;->logger:Lcom/google/android/exoplayer2/util/Log$Logger;

    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/util/Log$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_d
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 220
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private static isCausedByUnknownHostException(Ljava/lang/Throwable;)Z
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 308
    nop

    :goto_1
    if-eqz p0, :cond_e

    .line 309
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_9

    .line 310
    const/4 v0, 0x1

    return v0

    .line 312
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    .line 314
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static setLogLevel(I)V
    .registers 3
    .param p0, "logLevel"    # I

    .line 155
    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    sput p0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    .line 157
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static setLogStackTraces(Z)V
    .registers 3
    .param p0, "logStackTraces"    # Z

    .line 167
    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    sput-boolean p0, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    .line 169
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static setLogger(Lcom/google/android/exoplayer2/util/Log$Logger;)V
    .registers 3
    .param p0, "logger"    # Lcom/google/android/exoplayer2/util/Log$Logger;

    .line 178
    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_3
    sput-object p0, Lcom/google/android/exoplayer2/util/Log;->logger:Lcom/google/android/exoplayer2/util/Log$Logger;

    .line 180
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 228
    sget-object v0, Lcom/google/android/exoplayer2/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    sget v1, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_d

    .line 230
    sget-object v1, Lcom/google/android/exoplayer2/util/Log;->logger:Lcom/google/android/exoplayer2/util/Log$Logger;

    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/util/Log$Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_d
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 240
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method
