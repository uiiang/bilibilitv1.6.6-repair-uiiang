.class public Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SeekOperationParams"
.end annotation


# instance fields
.field private final approxBytesPerFrame:J

.field private ceilingBytePosition:J

.field private ceilingTimePosition:J

.field private floorBytePosition:J

.field private floorTimePosition:J

.field private nextSearchBytePosition:J

.field private final seekTimeUs:J

.field private final targetTimePosition:J


# direct methods
.method protected constructor <init>(JJJJJJJ)V
    .registers 30
    .param p1, "seekTimeUs"    # J
    .param p3, "targetTimePosition"    # J
    .param p5, "floorTimePosition"    # J
    .param p7, "ceilingTimePosition"    # J
    .param p9, "floorBytePosition"    # J
    .param p11, "ceilingBytePosition"    # J
    .param p13, "approxBytesPerFrame"    # J

    .line 325
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    .line 327
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    .line 328
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    .line 329
    move-wide/from16 v7, p7

    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    .line 330
    move-wide/from16 v9, p9

    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    .line 331
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    .line 332
    move-wide/from16 v13, p13

    iput-wide v13, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    .line 333
    nop

    .line 334
    invoke-static/range {p3 .. p14}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    .line 341
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getSeekTimeUs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getFloorBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getCeilingBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getNextSearchBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getTargetTimePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V
    .registers 5
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 276
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekCeiling(JJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V
    .registers 5
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 276
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekFloor(JJ)V

    return-void
.end method

.method protected static calculateNextSearchBytePosition(JJJJJJ)J
    .registers 29
    .param p0, "targetTimePosition"    # J
    .param p2, "floorTimePosition"    # J
    .param p4, "ceilingTimePosition"    # J
    .param p6, "floorBytePosition"    # J
    .param p8, "ceilingBytePosition"    # J
    .param p10, "approxBytesPerFrame"    # J

    .line 298
    const-wide/16 v0, 0x1

    add-long v2, p6, v0

    cmp-long v4, v2, p8

    if-gez v4, :cond_31

    add-long v2, p2, v0

    cmp-long v4, v2, p4

    if-ltz v4, :cond_f

    goto :goto_31

    .line 302
    :cond_f
    sub-long v6, p0, p2

    .line 303
    .local v6, "seekTimeDuration":J
    sub-long v2, p8, p6

    long-to-float v2, v2

    sub-long v3, p4, p2

    long-to-float v3, v3

    div-float v8, v2, v3

    .line 311
    .local v8, "estimatedBytesPerTimeUnit":F
    long-to-float v2, v6

    mul-float v2, v2, v8

    float-to-long v9, v2

    .line 312
    .local v9, "bytesToSkip":J
    const-wide/16 v2, 0x14

    div-long v11, v9, v2

    .line 313
    .local v11, "confidenceInterval":J
    add-long v2, p6, v9

    sub-long v13, v2, p10

    .line 314
    .local v13, "estimatedFramePosition":J
    sub-long v15, v13, v11

    .line 315
    .local v15, "estimatedPosition":J
    sub-long v4, p8, v0

    move-wide v0, v15

    move-wide/from16 v2, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 300
    .end local v6    # "seekTimeDuration":J
    .end local v8    # "estimatedBytesPerTimeUnit":F
    .end local v9    # "bytesToSkip":J
    .end local v11    # "confidenceInterval":J
    .end local v13    # "estimatedFramePosition":J
    .end local v15    # "estimatedPosition":J
    :cond_31
    :goto_31
    return-wide p6
.end method

.method private getCeilingBytePosition()J
    .registers 3

    .line 356
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    return-wide v0
.end method

.method private getFloorBytePosition()J
    .registers 3

    .line 348
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    return-wide v0
.end method

.method private getNextSearchBytePosition()J
    .registers 3

    .line 385
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-wide v0
.end method

.method private getSeekTimeUs()J
    .registers 3

    .line 366
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    return-wide v0
.end method

.method private getTargetTimePosition()J
    .registers 3

    .line 361
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    return-wide v0
.end method

.method private updateNextSearchBytePosition()V
    .registers 13

    .line 389
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iget-wide v10, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    .line 390
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    .line 397
    return-void
.end method

.method private updateSeekCeiling(JJ)V
    .registers 5
    .param p1, "ceilingTimePosition"    # J
    .param p3, "ceilingBytePosition"    # J

    .line 378
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    .line 379
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    .line 380
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->updateNextSearchBytePosition()V

    .line 381
    return-void
.end method

.method private updateSeekFloor(JJ)V
    .registers 5
    .param p1, "floorTimePosition"    # J
    .param p3, "floorBytePosition"    # J

    .line 371
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    .line 372
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    .line 373
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->updateNextSearchBytePosition()V

    .line 374
    return-void
.end method
