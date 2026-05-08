.class public abstract Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final excludeUntilTimes:[J

.field private final formats:[Lcom/google/android/exoplayer2/Format;

.field protected final group:Lcom/google/android/exoplayer2/source/TrackGroup;

.field private hashCode:I

.field protected final length:I

.field protected final tracks:[I

.field private final type:I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V
    .registers 4
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V
    .registers 7
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "type"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    array-length v0, p2

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 76
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->type:I

    .line 77
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 78
    array-length v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    .line 80
    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    array-length v1, p2

    if-ge v0, v1, :cond_2e

    .line 82
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    aget v2, p2, v0

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    aput-object v2, v1, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 85
    .end local v0    # "i":I
    :cond_2e
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 87
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    .line 88
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3f
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_52

    .line 89
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    aput v2, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 91
    .end local v0    # "i":I
    :cond_52
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->excludeUntilTimes:[J

    .line 92
    return-void
.end method

.method static synthetic lambda$new$0(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I
    .registers 4
    .param p0, "a"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "b"    # Lcom/google/android/exoplayer2/Format;

    .line 85
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public disable()V
    .registers 1

    .line 162
    return-void
.end method

.method public enable()V
    .registers 1

    .line 157
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 210
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 211
    return v0

    .line 213
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 216
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;

    .line 217
    .local v2, "other":Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v4, v2, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    iget-object v4, v2, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0

    .line 214
    .end local v2    # "other":Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
    :cond_28
    :goto_28
    return v1
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .registers 5
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 171
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public excludeTrack(IJ)Z
    .registers 19
    .param p1, "index"    # I
    .param p2, "exclusionDurationMs"    # J

    .line 176
    move-object v0, p0

    move/from16 v1, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 177
    .local v8, "nowMs":J
    invoke-virtual {p0, v1, v8, v9}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->isTrackExcluded(IJ)Z

    move-result v2

    .line 178
    .local v2, "canExclude":Z
    const/4 v3, 0x0

    move v10, v2

    .end local v2    # "canExclude":Z
    .local v3, "i":I
    .local v10, "canExclude":Z
    :goto_d
    iget v2, v0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    const/4 v4, 0x0

    const/4 v11, 0x1

    if-ge v3, v2, :cond_22

    if-nez v10, :cond_22

    .line 179
    if-eq v3, v1, :cond_1e

    invoke-virtual {p0, v3, v8, v9}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->isTrackExcluded(IJ)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v4, 0x1

    :cond_1e
    move v10, v4

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 181
    .end local v3    # "i":I
    :cond_22
    if-nez v10, :cond_25

    .line 182
    return v4

    .line 184
    :cond_25
    iget-object v12, v0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->excludeUntilTimes:[J

    aget-wide v13, v12, v1

    const-wide v6, 0x7fffffffffffffffL

    .line 187
    move-wide v2, v8

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->addWithOverflowDefault(JJJ)J

    move-result-wide v2

    .line 185
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    aput-wide v2, v12, v1

    .line 188
    return v11
.end method

.method public final getFormat(I)Lcom/google/android/exoplayer2/Format;
    .registers 3
    .param p1, "index"    # I

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getIndexInTrackGroup(I)I
    .registers 3
    .param p1, "index"    # I

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    aget v0, v0, p1

    return v0
.end method

.method public synthetic getLatestBitrateEstimate()J
    .registers 3

    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$-CC;->$default$getLatestBitrateEstimate(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSelectedFormat()Lcom/google/android/exoplayer2/Format;
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->getSelectedIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getSelectedIndexInTrackGroup()I
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->getSelectedIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public final getType()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->type:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 200
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    if-nez v0, :cond_15

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    .line 203
    :cond_15
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    return v0
.end method

.method public final indexOf(I)I
    .registers 4
    .param p1, "indexInTrackGroup"    # I

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_f

    .line 135
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    .line 136
    return v0

    .line 134
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    .end local v0    # "i":I
    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method public final indexOf(Lcom/google/android/exoplayer2/Format;)I
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_f

    .line 125
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    .line 126
    return v0

    .line 124
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    .end local v0    # "i":I
    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method public isTrackExcluded(IJ)Z
    .registers 7
    .param p1, "index"    # I
    .param p2, "nowMs"    # J

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->excludeUntilTimes:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final length()I
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    array-length v0, v0

    return v0
.end method

.method public synthetic onDiscontinuity()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$-CC;->$default$onDiscontinuity(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Z)V

    return-void
.end method

.method public onPlaybackSpeed(F)V
    .registers 2
    .param p1, "playbackSpeed"    # F

    .line 167
    return-void
.end method

.method public synthetic onRebuffer()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$-CC;->$default$onRebuffer(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    return-void
.end method

.method public synthetic shouldCancelChunkLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$-CC;->$default$shouldCancelChunkLoad(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p1

    return p1
.end method
