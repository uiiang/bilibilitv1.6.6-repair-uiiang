.class public Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.super Landroid/widget/LinearLayout;
.source "TrackSelectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;,
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private allowAdaptiveSelections:Z

.field private allowMultipleOverrides:Z

.field private final componentListener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

.field private final defaultView:Landroid/widget/CheckedTextView;

.field private final disableView:Landroid/widget/CheckedTextView;

.field private final inflater:Landroid/view/LayoutInflater;

.field private isDisabled:Z

.field private listener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;

.field private final overrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;",
            ">;"
        }
    .end annotation
.end field

.field private final selectableItemBackgroundResourceId:I

.field private final trackGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Tracks$Group;",
            ">;"
        }
    .end annotation
.end field

.field private trackInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

.field private trackViews:[[Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setOrientation(I)V

    .line 124
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setSaveFromParentEnabled(Z)V

    .line 126
    nop

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    filled-new-array {v3}, [I

    move-result-object v3

    .line 129
    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 130
    .local v2, "attributeArray":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->selectableItemBackgroundResourceId:I

    .line 131
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    .line 134
    new-instance v5, Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Lcom/google/android/exoplayer2/ui/TrackSelectionView$1;)V

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->componentListener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

    .line 135
    new-instance v6, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;-><init>(Landroid/content/res/Resources;)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    .line 136
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    .line 137
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    .line 140
    nop

    .line 142
    const v6, 0x109000f

    invoke-virtual {v4, v6, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckedTextView;

    iput-object v7, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    .line 143
    invoke-virtual {v7, v3}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 144
    sget v8, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_none:I

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 145
    invoke-virtual {v7, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 146
    invoke-virtual {v7, v0}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 147
    invoke-virtual {v7, v5}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 149
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    .line 151
    sget v7, Lcom/google/android/exoplayer2/ui/R$layout;->exo_list_divider:I

    invoke-virtual {v4, v7, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    .line 153
    nop

    .line 155
    invoke-virtual {v4, v6, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    .line 156
    invoke-virtual {v4, v3}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 157
    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {v4, v3}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 158
    invoke-virtual {v4, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 159
    invoke-virtual {v4, v0}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 160
    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/TrackSelectionView;
    .param p1, "x1"    # Landroid/view/View;

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public static filterOverrides(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/Map;
    .registers 8
    .param p2, "allowMultipleOverrides"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Tracks$Group;",
            ">;Z)",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;",
            ">;"
        }
    .end annotation

    .line 78
    .local p0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;>;"
    .local p1, "trackGroups":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Tracks$Group;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v0, "filteredOverrides":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 80
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Tracks$Group;

    .line 81
    .local v2, "trackGroup":Lcom/google/android/exoplayer2/Tracks$Group;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Tracks$Group;->getMediaTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    .line 82
    .local v3, "override":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    if-eqz v3, :cond_2b

    if-nez p2, :cond_26

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 83
    :cond_26
    iget-object v4, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v2    # "trackGroup":Lcom/google/android/exoplayer2/Tracks$Group;
    .end local v3    # "override":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 86
    .end local v1    # "i":I
    :cond_2e
    return-object v0
.end method

.method static synthetic lambda$init$0(Ljava/util/Comparator;Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;)I
    .registers 5
    .param p0, "trackFormatComparator"    # Ljava/util/Comparator;
    .param p1, "o1"    # Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;
    .param p2, "o2"    # Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;

    .line 244
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;->getFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;->getFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_8

    .line 344
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->onDisableViewClicked()V

    goto :goto_13

    .line 345
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_10

    .line 346
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->onDefaultViewClicked()V

    goto :goto_13

    .line 348
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->onTrackViewClicked(Landroid/view/View;)V

    .line 350
    :goto_13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViewStates()V

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->listener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;

    if-eqz v0, :cond_25

    .line 352
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getIsDisabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getOverrides()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;->onTrackSelectionChanged(ZLjava/util/Map;)V

    .line 354
    :cond_25
    return-void
.end method

.method private onDefaultViewClicked()V
    .registers 2

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 364
    return-void
.end method

.method private onDisableViewClicked()V
    .registers 2

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 359
    return-void
.end method

.method private onTrackViewClicked(Landroid/view/View;)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;

    .line 369
    .local v1, "trackInfo":Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;->trackGroup:Lcom/google/android/exoplayer2/Tracks$Group;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Tracks$Group;->getMediaTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    .line 370
    .local v2, "mediaTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    iget v3, v1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;->trackIndex:I

    .line 371
    .local v3, "trackIndex":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    .line 372
    .local v4, "override":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    if-nez v4, :cond_43

    .line 374
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_30

    .line 376
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 378
    :cond_30
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    new-instance v5, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    .line 380
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Ljava/util/List;)V

    .line 378
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_aa

    .line 383
    :cond_43
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 384
    .local v5, "trackIndices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v6, p1

    check-cast v6, Landroid/widget/CheckedTextView;

    invoke-virtual {v6}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v6

    .line 385
    .local v6, "isCurrentlySelected":Z
    iget-object v7, v1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;->trackGroup:Lcom/google/android/exoplayer2/Tracks$Group;

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->shouldEnableAdaptiveSelection(Lcom/google/android/exoplayer2/Tracks$Group;)Z

    move-result v7

    .line 386
    .local v7, "isAdaptiveAllowed":Z
    if-nez v7, :cond_5f

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->shouldEnableMultiGroupSelection()Z

    move-result v8

    if-eqz v8, :cond_60

    :cond_5f
    const/4 v0, 0x1

    .line 387
    .local v0, "isUsingCheckBox":Z
    :cond_60
    if-eqz v6, :cond_82

    if-eqz v0, :cond_82

    .line 389
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 390
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_77

    .line 392
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_aa

    .line 394
    :cond_77
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    new-instance v9, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    invoke-direct {v9, v2, v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Ljava/util/List;)V

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_aa

    .line 396
    :cond_82
    if-nez v6, :cond_aa

    .line 397
    if-eqz v7, :cond_98

    .line 399
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    new-instance v9, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    invoke-direct {v9, v2, v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Ljava/util/List;)V

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_aa

    .line 403
    :cond_98
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    new-instance v9, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    .line 405
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Ljava/util/List;)V

    .line 403
    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .end local v0    # "isUsingCheckBox":Z
    .end local v5    # "trackIndices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "isCurrentlySelected":Z
    .end local v7    # "isAdaptiveAllowed":Z
    :cond_aa
    :goto_aa
    return-void
.end method

.method private shouldEnableAdaptiveSelection(Lcom/google/android/exoplayer2/Tracks$Group;)Z
    .registers 3
    .param p1, "trackGroup"    # Lcom/google/android/exoplayer2/Tracks$Group;

    .line 412
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks$Group;->isAdaptiveSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private shouldEnableMultiGroupSelection()Z
    .registers 3

    .line 416
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private updateViewStates()V
    .registers 9

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    array-length v1, v1

    if-ge v0, v1, :cond_6d

    .line 330
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Tracks$Group;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Tracks$Group;->getMediaTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    .line 331
    .local v1, "override":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_37
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    aget-object v4, v4, v0

    array-length v5, v4

    if-ge v3, v5, :cond_6a

    .line 332
    if-eqz v1, :cond_62

    .line 333
    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/widget/CheckedTextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;

    .line 334
    .local v4, "trackInfo":Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    iget-object v6, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    iget v7, v4, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;->trackIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 335
    .end local v4    # "trackInfo":Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;
    goto :goto_67

    .line 336
    :cond_62
    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 331
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 328
    .end local v1    # "override":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    .end local v3    # "j":I
    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 340
    .end local v0    # "i":I
    :cond_6d
    return-void
.end method

.method private updateViews()V
    .registers 13

    .line 268
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    const/4 v2, 0x3

    if-lt v0, v2, :cond_f

    .line 269
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->removeViewAt(I)V

    .line 268
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 272
    .end local v0    # "i":I
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 276
    return-void

    .line 278
    :cond_23
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    .line 283
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->shouldEnableMultiGroupSelection()Z

    move-result v0

    .line 284
    .local v0, "enableMultipleChoiceForMultipleOverrides":Z
    const/4 v3, 0x0

    .local v3, "trackGroupIndex":I
    :goto_3c
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d6

    .line 285
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/Tracks$Group;

    .line 286
    .local v4, "trackGroup":Lcom/google/android/exoplayer2/Tracks$Group;
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->shouldEnableAdaptiveSelection(Lcom/google/android/exoplayer2/Tracks$Group;)Z

    move-result v5

    .line 287
    .local v5, "enableMultipleChoiceForAdaptiveSelections":Z
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    iget v7, v4, Lcom/google/android/exoplayer2/Tracks$Group;->length:I

    new-array v7, v7, [Landroid/widget/CheckedTextView;

    aput-object v7, v6, v3

    .line 289
    iget v6, v4, Lcom/google/android/exoplayer2/Tracks$Group;->length:I

    new-array v6, v6, [Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;

    .line 290
    .local v6, "trackInfos":[Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;
    const/4 v7, 0x0

    .local v7, "trackIndex":I
    :goto_5d
    iget v8, v4, Lcom/google/android/exoplayer2/Tracks$Group;->length:I

    if-ge v7, v8, :cond_6b

    .line 291
    new-instance v8, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;

    invoke-direct {v8, v4, v7}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;-><init>(Lcom/google/android/exoplayer2/Tracks$Group;I)V

    aput-object v8, v6, v7

    .line 290
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 293
    .end local v7    # "trackIndex":I
    :cond_6b
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackInfoComparator:Ljava/util/Comparator;

    if-eqz v7, :cond_72

    .line 294
    invoke-static {v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 297
    :cond_72
    const/4 v7, 0x0

    .restart local v7    # "trackIndex":I
    :goto_73
    array-length v8, v6

    if-ge v7, v8, :cond_d2

    .line 298
    if-nez v7, :cond_83

    .line 299
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    sget v9, Lcom/google/android/exoplayer2/ui/R$layout;->exo_list_divider:I

    invoke-virtual {v8, v9, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    .line 302
    :cond_83
    if-nez v5, :cond_8c

    if-eqz v0, :cond_88

    goto :goto_8c

    .line 304
    :cond_88
    const v8, 0x109000f

    goto :goto_8f

    .line 303
    :cond_8c
    :goto_8c
    const v8, 0x1090010

    .line 304
    :goto_8f
    nop

    .line 305
    .local v8, "trackViewLayoutId":I
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    .line 306
    invoke-virtual {v9, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckedTextView;

    .line 307
    .local v9, "trackView":Landroid/widget/CheckedTextView;
    iget v10, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->selectableItemBackgroundResourceId:I

    invoke-virtual {v9, v10}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 308
    iget-object v10, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    aget-object v11, v6, v7

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;->getFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/google/android/exoplayer2/ui/TrackNameProvider;->getTrackName(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    aget-object v10, v6, v7

    invoke-virtual {v9, v10}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    .line 310
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/Tracks$Group;->isTrackSupported(I)Z

    move-result v10

    if-eqz v10, :cond_c0

    .line 311
    invoke-virtual {v9, v1}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 312
    iget-object v10, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->componentListener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

    invoke-virtual {v9, v10}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c6

    .line 314
    :cond_c0
    invoke-virtual {v9, v2}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 315
    invoke-virtual {v9, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 317
    :goto_c6
    iget-object v10, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    aget-object v10, v10, v3

    aput-object v9, v10, v7

    .line 318
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    .line 297
    .end local v8    # "trackViewLayoutId":I
    .end local v9    # "trackView":Landroid/widget/CheckedTextView;
    add-int/lit8 v7, v7, 0x1

    goto :goto_73

    .line 284
    .end local v4    # "trackGroup":Lcom/google/android/exoplayer2/Tracks$Group;
    .end local v5    # "enableMultipleChoiceForAdaptiveSelections":Z
    .end local v6    # "trackInfos":[Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;
    .end local v7    # "trackIndex":I
    :cond_d2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3c

    .line 322
    .end local v3    # "trackGroupIndex":I
    :cond_d6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViewStates()V

    .line 323
    return-void
.end method


# virtual methods
.method public getIsDisabled()Z
    .registers 2

    .line 256
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    return v0
.end method

.method public getOverrides()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    return-object v0
.end method

.method public init(Ljava/util/List;ZLjava/util/Map;Ljava/util/Comparator;Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;)V
    .registers 8
    .param p2, "isDisabled"    # Z
    .param p5, "listener"    # Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Tracks$Group;",
            ">;Z",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;",
            ">;",
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;",
            ")V"
        }
    .end annotation

    .line 240
    .local p1, "trackGroups":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Tracks$Group;>;"
    .local p3, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;>;"
    .local p4, "trackFormatComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/android/exoplayer2/Format;>;"
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    .line 241
    nop

    .line 242
    if-nez p4, :cond_7

    .line 243
    const/4 v0, 0x0

    goto :goto_c

    .line 244
    :cond_7
    new-instance v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;)V

    :goto_c
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackInfoComparator:Ljava/util/Comparator;

    .line 245
    iput-object p5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->listener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowMultipleOverrides:Z

    invoke-static {p3, p1, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->filterOverrides(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 251
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViews()V

    .line 252
    return-void
.end method

.method public setAllowAdaptiveSelections(Z)V
    .registers 3
    .param p1, "allowAdaptiveSelections"    # Z

    .line 174
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    if-eq v0, p1, :cond_9

    .line 175
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    .line 176
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViews()V

    .line 178
    :cond_9
    return-void
.end method

.method public setAllowMultipleOverrides(Z)V
    .registers 5
    .param p1, "allowMultipleOverrides"    # Z

    .line 187
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-eq v0, p1, :cond_27

    .line 188
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowMultipleOverrides:Z

    .line 189
    if-nez p1, :cond_24

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_24

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Ljava/util/List;

    .line 192
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->filterOverrides(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v0

    .line 193
    .local v0, "filteredOverrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 194
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 196
    .end local v0    # "filteredOverrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;>;"
    :cond_24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViews()V

    .line 198
    :cond_27
    return-void
.end method

.method public setShowDisableOption(Z)V
    .registers 4
    .param p1, "showDisableOption"    # Z

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 207
    return-void
.end method

.method public setTrackNameProvider(Lcom/google/android/exoplayer2/ui/TrackNameProvider;)V
    .registers 3
    .param p1, "trackNameProvider"    # Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    .line 216
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    .line 217
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViews()V

    .line 218
    return-void
.end method
