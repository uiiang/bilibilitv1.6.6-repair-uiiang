.class Lcom/google/android/exoplayer2/source/SampleDataQueue;
.super Ljava/lang/Object;
.source "SampleDataQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INITIAL_SCRATCH_SIZE:I = 0x20


# instance fields
.field private final allocationLength:I

.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

.field private readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private totalBytesWritten:J

.field private writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .registers 6
    .param p1, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 65
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/Allocator;->getIndividualAllocationLength()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    .line 66
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 67
    new-instance v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 68
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 69
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 70
    return-void
.end method

.method private clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;)V
    .registers 3
    .param p1, "fromNode"    # Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 220
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    if-nez v0, :cond_5

    .line 221
    return-void

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/Allocator;->release(Lcom/google/android/exoplayer2/upstream/Allocator$AllocationNode;)V

    .line 227
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->clear()Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 228
    return-void
.end method

.method private static getNodeContainingPosition(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .registers 6
    .param p0, "allocationNode"    # Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .param p1, "absolutePosition"    # J

    .line 463
    nop

    :goto_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_a

    .line 464
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_1

    .line 466
    :cond_a
    return-object p0
.end method

.method private postAppend(I)V
    .registers 7
    .param p1, "length"    # I

    .line 253
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 254
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 257
    :cond_14
    return-void
.end method

.method private preAppend(I)I
    .registers 8
    .param p1, "length"    # I

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    if-nez v0, :cond_1c

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 241
    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Allocator;->allocate()Lcom/google/android/exoplayer2/upstream/Allocation;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    iget v5, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    .line 240
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->initialize(Lcom/google/android/exoplayer2/upstream/Allocation;Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;)V

    .line 244
    :cond_1c
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private static readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .registers 11
    .param p0, "allocationNode"    # Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .param p1, "absolutePosition"    # J
    .param p3, "target"    # Ljava/nio/ByteBuffer;
    .param p4, "length"    # I

    .line 411
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->getNodeContainingPosition(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    .line 412
    move v0, p4

    .line 413
    .local v0, "remaining":I
    :goto_5
    if-lez v0, :cond_26

    .line 414
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 415
    .local v1, "toCopy":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 416
    .local v2, "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v4

    invoke-virtual {p3, v3, v4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 417
    sub-int/2addr v0, v1

    .line 418
    int-to-long v3, v1

    add-long/2addr p1, v3

    .line 419
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v5, p1, v3

    if-nez v5, :cond_25

    .line 420
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 422
    .end local v1    # "toCopy":I
    .end local v2    # "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    :cond_25
    goto :goto_5

    .line 423
    :cond_26
    return-object p0
.end method

.method private static readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J[BI)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .registers 11
    .param p0, "allocationNode"    # Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .param p1, "absolutePosition"    # J
    .param p3, "target"    # [B
    .param p4, "length"    # I

    .line 437
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->getNodeContainingPosition(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    .line 438
    move v0, p4

    .line 439
    .local v0, "remaining":I
    :goto_5
    if-lez v0, :cond_28

    .line 440
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 441
    .local v1, "toCopy":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 442
    .local v2, "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    .line 444
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v4

    sub-int v5, p4, v0

    .line 442
    invoke-static {v3, v4, p3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    sub-int/2addr v0, v1

    .line 449
    int-to-long v3, v1

    add-long/2addr p1, v3

    .line 450
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v5, p1, v3

    if-nez v5, :cond_27

    .line 451
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 453
    .end local v1    # "toCopy":I
    .end local v2    # "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    :cond_27
    goto :goto_5

    .line 454
    :cond_28
    return-object p0
.end method

.method private static readEncryptionData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .registers 27
    .param p0, "allocationNode"    # Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p2, "extrasHolder"    # Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;
    .param p3, "scratch"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 325
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 328
    .local v2, "offset":J
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    move-object/from16 v6, p0

    invoke-static {v6, v2, v3, v5, v4}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J[BI)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object v5

    .line 330
    .end local p0    # "allocationNode":Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .local v5, "allocationNode":Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 331
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    .line 332
    .local v6, "signalByte":B
    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_23

    goto :goto_24

    :cond_23
    const/4 v4, 0x0

    .line 333
    .local v4, "subsampleEncryption":Z
    :goto_24
    and-int/lit8 v8, v6, 0x7f

    .line 336
    .local v8, "ivSize":I
    move-object/from16 v9, p1

    iget-object v15, v9, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    .line 337
    .local v15, "cryptoInfo":Lcom/google/android/exoplayer2/decoder/CryptoInfo;
    iget-object v10, v15, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    if-nez v10, :cond_35

    .line 338
    const/16 v10, 0x10

    new-array v10, v10, [B

    iput-object v10, v15, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    goto :goto_3a

    .line 341
    :cond_35
    iget-object v10, v15, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    invoke-static {v10, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 343
    :goto_3a
    iget-object v10, v15, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    invoke-static {v5, v2, v3, v10, v8}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J[BI)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object v5

    .line 344
    int-to-long v10, v8

    add-long/2addr v2, v10

    .line 348
    if-eqz v4, :cond_59

    .line 349
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v11

    invoke-static {v5, v2, v3, v11, v10}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J[BI)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object v5

    .line 351
    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    .line 352
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    move v14, v10

    .local v10, "subsampleCount":I
    goto :goto_5b

    .line 354
    .end local v10    # "subsampleCount":I
    :cond_59
    const/4 v10, 0x1

    move v14, v10

    .line 358
    .local v14, "subsampleCount":I
    :goto_5b
    iget-object v10, v15, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    .line 359
    .local v10, "clearDataSizes":[I
    if-eqz v10, :cond_66

    array-length v11, v10

    if-ge v11, v14, :cond_63

    goto :goto_66

    :cond_63
    move-object/from16 v19, v10

    goto :goto_6a

    .line 360
    :cond_66
    :goto_66
    new-array v10, v14, [I

    move-object/from16 v19, v10

    .line 362
    .end local v10    # "clearDataSizes":[I
    .local v19, "clearDataSizes":[I
    :goto_6a
    iget-object v10, v15, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 363
    .local v10, "encryptedDataSizes":[I
    if-eqz v10, :cond_75

    array-length v11, v10

    if-ge v11, v14, :cond_72

    goto :goto_75

    :cond_72
    move-object/from16 v20, v10

    goto :goto_79

    .line 364
    :cond_75
    :goto_75
    new-array v10, v14, [I

    move-object/from16 v20, v10

    .line 366
    .end local v10    # "encryptedDataSizes":[I
    .local v20, "encryptedDataSizes":[I
    :goto_79
    if-eqz v4, :cond_a0

    .line 367
    mul-int/lit8 v10, v14, 0x6

    .line 368
    .local v10, "subsampleDataLength":I
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 369
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v11

    invoke-static {v5, v2, v3, v11, v10}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J[BI)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object v5

    .line 370
    int-to-long v11, v10

    add-long/2addr v2, v11

    .line 371
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 372
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8e
    if-ge v7, v14, :cond_9f

    .line 373
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    aput v11, v19, v7

    .line 374
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    aput v11, v20, v7

    .line 372
    add-int/lit8 v7, v7, 0x1

    goto :goto_8e

    .line 376
    .end local v7    # "i":I
    .end local v10    # "subsampleDataLength":I
    :cond_9f
    goto :goto_ac

    .line 377
    :cond_a0
    aput v7, v19, v7

    .line 378
    iget v10, v0, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    sub-long v11, v2, v11

    long-to-int v12, v11

    sub-int/2addr v10, v12

    aput v10, v20, v7

    .line 382
    :goto_ac
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 383
    .local v7, "cryptoData":Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    iget-object v13, v7, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object v12, v15, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    iget v11, v7, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v10, v7, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v1, v7, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    move/from16 v17, v10

    move-object v10, v15

    move/from16 v16, v11

    move v11, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v19

    move-object/from16 v21, v13

    move-object/from16 v13, v20

    move/from16 v22, v14

    .end local v14    # "subsampleCount":I
    .local v22, "subsampleCount":I
    move-object/from16 v14, v21

    move-object/from16 v21, v15

    .end local v15    # "cryptoInfo":Lcom/google/android/exoplayer2/decoder/CryptoInfo;
    .local v21, "cryptoInfo":Lcom/google/android/exoplayer2/decoder/CryptoInfo;
    move-object/from16 v15, v18

    move/from16 v18, v1

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->set(I[I[I[B[BIII)V

    .line 394
    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    sub-long v10, v2, v10

    long-to-int v1, v10

    .line 395
    .local v1, "bytesRead":I
    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    int-to-long v12, v1

    add-long/2addr v10, v12

    iput-wide v10, v0, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 396
    iget v10, v0, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v10, v1

    iput v10, v0, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 397
    return-object v5
.end method

.method private static readSampleData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .registers 10
    .param p0, "allocationNode"    # Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p2, "extrasHolder"    # Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;
    .param p3, "scratch"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 276
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 277
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readEncryptionData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    .line 280
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->hasSupplementalData()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 282
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 283
    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-static {p0, v1, v2, v3, v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J[BI)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    .line 284
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 285
    .local v1, "sampleSize":I
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 286
    iget v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v2, v0

    iput v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 289
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 290
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    .line 291
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 292
    iget v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 295
    iget v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->resetSupplementalData(I)V

    .line 296
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    iget v4, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 297
    invoke-static {p0, v2, v3, v0, v4}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    .line 298
    .end local v1    # "sampleSize":I
    goto :goto_63

    .line 300
    :cond_54
    iget v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 301
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object v2, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget v3, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 302
    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    .line 304
    :goto_63
    return-object p0
.end method


# virtual methods
.method public discardDownstreamTo(J)V
    .registers 8
    .param p1, "absolutePosition"    # J

    .line 161
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    .line 162
    return-void

    .line 164
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_21

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/Allocator;->release(Lcom/google/android/exoplayer2/upstream/Allocation;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->clear()Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_7

    .line 170
    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_31

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 175
    :cond_31
    return-void
.end method

.method public discardUpstreamSampleBytes(J)V
    .registers 10
    .param p1, "totalBytesWritten"    # J

    .line 91
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 92
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 93
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_58

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_1d

    goto :goto_58

    .line 101
    :cond_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 102
    .local v0, "lastNodeToKeep":Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    :goto_1f
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_2a

    .line 103
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_1f

    .line 106
    :cond_2a
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 107
    .local v1, "firstNodeToDiscard":Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;)V

    .line 109
    new-instance v2, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    iget v5, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 111
    nop

    .line 112
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4c

    .line 113
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_4d

    .line 114
    :cond_4c
    move-object v2, v0

    :goto_4d
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 115
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    if-ne v2, v1, :cond_6c

    .line 116
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_6c

    .line 95
    .end local v0    # "lastNodeToKeep":Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .end local v1    # "firstNodeToDiscard":Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;)V

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 97
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 98
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 119
    :cond_6c
    :goto_6c
    return-void
.end method

.method public getTotalBytesWritten()J
    .registers 3

    .line 180
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    return-wide v0
.end method

.method public peekToBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)V
    .registers 5
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p2, "extrasHolder"    # Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readSampleData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 152
    return-void
.end method

.method public readToBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)V
    .registers 5
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p2, "extrasHolder"    # Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readSampleData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 139
    return-void
.end method

.method public reset()V
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->reset(JI)V

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 79
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 80
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->trim()V

    .line 82
    return-void
.end method

.method public rewind()V
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 126
    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer2/upstream/DataReader;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->preAppend(I)I

    move-result p2

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 188
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v1

    .line 186
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/upstream/DataReader;->read([BII)I

    move-result v0

    .line 190
    .local v0, "bytesAppended":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    .line 191
    if-eqz p3, :cond_1c

    .line 192
    return v1

    .line 194
    :cond_1c
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 196
    :cond_22
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->postAppend(I)V

    .line 197
    return v0
.end method

.method public sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .registers 8
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "length"    # I

    .line 201
    nop

    :goto_1
    if-lez p2, :cond_1d

    .line 202
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->preAppend(I)I

    move-result v0

    .line 203
    .local v0, "bytesAppended":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 205
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v2

    .line 203
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 207
    sub-int/2addr p2, v0

    .line 208
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->postAppend(I)V

    .line 209
    .end local v0    # "bytesAppended":I
    goto :goto_1

    .line 210
    :cond_1d
    return-void
.end method
