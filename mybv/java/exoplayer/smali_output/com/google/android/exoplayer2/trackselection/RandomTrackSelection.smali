.class public final Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "RandomTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final random:Ljava/util/Random;

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/util/Random;)V
    .registers 6
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "type"    # I
    .param p4, "random"    # Ljava/util/Random;

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V

    .line 87
    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    .line 88
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->length:I

    invoke-virtual {p4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 89
    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .registers 2

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .registers 2

    .line 127
    const/4 v0, 0x3

    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
    .registers 15
    .param p1, "playbackPositionUs"    # J
    .param p3, "bufferedDurationUs"    # J
    .param p5, "availableDurationUs"    # J
    .param p8, "mediaChunkIterators"    # [Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 99
    .local p7, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 100
    .local v0, "nowMs":J
    const/4 v2, 0x0

    .line 101
    .local v2, "allowedFormatCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    iget v4, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-ge v3, v4, :cond_15

    .line 102
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->isTrackExcluded(IJ)Z

    move-result v4

    if-nez v4, :cond_12

    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 101
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 107
    .end local v3    # "i":I
    :cond_15
    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 108
    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-eq v2, v3, :cond_3a

    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_23
    iget v4, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-ge v3, v4, :cond_3a

    .line 112
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->isTrackExcluded(IJ)Z

    move-result v4

    if-nez v4, :cond_37

    iget v4, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "allowedFormatCount":I
    .local v5, "allowedFormatCount":I
    if-ne v4, v2, :cond_36

    .line 113
    iput v3, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 114
    return-void

    .line 112
    :cond_36
    move v2, v5

    .line 111
    .end local v5    # "allowedFormatCount":I
    .restart local v2    # "allowedFormatCount":I
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 118
    .end local v3    # "i":I
    :cond_3a
    return-void
.end method
