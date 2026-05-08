.class public abstract Lcom/google/android/exoplayer2/source/WrappingMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "WrappingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CHILD_SOURCE_ID:Ljava/lang/Void;


# instance fields
.field protected final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 2
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 64
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 66
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 6
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v0

    return-object v0
.end method

.method protected final disableChildSource()V
    .registers 2

    .line 228
    sget-object v0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->disableChildSource(Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method protected final enableChildSource()V
    .registers 2

    .line 223
    sget-object v0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->enableChildSource(Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public getInitialTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->getInitialTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 2
    .param p1, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 186
    return-object p1
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 3

    .line 51
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method protected final getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 4
    .param p1, "childSourceId"    # Ljava/lang/Void;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 172
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    return-object v0
.end method

.method protected getMediaTimeForChildMediaTime(J)J
    .registers 3
    .param p1, "mediaTimeMs"    # J

    .line 205
    return-wide p1
.end method

.method protected bridge synthetic getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J
    .registers 4

    .line 51
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Void;J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected final getMediaTimeForChildMediaTime(Ljava/lang/Void;J)J
    .registers 6
    .param p1, "childSourceId"    # Ljava/lang/Void;
    .param p2, "mediaTimeMs"    # J

    .line 191
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getMediaTimeForChildMediaTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getWindowIndexForChildWindowIndex(I)I
    .registers 2
    .param p1, "windowIndex"    # I

    .line 165
    return p1
.end method

.method protected bridge synthetic getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .registers 3

    .line 51
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getWindowIndexForChildWindowIndex(Ljava/lang/Void;I)I

    move-result p1

    return p1
.end method

.method protected final getWindowIndexForChildWindowIndex(Ljava/lang/Void;I)I
    .registers 4
    .param p1, "childSourceId"    # Ljava/lang/Void;
    .param p2, "windowIndex"    # I

    .line 154
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getWindowIndexForChildWindowIndex(I)I

    move-result v0

    return v0
.end method

.method public isSingleWindow()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->isSingleWindow()Z

    move-result v0

    return v0
.end method

.method protected onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V
    .registers 2
    .param p1, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 149
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 150
    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 4

    .line 51
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected final onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 4
    .param p1, "childSourceId"    # Ljava/lang/Void;
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p3, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 136
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V

    .line 137
    return-void
.end method

.method protected final prepareChildSource()V
    .registers 3

    .line 218
    sget-object v0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 219
    return-void
.end method

.method protected prepareSourceInternal()V
    .registers 1

    .line 80
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->prepareChildSource()V

    .line 81
    return-void
.end method

.method protected final prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 2
    .param p1, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 70
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->prepareSourceInternal()V

    .line 72
    return-void
.end method

.method protected final releaseChildSource()V
    .registers 2

    .line 233
    sget-object v0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 131
    return-void
.end method
