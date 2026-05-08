.class final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$FakeMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FakeMediaSource"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1004
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$1;

    .line 1004
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$FakeMediaSource;-><init>()V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 6
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 1028
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 2

    .line 1013
    # getter for: Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;
    invoke-static {}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->access$100()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1

    .line 1024
    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 2
    .param p1, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 1009
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 2
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1034
    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 1

    .line 1019
    return-void
.end method
