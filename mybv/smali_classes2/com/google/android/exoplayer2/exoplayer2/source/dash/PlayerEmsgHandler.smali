.class public final Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;,
        Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;,
        Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EMSG_MANIFEST_EXPIRED:I = 0x1


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private chunkLoadedCompletedSinceLastManifestRefreshRequest:Z

.field private final decoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

.field private expiredManifestPublishTimeUs:J

.field private final handler:Landroid/os/Handler;

.field private isWaitingForManifestRefresh:Z

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

.field private released:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .registers 5
    .param p1, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "playerEmsgCallback"    # Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;
    .param p3, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 107
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    .line 108
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 110
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    .line 111
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->handler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->decoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->decoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->isPlayerEmsgEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 67
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->getManifestPublishTimeMsInEmsg(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private ceilingExpiryEntryForPublishTime(J)Ljava/util/Map$Entry;
    .registers 5
    .param p1, "publishTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method private static getManifestPublishTimeMsInEmsg(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)J
    .registers 4
    .param p0, "eventMessage"    # Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->messageData:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    .line 249
    :catch_b
    move-exception v0

    .line 251
    .local v0, "ignored":Lcom/google/android/exoplayer2/ParserException;
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v1
.end method

.method private handleManifestExpiredMessage(JJ)V
    .registers 9
    .param p1, "eventTimeUs"    # J
    .param p3, "manifestPublishTimeMsInEmsg"    # J

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 205
    .local v0, "previousExpiryTimeUs":Ljava/lang/Long;
    if-nez v0, :cond_1c

    .line 206
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 208
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-lez v3, :cond_31

    .line 209
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_31
    :goto_31
    return-void
.end method

.method private static isPlayerEmsgEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "schemeIdUri"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 260
    const-string v0, "urn:mpeg:dash:event:2012"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 261
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 260
    :goto_23
    return v0
.end method

.method private maybeNotifyDashManifestRefreshNeeded()V
    .registers 2

    .line 237
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->chunkLoadedCompletedSinceLastManifestRefreshRequest:Z

    if-nez v0, :cond_5

    .line 239
    return-void

    .line 241
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->isWaitingForManifestRefresh:Z

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->chunkLoadedCompletedSinceLastManifestRefreshRequest:Z

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;->onDashManifestRefreshRequested()V

    .line 244
    return-void
.end method

.method private notifyManifestPublishTimeExpired()V
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->expiredManifestPublishTimeUs:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;->onDashManifestPublishTimeExpired(J)V

    .line 233
    return-void
.end method

.method private removePreviouslyExpiredManifestPublishTimeValues()V
    .registers 8

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    .line 221
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 225
    .local v2, "expiredManifestPublishTime":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->publishTimeMs:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_2b

    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 228
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v2    # "expiredManifestPublishTime":J
    :cond_2b
    goto :goto_a

    .line 229
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    :cond_2c
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .line 140
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->released:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 141
    return v1

    .line 143
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 152
    const/4 v0, 0x0

    return v0

    .line 145
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;

    .line 146
    .local v0, "messageObj":Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;->eventTimeUs:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;->manifestPublishTimeMsInEmsg:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->handleManifestExpiredMessage(JJ)V

    .line 148
    return v1

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method maybeRefreshManifestBeforeLoadingNextChunk(J)Z
    .registers 9
    .param p1, "presentationPositionUs"    # J

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v0, :cond_8

    .line 159
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->isWaitingForManifestRefresh:Z

    if-eqz v0, :cond_e

    .line 162
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_e
    const/4 v0, 0x0

    .line 167
    .local v0, "manifestRefreshNeeded":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->publishTimeMs:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->ceilingExpiryEntryForPublishTime(J)Ljava/util/Map$Entry;

    move-result-object v1

    .line 168
    .local v1, "expiredEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v1, :cond_37

    .line 169
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 170
    .local v2, "expiredPointUs":J
    cmp-long v4, v2, p1

    if-gez v4, :cond_37

    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->expiredManifestPublishTimeUs:J

    .line 172
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->notifyManifestPublishTimeExpired()V

    .line 173
    const/4 v0, 0x1

    .line 176
    .end local v2    # "expiredPointUs":J
    :cond_37
    if-eqz v0, :cond_3c

    .line 177
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->maybeNotifyDashManifestRefreshNeeded()V

    .line 179
    :cond_3c
    return v0
.end method

.method public newPlayerTrackEmsgHandler()Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
    .registers 3

    .line 129
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;-><init>(Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    return-object v0
.end method

.method onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .registers 3
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->chunkLoadedCompletedSinceLastManifestRefreshRequest:Z

    .line 184
    return-void
.end method

.method onChunkLoadError(Z)Z
    .registers 5
    .param p1, "isForwardSeek"    # Z

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 188
    return v1

    .line 190
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->isWaitingForManifestRefresh:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 191
    return v2

    .line 193
    :cond_e
    if-eqz p1, :cond_14

    .line 197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->maybeNotifyDashManifestRefreshNeeded()V

    .line 198
    return v2

    .line 200
    :cond_14
    return v1
.end method

.method public release()V
    .registers 3

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->released:Z

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)V
    .registers 4
    .param p1, "newManifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->isWaitingForManifestRefresh:Z

    .line 122
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->expiredManifestPublishTimeUs:J

    .line 123
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 124
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->removePreviouslyExpiredManifestPublishTimeValues()V

    .line 125
    return-void
.end method
