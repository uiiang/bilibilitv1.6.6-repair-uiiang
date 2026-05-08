.class final Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_SAMPLE_SIZE:I = 0x2000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method public static rechunk(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    .registers 28
    .param p0, "fixedSampleSize"    # I
    .param p1, "chunkOffsets"    # [J
    .param p2, "chunkSampleCounts"    # [I
    .param p3, "timestampDeltaInTimeUnits"    # J

    .line 77
    move-object/from16 v0, p2

    const/16 v1, 0x2000

    div-int v1, v1, p0

    .line 80
    .local v1, "maxSampleCount":I
    const/4 v2, 0x0

    .line 81
    .local v2, "rechunkedSampleCount":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_15

    aget v5, v0, v4

    .line 82
    .local v5, "chunkSampleCount":I
    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v6

    add-int/2addr v2, v6

    .line 81
    .end local v5    # "chunkSampleCount":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 85
    :cond_15
    new-array v3, v2, [J

    .line 86
    .local v3, "offsets":[J
    new-array v4, v2, [I

    .line 87
    .local v4, "sizes":[I
    const/4 v5, 0x0

    .line 88
    .local v5, "maximumSize":I
    new-array v14, v2, [J

    .line 89
    .local v14, "timestamps":[J
    new-array v15, v2, [I

    .line 91
    .local v15, "flags":[I
    const/4 v6, 0x0

    .line 92
    .local v6, "originalSampleIndex":I
    const/4 v7, 0x0

    .line 93
    .local v7, "newSampleIndex":I
    const/4 v8, 0x0

    move/from16 v16, v5

    move v13, v6

    move/from16 v17, v7

    .end local v5    # "maximumSize":I
    .end local v6    # "originalSampleIndex":I
    .end local v7    # "newSampleIndex":I
    .local v8, "chunkIndex":I
    .local v13, "originalSampleIndex":I
    .local v16, "maximumSize":I
    .local v17, "newSampleIndex":I
    :goto_26
    array-length v5, v0

    if-ge v8, v5, :cond_58

    .line 94
    aget v5, v0, v8

    .line 95
    .local v5, "chunkSamplesRemaining":I
    aget-wide v6, p1, v8

    move/from16 v9, v16

    .line 97
    .end local v16    # "maximumSize":I
    .local v6, "sampleOffset":J
    .local v9, "maximumSize":I
    :goto_2f
    if-lez v5, :cond_53

    .line 98
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 100
    .local v10, "bufferSampleCount":I
    aput-wide v6, v3, v17

    .line 101
    mul-int v11, p0, v10

    aput v11, v4, v17

    .line 102
    aget v11, v4, v17

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 103
    int-to-long v11, v13

    mul-long v11, v11, p3

    aput-wide v11, v14, v17

    .line 104
    const/4 v11, 0x1

    aput v11, v15, v17

    .line 106
    aget v11, v4, v17

    int-to-long v11, v11

    add-long/2addr v6, v11

    .line 107
    add-int/2addr v13, v10

    .line 109
    sub-int/2addr v5, v10

    .line 110
    nop

    .end local v10    # "bufferSampleCount":I
    add-int/lit8 v17, v17, 0x1

    .line 111
    goto :goto_2f

    .line 93
    .end local v5    # "chunkSamplesRemaining":I
    .end local v6    # "sampleOffset":J
    :cond_53
    add-int/lit8 v8, v8, 0x1

    move/from16 v16, v9

    goto :goto_26

    .line 113
    .end local v8    # "chunkIndex":I
    .end local v9    # "maximumSize":I
    .restart local v16    # "maximumSize":I
    :cond_58
    int-to-long v5, v13

    mul-long v18, p3, v5

    .line 115
    .local v18, "duration":J
    new-instance v20, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    const/16 v21, 0x0

    move-object/from16 v5, v20

    move-object v6, v3

    move-object v7, v4

    move/from16 v8, v16

    move-object v9, v14

    move-object v10, v15

    move-wide/from16 v11, v18

    move/from16 v22, v13

    .end local v13    # "originalSampleIndex":I
    .local v22, "originalSampleIndex":I
    move-object/from16 v13, v21

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[IJLcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$1;)V

    return-object v20
.end method
