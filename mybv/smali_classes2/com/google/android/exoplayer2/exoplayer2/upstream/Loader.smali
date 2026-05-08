.class public final Lcom/google/android/exoplayer2/upstream/Loader;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;,
        Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;,
        Lcom/google/android/exoplayer2/upstream/Loader$Loadable;,
        Lcom/google/android/exoplayer2/upstream/Loader$Callback;,
        Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;,
        Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;,
        Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACTION_TYPE_DONT_RETRY:I = 0x2

.field private static final ACTION_TYPE_DONT_RETRY_FATAL:I = 0x3

.field private static final ACTION_TYPE_RETRY:I = 0x0

.field private static final ACTION_TYPE_RETRY_AND_RESET_ERROR_COUNT:I = 0x1

.field public static final DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

.field public static final DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

.field public static final RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

.field public static final RETRY_RESET_ERROR_COUNT:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "ExoPlayer:Loader:"


# instance fields
.field private currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/Loader$LoadTask<",
            "+",
            "Lcom/google/android/exoplayer2/upstream/Loader$Loadable;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadExecutorService:Ljava/util/concurrent/ExecutorService;

.field private fatalError:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 171
    nop

    .line 172
    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/Loader;->RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    .line 174
    nop

    .line 175
    const/4 v0, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/Loader;->RETRY_RESET_ERROR_COUNT:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    .line 177
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;-><init>(IJLcom/google/android/exoplayer2/upstream/Loader$1;)V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    .line 183
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;-><init>(IJLcom/google/android/exoplayer2/upstream/Loader$1;)V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "threadNameSuffix"    # Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExoPlayer:Loader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 218
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/Loader;

    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/Loader;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/Loader;
    .param p1, "x1"    # Ljava/io/IOException;

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/Loader;

    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 5
    .param p0, "resetErrorCount"    # Z
    .param p1, "retryDelayMillis"    # J

    .line 228
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    .line 229
    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;-><init>(IJLcom/google/android/exoplayer2/upstream/Loader$1;)V

    .line 228
    return-object v0
.end method


# virtual methods
.method public cancelLoading()V
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->cancel(Z)V

    .line 281
    return-void
.end method

.method public clearFatalError()V
    .registers 2

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    .line 244
    return-void
.end method

.method public hasFatalError()Z
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isLoading()Z
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError(I)V

    .line 309
    return-void
.end method

.method public maybeThrowError(I)V
    .registers 4
    .param p1, "minRetryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_15

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    if-eqz v0, :cond_14

    .line 316
    nop

    .line 317
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_10

    iget v1, v0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    goto :goto_11

    :cond_10
    move v1, p1

    .line 316
    :goto_11
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->maybeThrowError(I)V

    .line 319
    :cond_14
    return-void

    .line 314
    :cond_15
    throw v0
.end method

.method public release()V
    .registers 2

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    .line 286
    return-void
.end method

.method public release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    if-eqz v0, :cond_8

    .line 296
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->cancel(Z)V

    .line 298
    :cond_8
    if-eqz p1, :cond_14

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;-><init>(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 301
    :cond_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 302
    return-void
.end method

.method public startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J
    .registers 16
    .param p3, "defaultMinRetryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/upstream/Loader$Loadable;",
            ">(TT;",
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "TT;>;I)J"
        }
    .end annotation

    .line 262
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/Loader$Loadable;, "TT;"
    .local p2, "callback":Lcom/google/android/exoplayer2/upstream/Loader$Callback;, "Lcom/google/android/exoplayer2/upstream/Loader$Callback<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    .line 263
    .local v0, "looper":Landroid/os/Looper;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 265
    .local v9, "startTimeMs":J
    new-instance v11, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;-><init>(Lcom/google/android/exoplayer2/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;IJ)V

    const-wide/16 v1, 0x0

    invoke-virtual {v11, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->start(J)V

    .line 266
    return-wide v9
.end method
