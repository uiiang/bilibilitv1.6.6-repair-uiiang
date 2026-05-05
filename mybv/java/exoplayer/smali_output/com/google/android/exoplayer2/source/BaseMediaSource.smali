.class public abstract Lcom/google/android/exoplayer2/source/BaseMediaSource;
.super Ljava/lang/Object;
.source "BaseMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private final enabledMediaSourceCallers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;",
            ">;"
        }
    .end annotation
.end field

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private looper:Landroid/os/Looper;

.field private final mediaSourceCallers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;",
            ">;"
        }
    .end annotation
.end field

.field private playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

.field private timeline:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 59
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 60
    return-void
.end method


# virtual methods
.method public final addDrmEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    .line 206
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 209
    return-void
.end method

.method public final addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 194
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 197
    return-void
.end method

.method protected final createDrmEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .registers 4
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method protected final createDrmEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .registers 4
    .param p1, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method protected final createEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .registers 4
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method protected final createEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .registers 6
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaTimeOffsetMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method protected final createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .registers 4
    .param p1, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method protected final createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .registers 6
    .param p1, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "mediaTimeOffsetMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
    .registers 4
    .param p1, "caller"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 256
    .local v0, "wasEnabled":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 257
    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 258
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->disableInternal()V

    .line 260
    :cond_1a
    return-void
.end method

.method protected disableInternal()V
    .registers 1

    .line 78
    return-void
.end method

.method public final enable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
    .registers 4
    .param p1, "caller"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->looper:Landroid/os/Looper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    .line 247
    .local v0, "wasDisabled":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    if-eqz v0, :cond_15

    .line 249
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enableInternal()V

    .line 251
    :cond_15
    return-void
.end method

.method protected enableInternal()V
    .registers 1

    .line 75
    return-void
.end method

.method public synthetic getInitialTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/MediaSource$-CC;->$default$getInitialTimeline(Lcom/google/android/exoplayer2/source/MediaSource;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method protected final getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlayerId;

    return-object v0
.end method

.method protected final isEnabled()Z
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic isSingleWindow()Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/MediaSource$-CC;->$default$isSingleWindow(Lcom/google/android/exoplayer2/source/MediaSource;)Z

    move-result v0

    return v0
.end method

.method public final prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 4
    .param p1, "caller"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
    .param p2, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 220
    sget-object v0, Lcom/google/android/exoplayer2/analytics/PlayerId;->UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 221
    return-void
.end method

.method public final prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 7
    .param p1, "caller"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
    .param p2, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;
    .param p3, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 228
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 229
    .local v0, "looper":Landroid/os/Looper;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->looper:Landroid/os/Looper;

    if-eqz v1, :cond_d

    if-ne v1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 230
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 231
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 232
    .local v1, "timeline":Lcom/google/android/exoplayer2/Timeline;
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->looper:Landroid/os/Looper;

    if-nez v2, :cond_29

    .line 234
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->looper:Landroid/os/Looper;

    .line 235
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    goto :goto_31

    .line 237
    :cond_29
    if-eqz v1, :cond_31

    .line 238
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 239
    invoke-interface {p1, p0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    .line 241
    :cond_31
    :goto_31
    return-void
.end method

.method protected abstract prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
.end method

.method protected final refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V
    .registers 4
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 92
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    .line 94
    .local v1, "caller":Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    .line 95
    .end local v1    # "caller":Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
    goto :goto_8

    .line 96
    :cond_18
    return-void
.end method

.method public final releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
    .registers 3
    .param p1, "caller"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->looper:Landroid/os/Looper;

    .line 267
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 268
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 270
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->releaseSourceInternal()V

    goto :goto_20

    .line 272
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 274
    :goto_20
    return-void
.end method

.method protected abstract releaseSourceInternal()V
.end method

.method public final removeDrmEventListener(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
    .registers 3
    .param p1, "eventListener"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->removeEventListener(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 214
    return-void
.end method

.method public final removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .registers 3
    .param p1, "eventListener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 202
    return-void
.end method
