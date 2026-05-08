.class public final Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
.super Ljava/lang/Object;
.source "OfflineLicenseHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FORMAT_WITH_EMPTY_DRM_INIT_DATA:Lcom/google/android/exoplayer2/Format;


# instance fields
.field private final drmListenerConditionVariable:Landroid/os/ConditionVariable;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private final handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>([Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->FORMAT_WITH_EMPTY_DRM_INIT_DATA:Lcom/google/android/exoplayer2/Format;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 6
    .param p1, "defaultDrmSessionManager"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .param p2, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 146
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 147
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:OfflineLicenseHelper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    .line 148
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 149
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handler:Landroid/os/Handler;

    .line 150
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmListenerConditionVariable:Landroid/os/ConditionVariable;

    .line 151
    new-instance v1, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;-><init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)V

    .line 174
    .local v1, "eventListener":Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2, v2, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmListenerConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private acquireFirstSessionOnHandlerThread(I[BLcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .registers 13
    .param p1, "licenseMode"    # I
    .param p2, "offlineLicenseKeySetId"    # [B
    .param p3, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .line 330
    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 332
    .local v0, "drmSessionFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/android/exoplayer2/drm/DrmSession;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmListenerConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 333
    iget-object v7, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;I[BLcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    :try_start_1e
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSession;
    :try_end_24
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1e .. :try_end_24} :catch_51
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_24} :catch_4f

    .line 357
    .local v1, "drmSession":Lcom/google/android/exoplayer2/drm/DrmSession;
    nop

    .line 362
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmListenerConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 364
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    .line 365
    .local v2, "drmSessionError":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;>;"
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v1, v2}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    :try_start_38
    invoke-virtual {v2}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3f

    .line 384
    return-object v1

    .line 382
    :cond_3f
    invoke-virtual {v2}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .end local v0    # "drmSessionFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/android/exoplayer2/drm/DrmSession;>;"
    .end local v1    # "drmSession":Lcom/google/android/exoplayer2/drm/DrmSession;
    .end local v2    # "drmSessionError":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;>;"
    .end local p1    # "licenseMode":I
    .end local p2    # "offlineLicenseKeySetId":[B
    .end local p3    # "format":Lcom/google/android/exoplayer2/Format;
    throw v3
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_46} :catch_48
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_38 .. :try_end_46} :catch_46

    .line 386
    .restart local v0    # "drmSessionFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/android/exoplayer2/drm/DrmSession;>;"
    .restart local v1    # "drmSession":Lcom/google/android/exoplayer2/drm/DrmSession;
    .restart local v2    # "drmSessionError":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;>;"
    .restart local p1    # "licenseMode":I
    .restart local p2    # "offlineLicenseKeySetId":[B
    .restart local p3    # "format":Lcom/google/android/exoplayer2/Format;
    :catch_46
    move-exception v3

    goto :goto_49

    :catch_48
    move-exception v3

    .line 387
    .local v3, "e":Ljava/lang/Exception;
    :goto_49
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 355
    .end local v1    # "drmSession":Lcom/google/android/exoplayer2/drm/DrmSession;
    .end local v2    # "drmSessionError":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4f
    move-exception v1

    goto :goto_52

    :catch_51
    move-exception v1

    .line 356
    .local v1, "e":Ljava/lang/Exception;
    :goto_52
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(I[BLcom/google/android/exoplayer2/Format;)[B
    .registers 8
    .param p1, "licenseMode"    # I
    .param p2, "offlineLicenseKeySetId"    # [B
    .param p3, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .line 282
    nop

    .line 283
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->acquireFirstSessionOnHandlerThread(I[BLcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v0

    .line 285
    .local v0, "drmSession":Lcom/google/android/exoplayer2/drm/DrmSession;
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 286
    .local v1, "keySetId":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<[B>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    :try_start_13
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_1f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_1f} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1f} :catch_25
    .catchall {:try_start_13 .. :try_end_1f} :catchall_23

    .line 302
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->releaseManagerOnHandlerThread()V

    .line 298
    return-object v2

    .line 302
    :catchall_23
    move-exception v2

    goto :goto_2e

    .line 299
    :catch_25
    move-exception v2

    goto :goto_28

    :catch_27
    move-exception v2

    .line 300
    .local v2, "e":Ljava/lang/Exception;
    :goto_28
    :try_start_28
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "drmSession":Lcom/google/android/exoplayer2/drm/DrmSession;
    .end local v1    # "keySetId":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<[B>;"
    .end local p1    # "licenseMode":I
    .end local p2    # "offlineLicenseKeySetId":[B
    .end local p3    # "format":Lcom/google/android/exoplayer2/Format;
    throw v3
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_23

    .line 302
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "drmSession":Lcom/google/android/exoplayer2/drm/DrmSession;
    .restart local v1    # "keySetId":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<[B>;"
    .restart local p1    # "licenseMode":I
    .restart local p2    # "offlineLicenseKeySetId":[B
    .restart local p3    # "format":Lcom/google/android/exoplayer2/Format;
    :goto_2e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->releaseManagerOnHandlerThread()V

    .line 303
    throw v2
.end method

.method public static newWidevineInstance(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
    .registers 4
    .param p0, "defaultLicenseUrl"    # Ljava/lang/String;
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p2, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 74
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->newWidevineInstance(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    move-result-object v0

    return-object v0
.end method

.method public static newWidevineInstance(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
    .registers 5
    .param p0, "defaultLicenseUrl"    # Ljava/lang/String;
    .param p1, "forceDefaultLicenseUrl"    # Z
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 96
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->newWidevineInstance(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/util/Map;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    move-result-object v0

    return-object v0
.end method

.method public static newWidevineInstance(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/util/Map;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
    .registers 8
    .param p0, "defaultLicenseUrl"    # Ljava/lang/String;
    .param p1, "forceDefaultLicenseUrl"    # Z
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p4, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;",
            ")",
            "Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;"
        }
    .end annotation

    .line 126
    .local p3, "optionalKeyRequestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    new-instance v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;-><init>()V

    .line 128
    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->setKeyRequestParameters(Ljava/util/Map;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 129
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->build(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 126
    return-object v0
.end method

.method private releaseManagerOnHandlerThread()V
    .registers 4

    .line 396
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 397
    .local v0, "result":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    :try_start_e
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e .. :try_end_11} :catch_13

    .line 410
    nop

    .line 411
    return-void

    .line 408
    :catch_13
    move-exception v1

    goto :goto_16

    :catch_15
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/Exception;
    :goto_16
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public declared-synchronized downloadLicense(Lcom/google/android/exoplayer2/Format;)[B
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 186
    :try_start_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 187
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(I[BLcom/google/android/exoplayer2/Format;)[B

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 185
    .end local p0    # "this":Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
    .end local p1    # "format":Lcom/google/android/exoplayer2/Format;
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLicenseDurationRemainingSec([B)Landroid/util/Pair;
    .registers 6
    .param p1, "offlineLicenseKeySetId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 231
    :try_start_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4e

    .line 234
    :try_start_4
    sget-object v0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->FORMAT_WITH_EMPTY_DRM_INIT_DATA:Lcom/google/android/exoplayer2/Format;

    .line 235
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->acquireFirstSessionOnHandlerThread(I[BLcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v0
    :try_end_b
    .catch Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException; {:try_start_4 .. :try_end_b} :catch_34
    .catchall {:try_start_4 .. :try_end_b} :catchall_4e

    .line 244
    .local v0, "drmSession":Lcom/google/android/exoplayer2/drm/DrmSession;
    nop

    .line 246
    :try_start_c
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 247
    .local v1, "licenseDurationRemainingSec":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_4e

    .line 259
    :try_start_1a
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;
    :try_end_20
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1a .. :try_end_20} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_20} :catch_27
    .catchall {:try_start_1a .. :try_end_20} :catchall_25

    .line 263
    :try_start_20
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->releaseManagerOnHandlerThread()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_4e

    .line 259
    monitor-exit p0

    return-object v2

    .line 263
    .end local p0    # "this":Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
    :catchall_25
    move-exception v2

    goto :goto_30

    .line 260
    :catch_27
    move-exception v2

    goto :goto_2a

    :catch_29
    move-exception v2

    .line 261
    .local v2, "e":Ljava/lang/Exception;
    :goto_2a
    :try_start_2a
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "drmSession":Lcom/google/android/exoplayer2/drm/DrmSession;
    .end local v1    # "licenseDurationRemainingSec":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    .end local p1    # "offlineLicenseKeySetId":[B
    throw v3
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_25

    .line 263
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "drmSession":Lcom/google/android/exoplayer2/drm/DrmSession;
    .restart local v1    # "licenseDurationRemainingSec":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    .restart local p1    # "offlineLicenseKeySetId":[B
    :goto_30
    :try_start_30
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->releaseManagerOnHandlerThread()V

    .line 264
    throw v2

    .line 239
    .end local v0    # "drmSession":Lcom/google/android/exoplayer2/drm/DrmSession;
    .end local v1    # "licenseDurationRemainingSec":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    :catch_34
    move-exception v0

    .line 240
    .local v0, "e":Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    if-eqz v1, :cond_4d

    .line 241
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1
    :try_end_4b
    .catchall {:try_start_30 .. :try_end_4b} :catchall_4e

    monitor-exit p0

    return-object v1

    .line 243
    :cond_4d
    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 230
    .end local v0    # "e":Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .end local p1    # "offlineLicenseKeySetId":[B
    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$acquireFirstSessionOnHandlerThread$2$com-google-android-exoplayer2-drm-OfflineLicenseHelper(I[BLcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/exoplayer2/Format;)V
    .registers 8
    .param p1, "licenseMode"    # I
    .param p2, "offlineLicenseKeySetId"    # [B
    .param p3, "drmSessionFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p4, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    sget-object v2, Lcom/google/android/exoplayer2/analytics/PlayerId;->UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->setPlayer(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 337
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->prepare()V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_36

    .line 339
    :try_start_16
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->setMode(I[B)V

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 342
    invoke-virtual {v0, v1, p4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->acquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v0

    .line 341
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 340
    invoke-virtual {p3, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_2e

    .line 346
    nop

    .line 349
    goto :goto_3a

    .line 343
    :catchall_2e
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2f
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->release()V

    .line 345
    nop

    .end local p1    # "licenseMode":I
    .end local p2    # "offlineLicenseKeySetId":[B
    .end local p3    # "drmSessionFuture":Lcom/google/common/util/concurrent/SettableFuture;
    .end local p4    # "format":Lcom/google/android/exoplayer2/Format;
    throw v0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_36

    .line 347
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "licenseMode":I
    .restart local p2    # "offlineLicenseKeySetId":[B
    .restart local p3    # "drmSessionFuture":Lcom/google/common/util/concurrent/SettableFuture;
    .restart local p4    # "format":Lcom/google/android/exoplayer2/Format;
    :catchall_36
    move-exception v0

    .line 348
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {p3, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 350
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3a
    return-void
.end method

.method synthetic lambda$acquireFirstSessionOnHandlerThread$3$com-google-android-exoplayer2-drm-OfflineLicenseHelper(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/common/util/concurrent/SettableFuture;)V
    .registers 6
    .param p1, "drmSession"    # Lcom/google/android/exoplayer2/drm/DrmSession;
    .param p2, "drmSessionError"    # Lcom/google/common/util/concurrent/SettableFuture;

    .line 368
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    .line 369
    .local v0, "error":Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 370
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 371
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->release()V

    .line 373
    :cond_15
    invoke-virtual {p2, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_1a

    .line 378
    nop

    .end local v0    # "error":Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    goto :goto_28

    .line 374
    :catchall_1a
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p2, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 376
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 377
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->release()V

    .line 379
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_28
    return-void
.end method

.method synthetic lambda$acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread$1$com-google-android-exoplayer2-drm-OfflineLicenseHelper(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .registers 5
    .param p1, "keySetId"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p2, "drmSession"    # Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 289
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/exoplayer2/drm/DrmSession;->getOfflineLicenseKeySetId()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_e

    .line 293
    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 294
    goto :goto_14

    .line 290
    :catchall_e
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_f
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_15

    .line 293
    nop

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_8

    .line 295
    :goto_14
    return-void

    .line 293
    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {p2, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 294
    goto :goto_1d

    :goto_1c
    throw v0

    :goto_1d
    goto :goto_1c
.end method

.method synthetic lambda$getLicenseDurationRemainingSec$0$com-google-android-exoplayer2-drm-OfflineLicenseHelper(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .registers 5
    .param p1, "licenseDurationRemainingSec"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p2, "drmSession"    # Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 250
    nop

    .line 251
    :try_start_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/WidevineUtil;->getLicenseDurationRemainingSec(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 250
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    .line 255
    goto :goto_14

    .line 252
    :catchall_f
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_10
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1b

    .line 255
    nop

    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 256
    nop

    .line 257
    return-void

    .line 255
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {p2, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 256
    throw v0
.end method

.method synthetic lambda$releaseManagerOnHandlerThread$4$com-google-android-exoplayer2-drm-OfflineLicenseHelper(Lcom/google/common/util/concurrent/SettableFuture;)V
    .registers 3
    .param p1, "result"    # Lcom/google/common/util/concurrent/SettableFuture;

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->release()V

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 404
    goto :goto_e

    .line 402
    :catchall_a
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 405
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e
    return-void
.end method

.method public release()V
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 270
    return-void
.end method

.method public declared-synchronized releaseLicense([B)V
    .registers 4
    .param p1, "offlineLicenseKeySetId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 215
    :try_start_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->FORMAT_WITH_EMPTY_DRM_INIT_DATA:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(I[BLcom/google/android/exoplayer2/Format;)[B
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 220
    monitor-exit p0

    return-void

    .line 214
    .end local p0    # "this":Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
    .end local p1    # "offlineLicenseKeySetId":[B
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renewLicense([B)[B
    .registers 4
    .param p1, "offlineLicenseKeySetId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 200
    :try_start_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->FORMAT_WITH_EMPTY_DRM_INIT_DATA:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(I[BLcom/google/android/exoplayer2/Format;)[B

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 199
    .end local p0    # "this":Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
    .end local p1    # "offlineLicenseKeySetId":[B
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
