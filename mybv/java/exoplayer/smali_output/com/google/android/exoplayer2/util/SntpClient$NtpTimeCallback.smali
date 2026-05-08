.class final Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;
.super Ljava/lang/Object;
.source "SntpClient.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/SntpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NtpTimeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/upstream/Loader$Loadable;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    .line 319
    return-void
.end method


# virtual methods
.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .registers 7
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/upstream/Loader$Loadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .line 338
    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .registers 9
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/upstream/Loader$Loadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    if-eqz v0, :cond_1f

    .line 324
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;->onInitializationFailed(Ljava/io/IOException;)V

    goto :goto_1f

    .line 329
    :cond_1a
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;->onInitialized()V

    .line 332
    :cond_1f
    :goto_1f
    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 9
    .param p1, "loadable"    # Lcom/google/android/exoplayer2/upstream/Loader$Loadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    if-eqz v0, :cond_7

    .line 348
    invoke-interface {v0, p6}, Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;->onInitializationFailed(Ljava/io/IOException;)V

    .line 350
    :cond_7
    sget-object v0, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    return-object v0
.end method
