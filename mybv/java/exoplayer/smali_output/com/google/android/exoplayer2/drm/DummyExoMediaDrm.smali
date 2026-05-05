.class public final Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;
.super Ljava/lang/Object;
.source "DummyExoMediaDrm.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaDrm;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;
    .registers 1

    .line 43
    new-instance v0, Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;-><init>()V

    return-object v0
.end method


# virtual methods
.method public acquire()V
    .registers 1

    .line 115
    return-void
.end method

.method public closeSession([B)V
    .registers 2
    .param p1, "sessionId"    # [B

    .line 69
    return-void
.end method

.method public createCryptoConfig([B)Lcom/google/android/exoplayer2/decoder/CryptoConfig;
    .registers 3
    .param p1, "sessionId"    # [B

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getCryptoType()I
    .registers 2

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .registers 6
    .param p1, "scope"    # [B
    .param p3, "keyType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .line 78
    .local p2, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local p4, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyByteArray(Ljava/lang/String;)[B
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 136
    const-string v0, ""

    return-object v0
.end method

.method public getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
    .registers 2

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public openSession()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    .line 63
    new-instance v0, Landroid/media/MediaDrmException;

    const-string v1, "Attempting to open a session using a dummy ExoMediaDrm."

    invoke-direct {v0, v1}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public provideKeyResponse([B[B)[B
    .registers 4
    .param p1, "scope"    # [B
    .param p2, "response"    # [B

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public provideProvisionResponse([B)V
    .registers 3
    .param p1, "response"    # [B

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public queryKeyStatus([B)Ljava/util/Map;
    .registers 3
    .param p1, "sessionId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public release()V
    .registers 1

    .line 120
    return-void
.end method

.method public requiresSecureDecoder([BLjava/lang/String;)Z
    .registers 4
    .param p1, "sessionId"    # [B
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public restoreKeys([B[B)V
    .registers 4
    .param p1, "sessionId"    # [B
    .param p2, "keySetId"    # [B

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public setOnEventListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;

    .line 49
    return-void
.end method

.method public setOnExpirationUpdateListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;

    .line 59
    return-void
.end method

.method public setOnKeyStatusChangeListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;

    .line 54
    return-void
.end method

.method public synthetic setPlayerIdForSession([BLcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$-CC;->$default$setPlayerIdForSession(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BLcom/google/android/exoplayer2/analytics/PlayerId;)V

    return-void
.end method

.method public setPropertyByteArray(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 152
    return-void
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 147
    return-void
.end method
