.class public final Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
.super Ljava/lang/Object;
.source "TrackSelectorResult.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final info:Ljava/lang/Object;

.field public final length:I

.field public final rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

.field public final selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

.field public final tracks:Lcom/google/android/exoplayer2/Tracks;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Lcom/google/android/exoplayer2/Tracks;Ljava/lang/Object;)V
    .registers 6
    .param p1, "rendererConfigurations"    # [Lcom/google/android/exoplayer2/RendererConfiguration;
    .param p2, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p3, "tracks"    # Lcom/google/android/exoplayer2/Tracks;
    .param p4, "info"    # Ljava/lang/Object;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 85
    invoke-virtual {p2}, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 86
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->tracks:Lcom/google/android/exoplayer2/Tracks;

    .line 87
    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    .line 88
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->length:I

    .line 89
    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Ljava/lang/Object;)V
    .registers 5
    .param p1, "rendererConfigurations"    # [Lcom/google/android/exoplayer2/RendererConfiguration;
    .param p2, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p3, "info"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    sget-object v0, Lcom/google/android/exoplayer2/Tracks;->EMPTY:Lcom/google/android/exoplayer2/Tracks;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Lcom/google/android/exoplayer2/Tracks;Ljava/lang/Object;)V

    .line 68
    return-void
.end method


# virtual methods
.method public isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Z
    .registers 5
    .param p1, "other"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 104
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v1, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v2

    if-eq v1, v2, :cond_c

    goto :goto_1e

    .line 107
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v2

    if-ge v1, v2, :cond_1c

    .line 108
    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 109
    return v0

    .line 107
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 112
    .end local v1    # "i":I
    :cond_1c
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_1e
    :goto_1e
    return v0
.end method

.method public isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;I)Z
    .registers 6
    .param p1, "other"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .param p2, "index"    # I

    .line 127
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 128
    return v0

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v2, v2, p2

    .line 131
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    nop

    .line 130
    :goto_23
    return v0
.end method

.method public isRendererEnabled(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v0, v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
