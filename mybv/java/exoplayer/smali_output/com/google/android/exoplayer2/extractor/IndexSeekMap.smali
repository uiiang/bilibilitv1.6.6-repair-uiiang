.class public final Lcom/google/android/exoplayer2/extractor/IndexSeekMap;
.super Ljava/lang/Object;
.source "IndexSeekMap.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final durationUs:J

.field private final isSeekable:Z

.field private final positions:[J

.field private final timesUs:[J


# direct methods
.method public constructor <init>([J[JJ)V
    .registers 13
    .param p1, "positions"    # [J
    .param p2, "timesUs"    # [J
    .param p3, "durationUs"    # J

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 50
    array-length v0, p2

    .line 51
    .local v0, "length":I
    if-lez v0, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->isSeekable:Z

    .line 52
    if-eqz v1, :cond_34

    aget-wide v4, p2, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_34

    .line 54
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->positions:[J

    .line 55
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->timesUs:[J

    .line 56
    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    invoke-static {p2, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_38

    .line 59
    :cond_34
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->positions:[J

    .line 60
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->timesUs:[J

    .line 62
    :goto_38
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->durationUs:J

    .line 63
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 11
    .param p1, "timeUs"    # J

    .line 77
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->isSeekable:Z

    if-nez v0, :cond_c

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v0

    .line 80
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->timesUs:[J

    .line 81
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 82
    .local v0, "targetIndex":I
    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->timesUs:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->positions:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 83
    .local v2, "leftSeekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    iget-wide v3, v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_44

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->timesUs:[J

    array-length v3, v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_2d

    goto :goto_44

    .line 86
    :cond_2d
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->timesUs:[J

    add-int/lit8 v4, v0, 0x1

    aget-wide v4, v3, v4

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->positions:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v6, v3, v6

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 88
    .local v1, "rightSeekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    new-instance v3, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v3, v2, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v3

    .line 84
    .end local v1    # "rightSeekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    :cond_44
    :goto_44
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v1
.end method

.method public isSeekable()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->isSeekable:Z

    return v0
.end method
