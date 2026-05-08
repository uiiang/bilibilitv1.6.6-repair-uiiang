.class public abstract Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;
.super Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiSegmentBase"
.end annotation


# instance fields
.field final availabilityTimeOffsetUs:J

.field final duration:J

.field private final periodStartUnixTimeUs:J

.field final segmentTimeline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation
.end field

.field final startNumber:J

.field private final timeShiftBufferDepthUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;JJJ)V
    .registers 29
    .param p1, "initialization"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # J
    .param p8, "duration"    # J
    .param p11, "availabilityTimeOffsetUs"    # J
    .param p13, "timeShiftBufferDepthUs"    # J
    .param p15, "periodStartUnixTimeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;JJJ)V"
        }
    .end annotation

    .line 168
    .local p10, "segmentTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    move-object v0, p0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJ)V

    .line 169
    move-wide/from16 v1, p6

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 170
    move-wide/from16 v3, p8

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 171
    move-object/from16 v5, p10

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 172
    move-wide/from16 v6, p11

    iput-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    .line 173
    move-wide/from16 v8, p13

    iput-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timeShiftBufferDepthUs:J

    .line 174
    move-wide/from16 v10, p15

    iput-wide v10, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    .line 175
    return-void
.end method


# virtual methods
.method public getAvailableSegmentCount(JJ)J
    .registers 20
    .param p1, "periodDurationUs"    # J
    .param p3, "nowUnixTimeUs"    # J

    .line 270
    move-object v0, p0

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    move-result-wide v1

    .line 271
    .local v1, "segmentCount":J
    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    .line 272
    return-wide v1

    .line 276
    :cond_c
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    sub-long v3, p3, v3

    .line 277
    .local v3, "liveEdgeTimeInPeriodUs":J
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    add-long/2addr v5, v3

    .line 279
    .local v5, "availabilityTimeOffsetUs":J
    move-wide/from16 v7, p1

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentNum(JJ)J

    move-result-wide v9

    .line 280
    .local v9, "firstIncompleteSegmentNum":J
    invoke-virtual/range {p0 .. p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide v11

    .line 281
    .local v11, "firstAvailableSegmentNum":J
    sub-long v13, v9, v11

    long-to-int v14, v13

    int-to-long v13, v14

    return-wide v13
.end method

.method public getFirstAvailableSegmentNum(JJ)J
    .registers 15
    .param p1, "periodDurationUs"    # J
    .param p3, "nowUnixTimeUs"    # J

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    move-result-wide v0

    .line 256
    .local v0, "segmentCount":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2a

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timeShiftBufferDepthUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_16

    goto :goto_2a

    .line 261
    :cond_16
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    sub-long v4, p3, v4

    .line 262
    .local v4, "liveEdgeTimeInPeriodUs":J
    sub-long v2, v4, v2

    .line 263
    .local v2, "timeShiftBufferStartInPeriodUs":J
    nop

    .line 264
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentNum(JJ)J

    move-result-wide v6

    .line 265
    .local v6, "timeShiftBufferStartSegmentNum":J
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    return-wide v8

    .line 257
    .end local v2    # "timeShiftBufferStartInPeriodUs":J
    .end local v4    # "liveEdgeTimeInPeriodUs":J
    .end local v6    # "timeShiftBufferStartSegmentNum":J
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide v2

    return-wide v2
.end method

.method public getFirstSegmentNum()J
    .registers 3

    .line 250
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    return-wide v0
.end method

.method public getNextSegmentAvailableTimeUs(JJ)J
    .registers 11
    .param p1, "periodDurationUs"    # J
    .param p3, "nowUnixTimeUs"    # J

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 287
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 289
    :cond_a
    nop

    .line 290
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide v0

    .line 291
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getAvailableSegmentCount(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 292
    .local v0, "firstIncompleteSegmentNum":J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    move-result-wide v2

    .line 293
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentDurationUs(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    sub-long/2addr v2, v4

    .line 292
    return-wide v2
.end method

.method public abstract getSegmentCount(J)J
.end method

.method public final getSegmentDurationUs(JJ)J
    .registers 14
    .param p1, "sequenceNumber"    # J
    .param p3, "periodDurationUs"    # J

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    const-wide/32 v1, 0xf4240

    if-eqz v0, :cond_1a

    .line 216
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long v3, p1, v3

    long-to-int v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    .line 217
    .local v3, "duration":J
    mul-long v1, v1, v3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr v1, v5

    return-wide v1

    .line 219
    .end local v3    # "duration":J
    :cond_1a
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    move-result-wide v3

    .line 221
    .local v3, "segmentCount":J
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide v5

    add-long/2addr v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    cmp-long v0, p1, v5

    if-nez v0, :cond_37

    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    move-result-wide v0

    sub-long v0, p3, v0

    goto :goto_3f

    .line 223
    :cond_37
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    mul-long v5, v5, v1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    div-long v0, v5, v0

    .line 220
    :goto_3f
    return-wide v0
.end method

.method public getSegmentNum(JJ)J
    .registers 23
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .line 179
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide v1

    .line 180
    .local v1, "firstSegmentNum":J
    move-wide/from16 v3, p3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    move-result-wide v5

    .line 181
    .local v5, "segmentCount":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_13

    .line 182
    return-wide v1

    .line 184
    :cond_13
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    const-wide/16 v8, 0x1

    if-nez v7, :cond_3e

    .line 186
    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    const-wide/32 v12, 0xf4240

    mul-long v10, v10, v12

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr v10, v12

    .line 187
    .local v10, "durationUs":J
    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    div-long v14, p1, v10

    add-long/2addr v12, v14

    .line 189
    .local v12, "segmentNum":J
    cmp-long v7, v12, v1

    if-gez v7, :cond_2e

    .line 190
    move-wide v7, v1

    goto :goto_3d

    .line 191
    :cond_2e
    const-wide/16 v14, -0x1

    cmp-long v7, v5, v14

    if-nez v7, :cond_36

    .line 192
    move-wide v7, v12

    goto :goto_3d

    .line 193
    :cond_36
    add-long v14, v1, v5

    sub-long/2addr v14, v8

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 189
    :goto_3d
    return-wide v7

    .line 196
    .end local v10    # "durationUs":J
    .end local v12    # "segmentNum":J
    :cond_3e
    move-wide v10, v1

    .line 197
    .local v10, "lowIndex":J
    add-long v12, v1, v5

    sub-long/2addr v12, v8

    .line 198
    .local v12, "highIndex":J
    :goto_42
    cmp-long v7, v10, v12

    if-gtz v7, :cond_60

    .line 199
    sub-long v14, v12, v10

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    add-long/2addr v14, v10

    .line 200
    .local v14, "midIndex":J
    invoke-virtual {v0, v14, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    move-result-wide v16

    .line 201
    .local v16, "midTimeUs":J
    cmp-long v7, v16, p1

    if-gez v7, :cond_58

    .line 202
    add-long v10, v14, v8

    goto :goto_5e

    .line 203
    :cond_58
    cmp-long v7, v16, p1

    if-lez v7, :cond_5f

    .line 204
    sub-long v12, v14, v8

    .line 208
    .end local v14    # "midIndex":J
    .end local v16    # "midTimeUs":J
    :goto_5e
    goto :goto_42

    .line 206
    .restart local v14    # "midIndex":J
    .restart local v16    # "midTimeUs":J
    :cond_5f
    return-wide v14

    .line 209
    .end local v14    # "midIndex":J
    .end local v16    # "midTimeUs":J
    :cond_60
    cmp-long v7, v10, v1

    if-nez v7, :cond_66

    move-wide v7, v10

    goto :goto_67

    :cond_66
    move-wide v7, v12

    :goto_67
    return-wide v7
.end method

.method public final getSegmentTimeUs(J)J
    .registers 11
    .param p1, "sequenceNumber"    # J

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_15

    .line 231
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long v1, p1, v1

    long-to-int v2, v1

    .line 232
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->presentationTimeOffset:J

    sub-long/2addr v0, v2

    .local v0, "unscaledSegmentTime":J
    goto :goto_1d

    .line 235
    .end local v0    # "unscaledSegmentTime":J
    :cond_15
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    mul-long v0, v0, v2

    .line 237
    .restart local v0    # "unscaledSegmentTime":J
    :goto_1d
    const-wide/32 v4, 0xf4240

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    move-wide v2, v0

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public abstract getSegmentUrl(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
.end method

.method public isExplicit()Z
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
