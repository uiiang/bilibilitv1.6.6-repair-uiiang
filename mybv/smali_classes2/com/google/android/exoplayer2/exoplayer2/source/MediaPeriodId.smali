.class public Lcom/google/android/exoplayer2/source/MediaPeriodId;
.super Ljava/lang/Object;
.source "MediaPeriodId.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final adGroupIndex:I

.field public final adIndexInAdGroup:I

.field public final nextAdGroupIndex:I

.field public final periodUid:Ljava/lang/Object;

.field public final windowSequenceNumber:J


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/source/MediaPeriodId;)V
    .registers 4
    .param p1, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaPeriodId;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 134
    iget v0, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iput v0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    .line 135
    iget v0, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    iput v0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    .line 136
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    .line 137
    iget v0, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    iput v0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "periodUid"    # Ljava/lang/Object;

    .line 73
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .registers 13
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "adGroupIndex"    # I
    .param p3, "adIndexInAdGroup"    # I
    .param p4, "windowSequenceNumber"    # J

    .line 122
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    .line 128
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;IIJI)V
    .registers 7
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "adGroupIndex"    # I
    .param p3, "adIndexInAdGroup"    # I
    .param p4, "windowSequenceNumber"    # J
    .param p6, "nextAdGroupIndex"    # I

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 147
    iput p2, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    .line 148
    iput p3, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    .line 149
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    .line 150
    iput p6, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .registers 11
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "windowSequenceNumber"    # J

    .line 84
    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .registers 12
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "windowSequenceNumber"    # J
    .param p4, "nextAdGroupIndex"    # I

    .line 102
    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    .line 108
    return-void
.end method


# virtual methods
.method public copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaPeriodId;
    .registers 10
    .param p1, "newPeriodUid"    # Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 156
    move-object v0, p0

    goto :goto_19

    .line 157
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;

    iget v3, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v4, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iget v7, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    .line 155
    :goto_19
    return-object v0
.end method

.method public copyWithWindowSequenceNumber(J)Lcom/google/android/exoplayer2/source/MediaPeriodId;
    .registers 13
    .param p1, "windowSequenceNumber"    # J

    .line 163
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_8

    .line 164
    move-object v0, p0

    goto :goto_17

    .line 165
    :cond_8
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v6, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    iget v9, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    move-object v3, v0

    move-wide v7, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    .line 163
    :goto_17
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 176
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 177
    return v0

    .line 179
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 180
    return v2

    .line 183
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;

    .line 184
    .local v1, "periodId":Lcom/google/android/exoplayer2/source/MediaPeriodId;
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget v3, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v4, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    iget v4, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    if-ne v3, v4, :cond_32

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_32

    iget v3, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    iget v4, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    if-ne v3, v4, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 193
    const/16 v0, 0x11

    .line 194
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 195
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    add-int/2addr v0, v2

    .line 196
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    add-int/2addr v1, v2

    .line 197
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 198
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    add-int/2addr v1, v2

    .line 199
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isAd()Z
    .registers 3

    .line 171
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
