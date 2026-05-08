.class final Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;
.super Ljava/lang/Object;
.source "H263Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/H263Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation


# static fields
.field private static final OFFSET_VOP_CODING_TYPE:I = 0x1

.field private static final VOP_CODING_TYPE_INTRA:I


# instance fields
.field private lookingForVopCodingType:Z

.field private final output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private startCodeValue:I

.field private vopBytesRead:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 2
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 448
    return-void
.end method


# virtual methods
.method public onData([BII)V
    .registers 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 468
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    if-eqz v0, :cond_21

    .line 469
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    sub-int/2addr v0, v1

    .line 470
    .local v0, "headerOffset":I
    if-ge v0, p3, :cond_1c

    .line 471
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v1, v1, 0x6

    const/4 v2, 0x0

    if-nez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    .line 472
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    goto :goto_21

    .line 474
    :cond_1c
    sub-int v2, p3, p2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    .line 477
    .end local v0    # "headerOffset":I
    :cond_21
    :goto_21
    return-void
.end method

.method public onDataEnd(JIZ)V
    .registers 14
    .param p1, "position"    # J
    .param p3, "bytesWrittenPastPosition"    # I
    .param p4, "hasOutputFormat"    # Z

    .line 480
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_26

    if-eqz p4, :cond_26

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    if-eqz v0, :cond_26

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_26

    .line 484
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->samplePosition:J

    sub-long v0, p1, v0

    long-to-int v8, v0

    .line 485
    .local v8, "size":I
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    .line 486
    .local v4, "flags":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v7, 0x0

    move v5, v8

    move v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 491
    .end local v4    # "flags":I
    .end local v8    # "size":I
    :cond_26
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_2e

    .line 492
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->samplePosition:J

    .line 494
    :cond_2e
    return-void
.end method

.method public onStartCode(IJ)V
    .registers 8
    .param p1, "startCodeValue"    # I
    .param p2, "pesTimeUs"    # J

    .line 458
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    .line 460
    const/4 v1, 0x1

    const/16 v2, 0xb6

    if-eq p1, v2, :cond_11

    const/16 v3, 0xb3

    if-ne p1, v3, :cond_f

    goto :goto_11

    :cond_f
    const/4 v3, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v3, 0x1

    :goto_12
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    .line 462
    if-ne p1, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    .line 463
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    .line 464
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    .line 465
    return-void
.end method

.method public reset()V
    .registers 2

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    .line 452
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    .line 453
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    .line 455
    return-void
.end method
