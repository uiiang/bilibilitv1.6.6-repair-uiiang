.class final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;
.super Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo<",
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final hasCaptionRoleFlags:Z

.field private final isDefault:Z

.field private final isForced:Z

.field private final isWithinRendererCapabilities:Z

.field private final preferredLanguageIndex:I

.field private final preferredLanguageScore:I

.field private final preferredRoleFlagsScore:I

.field private final selectedAudioLanguageScore:I

.field private final selectionEligibility:I


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/TrackGroup;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V
    .registers 21
    .param p1, "rendererIndex"    # I
    .param p2, "trackGroup"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p3, "trackIndex"    # I
    .param p4, "parameters"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p5, "trackFormatSupport"    # I
    .param p6, "selectedAudioLanguage"    # Ljava/lang/String;

    .line 3665
    move-object v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-direct/range {p0 .. p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;-><init>(ILcom/google/android/exoplayer2/source/TrackGroup;I)V

    .line 3666
    nop

    .line 3667
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    .line 3668
    iget-object v4, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v5, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->ignoredTextSelectionFlags:I

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    .line 3669
    .local v4, "maskedSelectionFlags":I
    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    goto :goto_21

    :cond_20
    const/4 v5, 0x0

    :goto_21
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    .line 3670
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_29

    const/4 v5, 0x1

    goto :goto_2a

    :cond_29
    const/4 v5, 0x0

    :goto_2a
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    .line 3671
    const v5, 0x7fffffff

    .line 3672
    .local v5, "bestLanguageIndex":I
    const/4 v7, 0x0

    .line 3676
    .local v7, "bestLanguageScore":I
    iget-object v8, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 3677
    const-string v8, ""

    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    goto :goto_41

    .line 3678
    :cond_3f
    iget-object v8, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    :goto_41
    nop

    .line 3679
    .local v8, "preferredLanguages":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_43
    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v10

    if-ge v9, v10, :cond_5f

    .line 3680
    iget-object v10, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    .line 3682
    invoke-virtual {v8, v9}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-boolean v12, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    .line 3681
    invoke-static {v10, v11, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I

    move-result v10

    .line 3683
    .local v10, "score":I
    if-lez v10, :cond_5c

    .line 3684
    move v5, v9

    .line 3685
    move v7, v10

    .line 3686
    goto :goto_5f

    .line 3679
    .end local v10    # "score":I
    :cond_5c
    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    .line 3689
    .end local v9    # "i":I
    :cond_5f
    :goto_5f
    iput v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    .line 3690
    iput v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    .line 3691
    iget-object v9, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget v9, v9, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v10, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextRoleFlags:I

    .line 3692
    # invokes: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getRoleFlagMatchScore(II)I
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$4000(II)I

    move-result v9

    iput v9, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    .line 3693
    iget-object v10, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget v10, v10, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v10, v10, 0x440

    if-eqz v10, :cond_79

    const/4 v10, 0x1

    goto :goto_7a

    :cond_79
    const/4 v10, 0x0

    :goto_7a
    iput-boolean v10, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    .line 3695
    nop

    .line 3696
    invoke-static/range {p6 .. p6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_85

    const/4 v10, 0x1

    goto :goto_86

    :cond_85
    const/4 v10, 0x0

    .line 3697
    .local v10, "selectedAudioLanguageUndetermined":Z
    :goto_86
    iget-object v11, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    .line 3698
    move-object/from16 v12, p6

    invoke-static {v11, v12, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I

    move-result v11

    iput v11, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    .line 3699
    if-gtz v7, :cond_a9

    iget-object v13, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 3701
    invoke-virtual {v13}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9c

    if-gtz v9, :cond_a9

    :cond_9c
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    if-nez v9, :cond_a9

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    if-eqz v9, :cond_a7

    if-lez v11, :cond_a7

    goto :goto_a9

    :cond_a7
    const/4 v9, 0x0

    goto :goto_aa

    :cond_a9
    :goto_a9
    const/4 v9, 0x1

    .line 3704
    .local v9, "isWithinConstraints":Z
    :goto_aa
    nop

    .line 3706
    iget-boolean v11, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    .line 3705
    invoke-static {v2, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_b7

    if-eqz v9, :cond_b7

    .line 3707
    const/4 v3, 0x1

    goto :goto_b8

    .line 3708
    :cond_b7
    nop

    :goto_b8
    iput v3, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->selectionEligibility:I

    .line 3709
    return-void
.end method

.method public static compareSelections(Ljava/util/List;Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;",
            ">;)I"
        }
    .end annotation

    .line 3751
    .local p0, "infos1":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;>;"
    .local p1, "infos2":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;)I

    move-result v0

    return v0
.end method

.method public static createForTrackGroup(ILcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[ILjava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .registers 15
    .param p0, "rendererIndex"    # I
    .param p1, "trackGroup"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p3, "formatSupport"    # [I
    .param p4, "selectedAudioLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            "[I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;",
            ">;"
        }
    .end annotation

    .line 3634
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 3635
    .local v0, "listBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_1c

    .line 3636
    new-instance v9, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;

    aget v7, p3, v1

    move-object v2, v9

    move v3, p0

    move-object v4, p1

    move v5, v1

    move-object v6, p2

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;-><init>(ILcom/google/android/exoplayer2/source/TrackGroup;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 3635
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3645
    .end local v1    # "i":I
    :cond_1c
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;)I
    .registers 6
    .param p1, "other"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;

    .line 3724
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    .line 3725
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    .line 3729
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    .line 3730
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3731
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    .line 3728
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    .line 3732
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    .line 3733
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    .line 3735
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    .line 3737
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    .line 3738
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 3742
    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    if-nez v3, :cond_51

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    goto :goto_59

    :cond_51
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    .line 3736
    :goto_59
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    .line 3743
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 3744
    .local v0, "chain":Lcom/google/common/collect/ComparisonChain;
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    if-nez v1, :cond_71

    .line 3745
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 3747
    :cond_71
    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 3625
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;)I

    move-result p1

    return p1
.end method

.method public getSelectionEligibility()I
    .registers 2

    .line 3713
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->selectionEligibility:I

    return v0
.end method

.method public isCompatibleForAdaptationWith(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;)Z
    .registers 3
    .param p1, "otherTrack"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;

    .line 3718
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isCompatibleForAdaptationWith(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .registers 2

    .line 3625
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->isCompatibleForAdaptationWith(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;)Z

    move-result p1

    return p1
.end method
