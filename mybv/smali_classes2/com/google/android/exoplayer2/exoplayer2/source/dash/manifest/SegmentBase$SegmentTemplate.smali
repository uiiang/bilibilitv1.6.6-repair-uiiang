.class public final Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
.super Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentTemplate"
.end annotation


# instance fields
.field final endNumber:J

.field final initializationTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

.field final mediaTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJJLjava/util/List;JLcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;JJ)V
    .registers 38
    .param p1, "initialization"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # J
    .param p8, "endNumber"    # J
    .param p10, "duration"    # J
    .param p13, "availabilityTimeOffsetUs"    # J
    .param p15, "initializationTemplate"    # Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .param p16, "mediaTemplate"    # Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .param p17, "timeShiftBufferDepthUs"    # J
    .param p19, "periodStartUnixTimeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;J",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;",
            "JJ)V"
        }
    .end annotation

    .local p12, "segmentTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p10

    move-object/from16 v10, p12

    move-wide/from16 v11, p13

    move-wide/from16 v13, p17

    move-wide/from16 v15, p19

    .line 418
    invoke-direct/range {v0 .. v16}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;JJJ)V

    .line 428
    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    .line 429
    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    .line 430
    move-wide/from16 v3, p8

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->endNumber:J

    .line 431
    return-void
.end method


# virtual methods
.method public getInitialization(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 15
    .param p1, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    if-eqz v0, :cond_20

    .line 437
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const-wide/16 v5, 0x0

    .line 438
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->buildUri(Ljava/lang/String;JIJ)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "urlString":Ljava/lang/String;
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    move-object v7, v1

    move-object v8, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v1

    .line 442
    .end local v0    # "urlString":Ljava/lang/String;
    :cond_20
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getInitialization(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentCount(J)J
    .registers 8
    .param p1, "periodDurationUs"    # J

    .line 462
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 463
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 464
    :cond_c
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->endNumber:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1b

    .line 465
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0

    .line 466
    :cond_1b
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v0

    if-eqz v4, :cond_4f

    .line 467
    nop

    .line 468
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->timescale:J

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 469
    .local v0, "numerator":Ljava/math/BigInteger;
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->duration:J

    .line 470
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/32 v2, 0xf4240

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 471
    .local v1, "denominator":Ljava/math/BigInteger;
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v1, v2}, Lcom/google/common/math/BigIntegerMath;->divide(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 473
    .end local v0    # "numerator":Ljava/math/BigInteger;
    .end local v1    # "denominator":Ljava/math/BigInteger;
    :cond_4f
    return-wide v2
.end method

.method public getSegmentUrl(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 21
    .param p1, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p2, "sequenceNumber"    # J

    .line 449
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    if-eqz v2, :cond_19

    .line 450
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:J

    sub-long v3, p2, v3

    long-to-int v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    move-wide v9, v2

    .local v2, "time":J
    goto :goto_22

    .line 452
    .end local v2    # "time":J
    :cond_19
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:J

    sub-long v2, p2, v2

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->duration:J

    mul-long v2, v2, v4

    move-wide v9, v2

    .line 454
    .local v9, "time":J
    :goto_22
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget v6, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 455
    move-wide/from16 v4, p2

    move-wide v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->buildUri(Ljava/lang/String;JIJ)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "uriString":Ljava/lang/String;
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    const-wide/16 v13, 0x0

    const-wide/16 v15, -0x1

    move-object v11, v3

    move-object v12, v2

    invoke-direct/range {v11 .. v16}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v3
.end method
