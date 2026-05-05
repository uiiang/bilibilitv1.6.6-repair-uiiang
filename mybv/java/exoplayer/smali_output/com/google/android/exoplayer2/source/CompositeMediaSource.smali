.class public abstract Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;,
        Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/exoplayer2/source/BaseMediaSource;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final childSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private eventHandler:Landroid/os/Handler;

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 49
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    .line 51
    return-void
.end method


# virtual methods
.method protected final disableChildSource(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 148
    .local v0, "disabledChild":Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 149
    return-void
.end method

.method protected disableInternal()V
    .registers 5

    .line 79
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 80
    .local v1, "childSource":Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 81
    .end local v1    # "childSource":Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    goto :goto_a

    .line 82
    :cond_1e
    return-void
.end method

.method protected final enableChildSource(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 138
    .local v0, "enabledChild":Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->enable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 139
    return-void
.end method

.method protected enableInternal()V
    .registers 5

    .line 71
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 72
    .local v1, "childSource":Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->enable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 73
    .end local v1    # "childSource":Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    goto :goto_a

    .line 74
    :cond_1e
    return-void
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 3
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ")",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    .local p1, "childSourceId":Ljava/lang/Object;, "TT;"
    return-object p2
.end method

.method protected getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J
    .registers 4
    .param p2, "mediaTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .line 203
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    .local p1, "childSourceId":Ljava/lang/Object;, "TT;"
    return-wide p2
.end method

.method protected getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .registers 3
    .param p2, "windowIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    .local p1, "childSourceId":Ljava/lang/Object;, "TT;"
    return p2
.end method

.method synthetic lambda$prepareChildSource$0$com-google-android-exoplayer2-source-CompositeMediaSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "source"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p3, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 120
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 64
    .local v1, "childSource":Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 65
    .end local v1    # "childSource":Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    goto :goto_a

    .line 66
    :cond_1c
    return-void
.end method

.method protected abstract onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            "Lcom/google/android/exoplayer2/Timeline;",
            ")V"
        }
    .end annotation
.end method

.method protected final prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 7
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ")V"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 119
    new-instance v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/CompositeMediaSource;Ljava/lang/Object;)V

    .line 121
    .local v0, "caller":Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
    new-instance v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;-><init>(Lcom/google/android/exoplayer2/source/CompositeMediaSource;Ljava/lang/Object;)V

    .line 122
    .local v1, "eventListener":Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    new-instance v3, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-direct {v3, p2, v0, v1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-interface {p2, v2, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 124
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-interface {p2, v2, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->addDrmEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 125
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v3

    invoke-interface {p2, v0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_47

    .line 127
    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/source/MediaSource;->disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 129
    :cond_47
    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 3
    .param p1, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 56
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 57
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method protected final releaseChildSource(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 158
    .local v0, "removedChild":Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 159
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 160
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->removeDrmEventListener(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 161
    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 5

    .line 87
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 88
    .local v1, "childSource":Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 89
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 90
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->removeDrmEventListener(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 91
    .end local v1    # "childSource":Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    goto :goto_a

    .line 92
    :cond_2c
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 93
    return-void
.end method
