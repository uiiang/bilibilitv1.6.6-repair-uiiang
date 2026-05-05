.class final Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;
.super Lcom/google/android/exoplayer2/source/SampleQueue;
.source "HlsSampleStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HlsSampleQueue"
.end annotation


# instance fields
.field private drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field private final overridingDrmInitData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;)V
    .registers 5
    .param p1, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p2, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p3, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/Allocator;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 1671
    .local p4, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 1672
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->overridingDrmInitData:Ljava/util/Map;

    .line 1673
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p3, "x2"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p4, "x3"    # Ljava/util/Map;
    .param p5, "x4"    # Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$1;

    .line 1641
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;)V

    return-void
.end method

.method private getAdjustedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 10
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1720
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1721
    return-object v0

    .line 1723
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    .line 1724
    .local v1, "length":I
    const/4 v2, -0x1

    .line 1725
    .local v2, "transportStreamTimestampMetadataIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_26

    .line 1726
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v4

    .line 1727
    .local v4, "metadataEntry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    instance-of v5, v4, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    if-eqz v5, :cond_23

    .line 1728
    move-object v5, v4

    check-cast v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    .line 1729
    .local v5, "privFrame":Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
    const-string v6, "com.apple.streaming.transportStreamTimestamp"

    iget-object v7, v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1730
    move v2, v3

    .line 1731
    goto :goto_26

    .line 1725
    .end local v4    # "metadataEntry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    .end local v5    # "privFrame":Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1735
    .end local v3    # "i":I
    :cond_26
    :goto_26
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2a

    .line 1736
    return-object p1

    .line 1738
    :cond_2a
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2e

    .line 1739
    return-object v0

    .line 1741
    :cond_2e
    add-int/lit8 v0, v1, -0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 1742
    .local v0, "newMetadataEntries":[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_33
    if-ge v3, v1, :cond_46

    .line 1743
    if-eq v3, v2, :cond_43

    .line 1744
    if-ge v3, v2, :cond_3b

    move v4, v3

    goto :goto_3d

    :cond_3b
    add-int/lit8 v4, v3, -0x1

    .line 1745
    .local v4, "newIndex":I
    :goto_3d
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v5

    aput-object v5, v0, v4

    .line 1742
    .end local v4    # "newIndex":I
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1748
    .end local v3    # "i":I
    :cond_46
    new-instance v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v3
.end method


# virtual methods
.method public getAdjustedUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .registers 5
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 1699
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1700
    .local v0, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :goto_7
    if-eqz v0, :cond_16

    .line 1702
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->overridingDrmInitData:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1703
    .local v1, "overridingDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    if-eqz v1, :cond_16

    .line 1704
    move-object v0, v1

    .line 1707
    .end local v1    # "overridingDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_16
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->getAdjustedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    .line 1708
    .local v1, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-ne v0, v2, :cond_24

    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eq v1, v2, :cond_34

    .line 1709
    :cond_24
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 1711
    :cond_34
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getAdjustedUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    return-object v2
.end method

.method public sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .registers 7
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "cryptoData"    # Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 1766
    invoke-super/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 1767
    return-void
.end method

.method public setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .registers 2
    .param p1, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1691
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1692
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->invalidateUpstreamFormatAdjustment()V

    .line 1693
    return-void
.end method

.method public setSourceChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)V
    .registers 4
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 1676
    iget v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->sourceId(J)V

    .line 1688
    return-void
.end method
