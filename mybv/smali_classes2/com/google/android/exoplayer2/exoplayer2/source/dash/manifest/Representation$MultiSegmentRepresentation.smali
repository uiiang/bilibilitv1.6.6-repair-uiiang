.class public Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;
.super Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
.source "Representation.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiSegmentRepresentation"
.end annotation


# instance fields
.field final segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 19
    .param p1, "revisionId"    # J
    .param p3, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "segmentBase"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)V"
        }
    .end annotation

    .line 320
    .local p4, "baseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .local p6, "inbandEventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p7, "essentialProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p8, "supplementalProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/Representation$1;)V

    .line 328
    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    .line 329
    return-void
.end method


# virtual methods
.method public getAvailableSegmentCount(JJ)J
    .registers 7
    .param p1, "periodDurationUs"    # J
    .param p3, "nowUnixTimeUs"    # J

    .line 387
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getAvailableSegmentCount(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .registers 2

    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDurationUs(JJ)J
    .registers 7
    .param p1, "segmentNum"    # J
    .param p3, "periodDurationUs"    # J

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentDurationUs(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstAvailableSegmentNum(JJ)J
    .registers 7
    .param p1, "periodDurationUs"    # J
    .param p3, "nowUnixTimeUs"    # J

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstSegmentNum()J
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .registers 1

    .line 339
    return-object p0
.end method

.method public getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 2

    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSegmentAvailableTimeUs(JJ)J
    .registers 7
    .param p1, "periodDurationUs"    # J
    .param p3, "nowUnixTimeUs"    # J

    .line 392
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getNextSegmentAvailableTimeUs(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentCount(J)J
    .registers 5
    .param p1, "periodDurationUs"    # J

    .line 382
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentNum(JJ)J
    .registers 7
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentNum(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 4
    .param p1, "segmentNum"    # J

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentUrl(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method public getTimeUs(J)J
    .registers 5
    .param p1, "segmentNum"    # J

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isExplicit()Z
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->isExplicit()Z

    move-result v0

    return v0
.end method
