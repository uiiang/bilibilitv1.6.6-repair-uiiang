.class public Lcom/google/android/exoplayer2/source/FilteringMediaSource;
.super Lcom/google/android/exoplayer2/source/WrappingMediaSource;
.source "FilteringMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final trackTypes:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;I)V
    .registers 4
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "trackType"    # I

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/FilteringMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Ljava/util/Set;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Ljava/util/Set;)V
    .registers 4
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p2, "trackTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 68
    invoke-static {p2}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 69
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 8
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v0

    .line 74
    .local v0, "wrappedPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    new-instance v1, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Lcom/google/common/collect/ImmutableSet;)V

    return-object v1
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 79
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 80
    .local v0, "wrappedPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-super {p0, v0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 81
    return-void
.end method
