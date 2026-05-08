.class public final Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil;
.super Ljava/lang/Object;
.source "TrackSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Lcom/google/android/exoplayer2/Tracks;
    .registers 6
    .param p0, "mappedTrackInfo"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 156
    array-length v0, p1

    new-array v0, v0, [Ljava/util/List;

    .line 157
    .local v0, "listSelections":[Ljava/util/List;, "[Ljava/util/List<+Lcom/google/android/exoplayer2/trackselection/TrackSelection;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 158
    aget-object v2, p1, v1

    .line 159
    .local v2, "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    if-eqz v2, :cond_10

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_14

    :cond_10
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    :goto_14
    aput-object v3, v0, v1

    .line 157
    .end local v2    # "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 161
    .end local v1    # "i":I
    :cond_19
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil;->buildTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Lcom/google/android/exoplayer2/Tracks;

    move-result-object v1

    return-object v1
.end method

.method public static buildTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Lcom/google/android/exoplayer2/Tracks;
    .registers 18
    .param p0, "mappedTrackInfo"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            ">;)",
            "Lcom/google/android/exoplayer2/Tracks;"
        }
    .end annotation

    .line 176
    .local p1, "selections":[Ljava/util/List;, "[Ljava/util/List<+Lcom/google/android/exoplayer2/trackselection/TrackSelection;>;"
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 177
    .local v1, "trackGroups":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/Tracks$Group;>;"
    const/4 v2, 0x0

    .line 178
    .local v2, "rendererIndex":I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_76

    .line 180
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    .line 181
    .local v3, "trackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    aget-object v5, p1, v2

    .line 182
    .local v5, "rendererTrackSelections":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/trackselection/TrackSelection;>;"
    const/4 v6, 0x0

    .local v6, "groupIndex":I
    :goto_16
    iget v7, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v6, v7, :cond_73

    .line 183
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    .line 184
    .local v7, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    nop

    .line 185
    invoke-virtual {v0, v2, v6, v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result v8

    if-eqz v8, :cond_27

    const/4 v8, 0x1

    goto :goto_28

    :cond_27
    const/4 v8, 0x0

    .line 188
    .local v8, "adaptiveSupported":Z
    :goto_28
    iget v9, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v9, v9, [I

    .line 189
    .local v9, "trackSupport":[I
    iget v10, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v10, v10, [Z

    .line 190
    .local v10, "selected":[Z
    const/4 v11, 0x0

    .local v11, "trackIndex":I
    :goto_31
    iget v12, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v11, v12, :cond_67

    .line 191
    nop

    .line 192
    invoke-virtual {v0, v2, v6, v11}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v12

    aput v12, v9, v11

    .line 193
    const/4 v12, 0x0

    .line 194
    .local v12, "isTrackSelected":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_61

    .line 195
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 196
    .local v14, "trackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    invoke-interface {v14}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v15

    invoke-virtual {v15, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5d

    .line 197
    invoke-interface {v14, v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result v15

    const/4 v4, -0x1

    if-eq v15, v4, :cond_5d

    .line 198
    const/4 v12, 0x1

    .line 199
    goto :goto_61

    .line 194
    .end local v14    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_5d
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_3e

    .line 202
    .end local v13    # "i":I
    :cond_61
    :goto_61
    aput-boolean v12, v10, v11

    .line 190
    .end local v12    # "isTrackSelected":Z
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_31

    .line 204
    .end local v11    # "trackIndex":I
    :cond_67
    new-instance v4, Lcom/google/android/exoplayer2/Tracks$Group;

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/google/android/exoplayer2/Tracks$Group;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Z[I[Z)V

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 182
    .end local v7    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v8    # "adaptiveSupported":Z
    .end local v9    # "trackSupport":[I
    .end local v10    # "selected":[Z
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto :goto_16

    .line 179
    .end local v3    # "trackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .end local v5    # "rendererTrackSelections":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/trackselection/TrackSelection;>;"
    .end local v6    # "groupIndex":I
    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 207
    .end local v2    # "rendererIndex":I
    :cond_76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnmappedTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    .line 208
    .local v2, "unmappedTrackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    const/4 v3, 0x0

    .local v3, "groupIndex":I
    :goto_7b
    iget v4, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_9a

    .line 209
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 210
    .local v4, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    iget v5, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v5, v5, [I

    .line 211
    .local v5, "trackSupport":[I
    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 212
    iget v7, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v7, v7, [Z

    .line 213
    .local v7, "selected":[Z
    new-instance v8, Lcom/google/android/exoplayer2/Tracks$Group;

    invoke-direct {v8, v4, v6, v5, v7}, Lcom/google/android/exoplayer2/Tracks$Group;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Z[I[Z)V

    invoke-virtual {v1, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 208
    .end local v4    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v5    # "trackSupport":[I
    .end local v7    # "selected":[Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 216
    .end local v3    # "groupIndex":I
    :cond_9a
    new-instance v3, Lcom/google/android/exoplayer2/Tracks;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/Tracks;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public static createFallbackOptions(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;
    .registers 8
    .param p0, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 129
    .local v0, "nowMs":J
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v2

    .line 130
    .local v2, "numberOfTracks":I
    const/4 v3, 0x0

    .line 131
    .local v3, "numberOfExcludedTracks":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-ge v4, v2, :cond_17

    .line 132
    invoke-interface {p0, v4, v0, v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->isTrackExcluded(IJ)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 133
    add-int/lit8 v3, v3, 0x1

    .line 131
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 136
    .end local v4    # "i":I
    :cond_17
    new-instance v4, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5, v2, v3}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;-><init>(IIII)V

    return-object v4
.end method

.method public static createTrackSelectionsForDefinitions([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .registers 10
    .param p0, "definitions"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    .param p1, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;

    .line 71
    array-length v0, p0

    new-array v0, v0, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 72
    .local v0, "selections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    const/4 v1, 0x0

    .line 73
    .local v1, "createdAdaptiveTrackSelection":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_30

    .line 74
    aget-object v3, p0, v2

    .line 75
    .local v3, "definition":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    if-nez v3, :cond_d

    .line 76
    goto :goto_2d

    .line 78
    :cond_d
    iget-object v4, v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1d

    if-nez v1, :cond_1d

    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;->createAdaptiveTrackSelection(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_2d

    .line 82
    :cond_1d
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    iget-object v5, v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v6, v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget v7, v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;II)V

    aput-object v4, v0, v2

    .line 73
    .end local v3    # "definition":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 87
    .end local v2    # "i":I
    :cond_30
    return-object v0
.end method

.method public static updateParametersWithOverride(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILcom/google/android/exoplayer2/source/TrackGroupArray;ZLcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .registers 7
    .param p0, "parameters"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p1, "rendererIndex"    # I
    .param p2, "trackGroupArray"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "isDisabled"    # Z
    .param p4, "override"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    .line 107
    nop

    .line 109
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 112
    .local v0, "builder":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    if-eqz p4, :cond_12

    .line 113
    invoke-virtual {v0, p1, p2, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 115
    :cond_12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    return-object v1
.end method
