.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_LICENSE_DURATION_TO_RENEW_SECONDS:I = 0x3c

.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSession"


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

.field private cryptoConfig:Lcom/google/android/exoplayer2/decoder/CryptoConfig;

.field private currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

.field private currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

.field private final eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset<",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final isPlaceholderSession:Z

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

.field private lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

.field private final mode:I

.field private offlineLicenseKeySetId:[B

.field private final playClearSamplesWithoutKeys:Z

.field private final playbackLooper:Landroid/os/Looper;

.field private final playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

.field private final provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

.field private referenceCount:I

.field private final referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;

.field private requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field private final responseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

.field public final schemeDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:[B

.field private state:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 16
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "mediaDrm"    # Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
    .param p3, "provisioningManager"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;
    .param p4, "referenceCountListener"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;
    .param p6, "mode"    # I
    .param p7, "playClearSamplesWithoutKeys"    # Z
    .param p8, "isPlaceholderSession"    # Z
    .param p9, "offlineLicenseKeySetId"    # [B
    .param p11, "callback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .param p12, "playbackLooper"    # Landroid/os/Looper;
    .param p13, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p14, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;IZZ[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;",
            "Lcom/google/android/exoplayer2/analytics/PlayerId;",
            ")V"
        }
    .end annotation

    .line 197
    .local p5, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local p10, "keyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, 0x1

    if-eq p6, v0, :cond_9

    const/4 v0, 0x3

    if-ne p6, v0, :cond_c

    .line 200
    :cond_9
    invoke-static {p9}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_c
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    .line 203
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    .line 204
    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;

    .line 205
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    .line 206
    iput p6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    .line 207
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    .line 208
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isPlaceholderSession:Z

    .line 209
    if-eqz p9, :cond_22

    .line 210
    iput-object p9, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    goto :goto_2e

    .line 213
    :cond_22
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    .line 215
    :goto_2e
    iput-object p10, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    .line 216
    iput-object p11, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .line 217
    new-instance v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    .line 218
    iput-object p13, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 219
    iput-object p14, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 220
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 221
    iput-object p12, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    .line 222
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    invoke-direct {v0, p0, p12}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->responseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Ljava/util/UUID;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->responseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    return-object v0
.end method

.method private dispatchEvent(Lcom/google/android/exoplayer2/util/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 580
    .local p1, "event":Lcom/google/android/exoplayer2/util/Consumer;, "Lcom/google/android/exoplayer2/util/Consumer<Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 581
    .local v1, "eventDispatcher":Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 582
    .end local v1    # "eventDispatcher":Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    goto :goto_a

    .line 583
    :cond_1a
    return-void
.end method

.method private doLicense(Z)V
    .registers 10
    .param p1, "allowRetry"    # Z
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId"
        }
    .end annotation

    .line 438
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isPlaceholderSession:Z

    if-eqz v0, :cond_5

    .line 439
    return-void

    .line 441
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 442
    .local v0, "sessionId":[B
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_8e

    goto/16 :goto_8c

    .line 471
    :pswitch_15
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    .line 474
    goto :goto_8c

    .line 466
    :pswitch_26
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v1, :cond_30

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 467
    :cond_30
    invoke-direct {p0, v0, v2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_8c

    .line 445
    :pswitch_34
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v1, :cond_3d

    .line 446
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_8c

    .line 447
    :cond_3d
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_48

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 448
    :cond_48
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->getLicenseDurationRemainingSec()J

    move-result-wide v4

    .line 449
    .local v4, "licenseDurationRemainingSec":J
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    if-nez v1, :cond_72

    const-wide/16 v6, 0x3c

    cmp-long v1, v4, v6

    if-gtz v1, :cond_72

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DefaultDrmSession"

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-direct {p0, v0, v2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_8b

    .line 457
    :cond_72
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_81

    .line 458
    new-instance v1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    goto :goto_8b

    .line 460
    :cond_81
    iput v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 461
    new-instance v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->dispatchEvent(Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 463
    .end local v4    # "licenseDurationRemainingSec":J
    :goto_8b
    nop

    .line 478
    :cond_8c
    :goto_8c
    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_34
        :pswitch_34
        :pswitch_26
        :pswitch_15
    .end packed-switch
.end method

.method private getLicenseDurationRemainingSec()J
    .registers 6

    .line 492
    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 493
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 495
    :cond_10
    nop

    .line 496
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/WidevineUtil;->getLicenseDurationRemainingSec(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 497
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private isOpen()Z
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 576
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method static synthetic lambda$onError$1(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 567
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$openInternal$0(ILcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 2
    .param p0, "localState"    # I
    .param p1, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 402
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    return-void
.end method

.method private onError(Ljava/lang/Exception;I)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorSource"    # I

    .line 564
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 565
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/drm/DrmUtil;->getErrorCodeForMediaDrmException(Ljava/lang/Exception;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 566
    const-string v0, "DefaultDrmSession"

    const-string v1, "DRM session error"

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 567
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Exception;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->dispatchEvent(Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 568
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_22

    .line 569
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 571
    :cond_22
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1, "request"    # Ljava/lang/Object;
    .param p2, "response"    # Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    if-ne p1, v0, :cond_64

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_64

    .line 515
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    .line 517
    instance-of v0, p2, Ljava/lang/Exception;

    if-eqz v0, :cond_1a

    .line 518
    move-object v0, p2

    check-cast v0, Ljava/lang/Exception;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;Z)V

    .line 519
    return-void

    .line 523
    :cond_1a
    :try_start_1a
    move-object v0, p2

    check-cast v0, [B

    .line 524
    .local v0, "responseData":[B
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_38

    .line 525
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 526
    new-instance v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->dispatchEvent(Lcom/google/android/exoplayer2/util/Consumer;)V

    goto :goto_5d

    .line 528
    :cond_38
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v1

    .line 529
    .local v1, "keySetId":[B
    iget v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4b

    if-nez v2, :cond_52

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v2, :cond_52

    :cond_4b
    if-eqz v1, :cond_52

    array-length v2, v1

    if-eqz v2, :cond_52

    .line 534
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 536
    :cond_52
    const/4 v2, 0x4

    iput v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 537
    new-instance v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->dispatchEvent(Lcom/google/android/exoplayer2/util/Consumer;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_5d} :catch_5e

    .line 541
    .end local v0    # "responseData":[B
    .end local v1    # "keySetId":[B
    :goto_5d
    goto :goto_63

    .line 539
    :catch_5e
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;Z)V

    .line 542
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_63
    return-void

    .line 513
    :cond_64
    :goto_64
    return-void
.end method

.method private onKeysError(Ljava/lang/Exception;Z)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "thrownByExoMediaDrm"    # Z

    .line 552
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_a

    .line 553
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    goto :goto_13

    .line 555
    :cond_a
    nop

    .line 557
    if-eqz p2, :cond_f

    .line 558
    const/4 v0, 0x1

    goto :goto_10

    .line 559
    :cond_f
    const/4 v0, 0x2

    .line 555
    :goto_10
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    .line 561
    :goto_13
    return-void
.end method

.method private onKeysRequired()V
    .registers 3

    .line 545
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    if-nez v0, :cond_12

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 546
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    .line 549
    :cond_12
    return-void
.end method

.method private onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "request"    # Ljava/lang/Object;
    .param p2, "response"    # Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    if-ne p1, v0, :cond_38

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_38

    .line 419
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    .line 421
    instance-of v0, p2, Ljava/lang/Exception;

    if-eqz v0, :cond_21

    .line 422
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    move-object v1, p2

    check-cast v1, Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;Z)V

    .line 423
    return-void

    .line 427
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    move-object v1, p2

    check-cast v1, [B

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideProvisionResponse([B)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_30

    .line 431
    nop

    .line 433
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionCompleted()V

    .line 434
    return-void

    .line 428
    :catch_30
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;Z)V

    .line 430
    return-void

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_38
    :goto_38
    return-void
.end method

.method private openInternal()Z
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 390
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 392
    return v1

    .line 396
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    .line 397
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-interface {v2, v0, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->setPlayerIdForSession([BLcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->createCryptoConfig([B)Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->cryptoConfig:Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    .line 399
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 401
    nop

    .line 402
    .local v0, "localState":I
    new-instance v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->dispatchEvent(Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 403
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Landroid/media/NotProvisionedException; {:try_start_8 .. :try_end_32} :catch_38
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_32} :catch_33

    .line 404
    return v1

    .line 407
    .end local v0    # "localState":I
    :catch_33
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    goto :goto_3f

    .line 405
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_38
    move-exception v0

    .line 406
    .local v0, "e":Landroid/media/NotProvisionedException;
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    .line 409
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    nop

    .line 411
    :goto_3f
    const/4 v0, 0x0

    return v0
.end method

.method private postKeyRequest([BIZ)V
    .registers 8
    .param p1, "scope"    # [B
    .param p2, "type"    # I
    .param p3, "allowRetry"    # Z

    .line 502
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    invoke-interface {v1, p1, v2, p2, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    .line 503
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    .line 504
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->post(ILjava/lang/Object;Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    .line 507
    goto :goto_23

    .line 505
    :catch_1f
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;Z)V

    .line 508
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method private restoreKeys()Z
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId",
            "offlineLicenseKeySetId"
        }
    .end annotation

    .line 483
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_b

    .line 484
    return v0

    .line 485
    :catch_b
    move-exception v1

    .line 486
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    .line 488
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private verifyPlaybackThread()V
    .registers 4

    .line 586
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_45

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 590
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nExpected thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    .line 592
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 587
    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 595
    :cond_45
    return-void
.end method


# virtual methods
.method public acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 6
    .param p1, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 321
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 322
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    const/4 v1, 0x0

    if-gez v0, :cond_24

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session reference count less than zero: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iput v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    .line 326
    :cond_24
    if-eqz p1, :cond_2b

    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->add(Ljava/lang/Object;)V

    .line 329
    :cond_2b
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    if-ne v0, v2, :cond_5f

    .line 330
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_39

    const/4 v1, 0x1

    :cond_39
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 331
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:DrmRequestHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 332
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 333
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    .line 334
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openInternal()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 335
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_74

    .line 337
    :cond_5f
    if-eqz p1, :cond_74

    .line 338
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    .line 339
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v2, :cond_74

    .line 342
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    .line 344
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;

    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    invoke-interface {v0, p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;->onReferenceCountIncremented(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;I)V

    .line 345
    return-void
.end method

.method public final getCryptoConfig()Lcom/google/android/exoplayer2/decoder/CryptoConfig;
    .registers 2

    .line 295
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->cryptoConfig:Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    return-object v0
.end method

.method public final getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .registers 3

    .line 282
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 283
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .registers 2

    .line 309
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    return-object v0
.end method

.method public final getSchemeUuid()Ljava/util/UUID;
    .registers 2

    .line 288
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public final getState()I
    .registers 2

    .line 269
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 270
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    return v0
.end method

.method public hasSessionId([B)Z
    .registers 3
    .param p1, "sessionId"    # [B

    .line 226
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method onMediaDrmEvent(I)V
    .registers 2
    .param p1, "what"    # I

    .line 231
    packed-switch p1, :pswitch_data_a

    goto :goto_8

    .line 233
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysRequired()V

    .line 234
    nop

    .line 238
    :goto_8
    return-void

    nop

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method

.method onProvisionCompleted()V
    .registers 2

    .line 252
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openInternal()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 253
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    .line 255
    :cond_a
    return-void
.end method

.method onProvisionError(Ljava/lang/Exception;Z)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Exception;
    .param p2, "thrownByExoMediaDrm"    # Z

    .line 258
    nop

    .line 260
    if-eqz p2, :cond_5

    .line 261
    const/4 v0, 0x1

    goto :goto_6

    .line 262
    :cond_5
    const/4 v0, 0x3

    .line 258
    :goto_6
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    .line 263
    return-void
.end method

.method public playClearSamplesWithoutKeys()Z
    .registers 2

    .line 275
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 276
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    return v0
.end method

.method provision()V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    .line 247
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 245
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->post(ILjava/lang/Object;Z)V

    .line 249
    return-void
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 5
    .param p1, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 349
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 350
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    if-gtz v0, :cond_f

    .line 351
    const-string v0, "DefaultDrmSession"

    const-string v1, "release() called on a session that\'s already fully released."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void

    .line 354
    :cond_f
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    if-nez v0, :cond_51

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->responseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->release()V

    .line 359
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 361
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 362
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->cryptoConfig:Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    .line 363
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 364
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    .line 365
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    if-eqz v0, :cond_51

    .line 367
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->closeSession([B)V

    .line 368
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    .line 371
    :cond_51
    if-eqz p1, :cond_63

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->remove(Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_63

    .line 375
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    .line 378
    :cond_63
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;

    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    invoke-interface {v0, p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;->onReferenceCountDecremented(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;I)V

    .line 379
    return-void
.end method

.method public requiresSecureDecoder(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 315
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->requiresSecureDecoder([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method
