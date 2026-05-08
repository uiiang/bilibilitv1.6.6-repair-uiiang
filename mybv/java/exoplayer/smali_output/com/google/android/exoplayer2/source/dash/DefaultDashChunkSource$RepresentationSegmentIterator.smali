.class public final Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;
.super Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationSegmentIterator"
.end annotation


# instance fields
.field private final nowPeriodTimeUs:J

.field private final representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;JJJ)V
    .registers 8
    .param p1, "representation"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p2, "firstAvailableSegmentNum"    # J
    .param p4, "lastAvailableSegmentNum"    # J
    .param p6, "nowPeriodTimeUs"    # J

    .line 840
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;-><init>(JJ)V

    .line 841
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 842
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->nowPeriodTimeUs:J

    .line 843
    return-void
.end method


# virtual methods
.method public getChunkEndTimeUs()J
    .registers 4

    .line 870
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->checkInBounds()V

    .line 871
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->getCurrentIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChunkStartTimeUs()J
    .registers 4

    .line 864
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->checkInBounds()V

    .line 865
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->getCurrentIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataSpec()Lcom/google/android/exoplayer2/upstream/DataSpec;
    .registers 8

    .line 847
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->checkInBounds()V

    .line 848
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->getCurrentIndex()J

    move-result-wide v0

    .line 849
    .local v0, "currentIndex":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v2

    .line 851
    .local v2, "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->nowPeriodTimeUs:J

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->isSegmentAvailableAtFullNetworkSpeed(JJ)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 852
    const/4 v3, 0x0

    goto :goto_1b

    .line 853
    :cond_19
    const/16 v3, 0x8

    :goto_1b
    nop

    .line 854
    .local v3, "flags":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 859
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    .line 854
    invoke-static {v4, v5, v2, v3, v6}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;ILjava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v4

    return-object v4
.end method
