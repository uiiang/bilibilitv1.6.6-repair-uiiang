.class final Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;
.super Ljava/lang/Object;
.source "H263Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/H263Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CsdBuffer"
.end annotation


# static fields
.field private static final START_CODE:[B

.field private static final STATE_EXPECT_VIDEO_OBJECT_LAYER_START:I = 0x3

.field private static final STATE_EXPECT_VIDEO_OBJECT_START:I = 0x2

.field private static final STATE_EXPECT_VISUAL_OBJECT_START:I = 0x1

.field private static final STATE_SKIP_TO_VISUAL_OBJECT_SEQUENCE_START:I = 0x0

.field private static final STATE_WAIT_FOR_VOP_START:I = 0x4


# instance fields
.field public data:[B

.field private isFilling:Z

.field public length:I

.field private state:I

.field public volStartPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 321
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->START_CODE:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->data:[B

    .line 350
    return-void
.end method


# virtual methods
.method public onData([BII)V
    .registers 9
    .param p1, "newData"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 417
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    if-nez v0, :cond_5

    .line 418
    return-void

    .line 420
    :cond_5
    sub-int v0, p3, p2

    .line 421
    .local v0, "readLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->data:[B

    array-length v2, v1

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->length:I

    add-int v4, v3, v0

    if-ge v2, v4, :cond_19

    .line 422
    add-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->data:[B

    .line 424
    :cond_19
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->length:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->length:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->length:I

    .line 426
    return-void
.end method

.method public onStartCode(II)Z
    .registers 9
    .param p1, "startCodeValue"    # I
    .param p2, "bytesAlreadyPassed"    # I

    .line 369
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->state:I

    const/16 v1, 0xb5

    const-string v2, "Unexpected start code value"

    const-string v3, "H263Reader"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_62

    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 402
    :pswitch_13
    const/16 v0, 0xb3

    if-eq p1, v0, :cond_19

    if-ne p1, v1, :cond_5a

    .line 404
    :cond_19
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->length:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->length:I

    .line 405
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    .line 406
    return v4

    .line 393
    :pswitch_21
    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2e

    .line 394
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_5a

    .line 397
    :cond_2e
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->length:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->volStartPosition:I

    .line 398
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->state:I

    .line 400
    goto :goto_5a

    .line 385
    :pswitch_36
    const/16 v0, 0x1f

    if-le p1, v0, :cond_41

    .line 386
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_5a

    .line 389
    :cond_41
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->state:I

    .line 391
    goto :goto_5a

    .line 377
    :pswitch_45
    if-eq p1, v1, :cond_4e

    .line 378
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_5a

    .line 381
    :cond_4e
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->state:I

    .line 383
    goto :goto_5a

    .line 371
    :pswitch_52
    const/16 v0, 0xb0

    if-ne p1, v0, :cond_5a

    .line 372
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->state:I

    .line 373
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    .line 412
    :cond_5a
    :goto_5a
    sget-object v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->START_CODE:[B

    array-length v1, v0

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    .line 413
    return v5

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_52
        :pswitch_45
        :pswitch_36
        :pswitch_21
        :pswitch_13
    .end packed-switch
.end method

.method public reset()V
    .registers 2

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    .line 354
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->length:I

    .line 355
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->state:I

    .line 356
    return-void
.end method
