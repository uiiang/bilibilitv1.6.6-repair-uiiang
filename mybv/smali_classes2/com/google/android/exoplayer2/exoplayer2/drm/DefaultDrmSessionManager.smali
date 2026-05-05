.class public Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Mode;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_SESSION_KEEPALIVE_MS:J = 0x493e0L

.field public static final INITIAL_DRM_REQUEST_RETRY_COUNT:I = 0x3

.field public static final MODE_DOWNLOAD:I = 0x2

.field public static final MODE_PLAYBACK:I = 0x0

.field public static final MODE_QUERY:I = 0x1

.field public static final MODE_RELEASE:I = 0x3

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSessionMgr"


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

.field private exoMediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

.field private final exoMediaDrmProvider:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

.field private final keepaliveSessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession;",
            ">;"
        }
    .end annotation
.end field

.field private final keyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field volatile mediaDrmHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

.field private mode:I

.field private final multiSession:Z

.field private noMultiSessionDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

.field private offlineLicenseKeySetId:[B

.field private placeholderDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

.field private final playClearSamplesWithoutKeys:Z

.field private playbackHandler:Landroid/os/Handler;

.field private playbackLooper:Landroid/os/Looper;

.field private playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

.field private final preacquiredSessionReferences:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;",
            ">;"
        }
    .end annotation
.end field

.field private prepareCallsCount:I

.field private final provisioningManagerImpl:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

.field private final referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

.field private final sessionKeepaliveMs:J

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession;",
            ">;"
        }
    .end annotation
.end field

.field private final useDrmSessionsForClearContentTrackTypes:[I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;J)V
    .registers 13
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "exoMediaDrmProvider"    # Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;
    .param p3, "callback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .param p5, "multiSession"    # Z
    .param p6, "useDrmSessionsForClearContentTrackTypes"    # [I
    .param p7, "playClearSamplesWithoutKeys"    # Z
    .param p8, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p9, "sessionKeepaliveMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z[IZ",
            "Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;",
            "J)V"
        }
    .end annotation

    .line 337
    .local p4, "keyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 340
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    .line 341
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->exoMediaDrmProvider:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

    .line 342
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .line 343
    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->keyRequestParameters:Ljava/util/HashMap;

    .line 344
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->multiSession:Z

    .line 345
    iput-object p6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    .line 346
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playClearSamplesWithoutKeys:Z

    .line 347
    iput-object p8, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 348
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    .line 349
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 352
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 353
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    .line 354
    iput-wide p9, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    .line 355
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JLcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;)V
    .registers 12
    .param p1, "x0"    # Ljava/util/UUID;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;
    .param p3, "x2"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .param p4, "x3"    # Ljava/util/HashMap;
    .param p5, "x4"    # Z
    .param p6, "x5"    # [I
    .param p7, "x6"    # Z
    .param p8, "x7"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p9, "x8"    # J
    .param p11, "x9"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;

    .line 76
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 76
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 76
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->maybeReleaseMediaDrm()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/drm/DrmSession;
    .registers 6
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .param p1, "x1"    # Landroid/os/Looper;
    .param p2, "x2"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p3, "x3"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "x4"    # Z

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 76
    iget-wide v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 76
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 76
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    return-object p1
.end method

.method private acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/drm/DrmSession;
    .registers 11
    .param p1, "playbackLooper"    # Landroid/os/Looper;
    .param p2, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p3, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "shouldReleasePreacquiredSessionsBeforeRetrying"    # Z

    .line 468
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->maybeCreateMediaDrmHandler(Landroid/os/Looper;)V

    .line 470
    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez v0, :cond_12

    .line 472
    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 473
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 472
    invoke-direct {p0, v0, p4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->maybeAcquirePlaceholderSession(IZ)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v0

    return-object v0

    .line 477
    :cond_12
    const/4 v0, 0x0

    .line 478
    .local v0, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    const/4 v2, 0x0

    if-nez v1, :cond_4d

    .line 479
    iget-object v1, p3, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-static {v1, v3, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->getSchemeDatas(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    .line 480
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 481
    new-instance v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;)V

    .line 482
    .local v1, "error":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;
    const-string v2, "DefaultDrmSessionMgr"

    const-string v3, "DRM error"

    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 483
    if-eqz p2, :cond_40

    .line 484
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    .line 486
    :cond_40
    new-instance v2, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    const/16 v4, 0x1773

    invoke-direct {v3, v1, v4}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;-><init>(Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V

    return-object v2

    .line 492
    .end local v1    # "error":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;
    :cond_4d
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->multiSession:Z

    if-nez v1, :cond_54

    .line 493
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .local v1, "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    goto :goto_72

    .line 496
    .end local v1    # "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    :cond_54
    const/4 v1, 0x0

    .line 497
    .restart local v1    # "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 498
    .local v4, "existingSession":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    iget-object v5, v4, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 499
    move-object v1, v4

    .line 500
    goto :goto_72

    .line 502
    .end local v4    # "existingSession":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    :cond_71
    goto :goto_5b

    .line 505
    :cond_72
    :goto_72
    if-nez v1, :cond_85

    .line 507
    nop

    .line 508
    invoke-direct {p0, v0, v2, p2, p4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->createAndAcquireSessionWithRetry(Ljava/util/List;ZLcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    move-result-object v1

    .line 513
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->multiSession:Z

    if-nez v2, :cond_7f

    .line 514
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 516
    :cond_7f
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 518
    :cond_85
    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 521
    :goto_88
    return-object v1
.end method

.method private static acquisitionFailedIndicatingResourceShortage(Lcom/google/android/exoplayer2/drm/DrmSession;)Z
    .registers 4
    .param p0, "session"    # Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 656
    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1f

    .line 658
    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/media/ResourceBusyException;

    if-eqz v0, :cond_20

    :cond_1f
    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 656
    :goto_21
    return v1
.end method

.method private canAcquireSession(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z
    .registers 8
    .param p1, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 569
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 571
    return v1

    .line 573
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->getSchemeDatas(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    .line 574
    .local v0, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3f

    .line 575
    iget v2, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ne v2, v1, :cond_3e

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v2

    sget-object v4, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DefaultDrmSessionMgr"

    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 581
    :cond_3e
    return v3

    .line 584
    :cond_3f
    :goto_3f
    iget-object v2, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 585
    .local v2, "schemeType":Ljava/lang/String;
    if-eqz v2, :cond_70

    const-string v4, "cenc"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_70

    .line 588
    :cond_4c
    const-string v4, "cbcs"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 591
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x19

    if-lt v4, v5, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v1, 0x0

    :goto_5c
    return v1

    .line 592
    :cond_5d
    const-string v4, "cbc1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    const-string v4, "cens"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    goto :goto_6f

    .line 600
    :cond_6e
    return v1

    .line 597
    :cond_6f
    :goto_6f
    return v3

    .line 587
    :cond_70
    :goto_70
    return v1
.end method

.method private createAndAcquireSession(Ljava/util/List;ZLcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    .registers 22
    .param p2, "isPlaceholderSession"    # Z
    .param p3, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;Z",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;",
            ")",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession;"
        }
    .end annotation

    .line 703
    .local p1, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playClearSamplesWithoutKeys:Z

    or-int v1, v1, p2

    .line 706
    .local v1, "playClearSamplesWithoutKeys":Z
    new-instance v17, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v5, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    iget-object v6, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

    iget v8, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    iget-object v11, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    iget-object v12, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->keyRequestParameters:Ljava/util/HashMap;

    iget-object v13, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 719
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/os/Looper;

    iget-object v15, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 721
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-object/from16 v2, v17

    move-object/from16 v7, p1

    move v9, v1

    move/from16 v10, p2

    invoke-direct/range {v2 .. v16}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 726
    .local v2, "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 727
    iget-wide v4, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v6

    if-eqz v8, :cond_50

    .line 729
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 731
    :cond_50
    return-object v2
.end method

.method private createAndAcquireSessionWithRetry(Ljava/util/List;ZLcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    .registers 7
    .param p2, "isPlaceholderSession"    # Z
    .param p3, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p4, "shouldReleasePreacquiredSessionsBeforeRetrying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;Z",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;",
            "Z)",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession;"
        }
    .end annotation

    .line 625
    .local p1, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    nop

    .line 626
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    move-result-object v0

    .line 629
    .local v0, "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->acquisitionFailedIndicatingResourceShortage(Lcom/google/android/exoplayer2/drm/DrmSession;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 630
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->releaseAllKeepaliveSessions()V

    .line 631
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->undoAcquisition(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 632
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    move-result-object v0

    .line 638
    :cond_1d
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->acquisitionFailedIndicatingResourceShortage(Lcom/google/android/exoplayer2/drm/DrmSession;)Z

    move-result v1

    if-eqz v1, :cond_42

    if-eqz p4, :cond_42

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 640
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    .line 641
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->releaseAllPreacquiredSessions()V

    .line 642
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 645
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->releaseAllKeepaliveSessions()V

    .line 647
    :cond_3b
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->undoAcquisition(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 648
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    move-result-object v0

    .line 650
    :cond_42
    return-object v0
.end method

.method private static getSchemeDatas(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;
    .registers 8
    .param p0, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "allowMissingData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 776
    .local v0, "matchingSchemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget v2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v1, v2, :cond_39

    .line 777
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v2

    .line 778
    .local v2, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    nop

    .line 779
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v3

    if-nez v3, :cond_2a

    sget-object v3, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 780
    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    sget-object v3, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v3, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v3, 0x1

    .line 781
    .local v3, "uuidMatches":Z
    :goto_2b
    if-eqz v3, :cond_36

    iget-object v4, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    if-nez v4, :cond_33

    if-eqz p2, :cond_36

    .line 782
    :cond_33
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    .end local v2    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v3    # "uuidMatches":Z
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 785
    .end local v1    # "i":I
    :cond_39
    return-object v0
.end method

.method private declared-synchronized initPlaybackLooper(Landroid/os/Looper;)V
    .registers 3
    .param p1, "playbackLooper"    # Landroid/os/Looper;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "this.playbackLooper",
            "this.playbackHandler"
        }
    .end annotation

    monitor-enter p0

    .line 605
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-nez v0, :cond_f

    .line 606
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 607
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    goto :goto_1c

    .line 609
    .end local p0    # "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    :cond_f
    if-ne v0, p1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 610
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 612
    :goto_1c
    monitor-exit p0

    return-void

    .line 604
    .end local p1    # "playbackLooper":Landroid/os/Looper;
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private maybeAcquirePlaceholderSession(IZ)Lcom/google/android/exoplayer2/drm/DrmSession;
    .registers 9
    .param p1, "trackType"    # I
    .param p2, "shouldReleasePreacquiredSessionsBeforeRetrying"    # Z

    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    .line 544
    .local v0, "exoMediaDrm":Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
    nop

    .line 545
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getCryptoType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_17

    sget-boolean v1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 548
    .local v1, "avoidPlaceholderDrmSessions":Z
    :goto_18
    const/4 v2, 0x0

    if-nez v1, :cond_46

    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    .line 549
    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/Util;->linearSearch([II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_46

    .line 550
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getCryptoType()I

    move-result v4

    if-ne v4, v3, :cond_2b

    goto :goto_46

    .line 553
    :cond_2b
    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    if-nez v4, :cond_40

    .line 554
    nop

    .line 556
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 555
    invoke-direct {p0, v4, v3, v2, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->createAndAcquireSessionWithRetry(Ljava/util/List;ZLcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    move-result-object v2

    .line 560
    .local v2, "placeholderDrmSession":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 562
    .end local v2    # "placeholderDrmSession":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    goto :goto_43

    .line 563
    :cond_40
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 565
    :goto_43
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    return-object v2

    .line 551
    :cond_46
    :goto_46
    return-object v2
.end method

.method private maybeCreateMediaDrmHandler(Landroid/os/Looper;)V
    .registers 3
    .param p1, "playbackLooper"    # Landroid/os/Looper;

    .line 615
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    if-nez v0, :cond_b

    .line 616
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    .line 618
    :cond_b
    return-void
.end method

.method private maybeReleaseMediaDrm()V
    .registers 2

    .line 735
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 737
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 738
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 740
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->release()V

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    .line 743
    :cond_26
    return-void
.end method

.method private releaseAllKeepaliveSessions()V
    .registers 5

    .line 676
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 677
    .local v0, "keepaliveSessions":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Lcom/google/android/exoplayer2/drm/DefaultDrmSession;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 678
    .local v2, "keepaliveSession":Lcom/google/android/exoplayer2/drm/DrmSession;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 679
    .end local v2    # "keepaliveSession":Lcom/google/android/exoplayer2/drm/DrmSession;
    goto :goto_a

    .line 680
    :cond_1b
    return-void
.end method

.method private releaseAllPreacquiredSessions()V
    .registers 4

    .line 685
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 686
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 687
    .local v0, "preacquiredSessionReferences":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    .line 688
    .local v2, "preacquiredSessionReference":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->release()V

    .line 689
    .end local v2    # "preacquiredSessionReference":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;
    goto :goto_a

    .line 690
    :cond_1a
    return-void
.end method

.method private undoAcquisition(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 8
    .param p1, "session"    # Lcom/google/android/exoplayer2/drm/DrmSession;
    .param p2, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 667
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 668
    iget-wide v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    .line 669
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 671
    :cond_12
    return-void
.end method

.method private verifyPlaybackThread(Z)V
    .registers 5
    .param p1, "allowBeforeSetPlayer"    # Z

    .line 746
    const-string v0, "DefaultDrmSessionMgr"

    if-eqz p1, :cond_13

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-nez v1, :cond_13

    .line 747
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v2, "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread."

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5c

    .line 751
    :cond_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_5c

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 755
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nExpected thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 757
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    .line 752
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 760
    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method public acquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .registers 6
    .param p1, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    .line 452
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 453
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-direct {p0, v0, p1, p2, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v0

    return-object v0
.end method

.method public getCryptoType(Lcom/google/android/exoplayer2/Format;)I
    .registers 7
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 526
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    .line 527
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getCryptoType()I

    move-result v1

    .line 528
    .local v1, "cryptoType":I
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez v2, :cond_27

    .line 529
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    .line 530
    .local v2, "trackType":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Util;->linearSearch([II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    .line 531
    move v0, v1

    goto :goto_26

    .line 532
    :cond_25
    nop

    .line 530
    :goto_26
    return v0

    .line 534
    .end local v2    # "trackType":I
    :cond_27
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->canAcquireSession(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result v0

    if-eqz v0, :cond_31

    move v0, v1

    goto :goto_32

    :cond_31
    const/4 v0, 0x1

    :goto_32
    return v0
.end method

.method public preacquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    .registers 4
    .param p1, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 439
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 440
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 443
    .local v0, "preacquiredSessionReference":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->acquire(Lcom/google/android/exoplayer2/Format;)V

    .line 444
    return-object v0
.end method

.method public final prepare()V
    .registers 7

    .line 394
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    .line 395
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-eqz v0, :cond_d

    .line 396
    return-void

    .line 398
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 399
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->exoMediaDrmProvider:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;->acquireExoMediaDrm(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    .line 400
    new-instance v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;

    invoke-direct {v2, p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;)V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->setOnEventListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V

    goto :goto_47

    .line 401
    :cond_25
    iget-wide v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_47

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_47

    .line 404
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 407
    .end local v0    # "i":I
    :cond_47
    :goto_47
    return-void
.end method

.method public final release()V
    .registers 6

    .line 411
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    .line 412
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-eqz v1, :cond_c

    .line 413
    return-void

    .line 416
    :cond_c
    iget-wide v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_32

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 420
    .local v0, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DefaultDrmSession;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 421
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 424
    .end local v0    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DefaultDrmSession;>;"
    .end local v1    # "i":I
    :cond_32
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->releaseAllPreacquiredSessions()V

    .line 426
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->maybeReleaseMediaDrm()V

    .line 427
    return-void
.end method

.method public setMode(I[B)V
    .registers 4
    .param p1, "mode"    # I
    .param p2, "offlineLicenseKeySetId"    # [B

    .line 382
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 383
    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    .line 384
    :cond_f
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_12
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    .line 387
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    .line 388
    return-void
.end method

.method public setPlayer(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 3
    .param p1, "playbackLooper"    # Landroid/os/Looper;
    .param p2, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 431
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->initPlaybackLooper(Landroid/os/Looper;)V

    .line 432
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 433
    return-void
.end method
