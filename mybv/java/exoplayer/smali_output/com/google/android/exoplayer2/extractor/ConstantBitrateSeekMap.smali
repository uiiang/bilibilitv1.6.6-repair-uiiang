.class public Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;
.super Ljava/lang/Object;
.source "ConstantBitrateSeekMap.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final allowSeeksIfLengthUnknown:Z

.field private final bitrate:I

.field private final dataSize:J

.field private final durationUs:J

.field private final firstFrameBytePosition:J

.field private final frameSize:I

.field private final inputLength:J


# direct methods
.method public constructor <init>(JJII)V
    .registers 15
    .param p1, "inputLength"    # J
    .param p3, "firstFrameBytePosition"    # J
    .param p5, "bitrate"    # I
    .param p6, "frameSize"    # I

    .line 55
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    .line 61
    return-void
.end method

.method public constructor <init>(JJIIZ)V
    .registers 11
    .param p1, "inputLength"    # J
    .param p3, "firstFrameBytePosition"    # J
    .param p5, "bitrate"    # I
    .param p6, "frameSize"    # I
    .param p7, "allowSeeksIfLengthUnknown"    # Z

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->inputLength:J

    .line 81
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    .line 82
    const/4 v0, -0x1

    if-ne p6, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    move v0, p6

    :goto_d
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->frameSize:I

    .line 83
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->bitrate:I

    .line 84
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    .line 86
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_23

    .line 87
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->dataSize:J

    .line 88
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->durationUs:J

    goto :goto_2d

    .line 90
    :cond_23
    sub-long v0, p1, p3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->dataSize:J

    .line 91
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(JJI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->durationUs:J

    .line 93
    :goto_2d
    return-void
.end method

.method private getFramePositionForTimeUs(J)J
    .registers 11
    .param p1, "timeUs"    # J

    .line 156
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->bitrate:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0x7a1200

    div-long/2addr v0, v2

    .line 158
    .local v0, "positionOffset":J
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->frameSize:I

    int-to-long v3, v2

    div-long v3, v0, v3

    int-to-long v5, v2

    mul-long v3, v3, v5

    .line 159
    .end local v0    # "positionOffset":J
    .local v3, "positionOffset":J
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 v5, -0x1

    cmp-long v7, v0, v5

    if-eqz v7, :cond_1f

    .line 160
    int-to-long v5, v2

    sub-long/2addr v0, v5

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 162
    :cond_1f
    const-wide/16 v0, 0x0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 163
    .end local v3    # "positionOffset":J
    .restart local v0    # "positionOffset":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private static getTimeUsAtPosition(JJI)J
    .registers 9
    .param p0, "position"    # J
    .param p2, "firstFrameBytePosition"    # J
    .param p4, "bitrate"    # I

    .line 149
    const-wide/16 v0, 0x0

    sub-long v2, p0, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    int-to-long v2, p4

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 125
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 14
    .param p1, "timeUs"    # J

    .line 102
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    if-nez v0, :cond_1b

    .line 103
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v0

    .line 105
    :cond_1b
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->getFramePositionForTimeUs(J)J

    move-result-wide v0

    .line 106
    .local v0, "seekFramePosition":J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide v4

    .line 107
    .local v4, "seekTimeUs":J
    new-instance v6, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v6, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 111
    .local v6, "seekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->dataSize:J

    cmp-long v9, v7, v2

    if-eqz v9, :cond_4e

    cmp-long v2, v4, p1

    if-gez v2, :cond_4e

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->frameSize:I

    int-to-long v7, v2

    add-long/2addr v7, v0

    iget-wide v9, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->inputLength:J

    cmp-long v3, v7, v9

    if-ltz v3, :cond_3d

    goto :goto_4e

    .line 116
    :cond_3d
    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 117
    .local v2, "secondSeekPosition":J
    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide v7

    .line 118
    .local v7, "secondSeekTimeUs":J
    new-instance v9, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v9, v7, v8, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 119
    .local v9, "secondSeekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    new-instance v10, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v10, v6, v9}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v10

    .line 114
    .end local v2    # "secondSeekPosition":J
    .end local v7    # "secondSeekTimeUs":J
    .end local v9    # "secondSeekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    :cond_4e
    :goto_4e
    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v2, v6}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v2
.end method

.method public getTimeUsAtPosition(J)J
    .registers 6
    .param p1, "position"    # J

    .line 135
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->bitrate:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSeekable()Z
    .registers 6

    .line 97
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
