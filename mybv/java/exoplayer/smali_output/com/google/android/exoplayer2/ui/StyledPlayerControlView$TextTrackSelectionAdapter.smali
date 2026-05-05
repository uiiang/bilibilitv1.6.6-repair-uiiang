.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;
.super Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;
.source "StyledPlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextTrackSelectionAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 2

    .line 1926
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;

    .line 1926
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    return-void
.end method


# virtual methods
.method public init(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;",
            ">;)V"
        }
    .end annotation

    .line 1929
    .local p1, "trackInformations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;>;"
    const/4 v0, 0x0

    .line 1930
    .local v0, "subtitleIsOn":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 1931
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1932
    const/4 v0, 0x1

    .line 1933
    goto :goto_19

    .line 1930
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1937
    .end local v1    # "i":I
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$3400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 1938
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$3400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    .line 1939
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_30

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$4200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_34

    :cond_30
    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$4300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1938
    :goto_34
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1940
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$3400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    .line 1941
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_46

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOnContentDescription:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$4400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4a

    :cond_46
    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOffContentDescription:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$4500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/String;

    move-result-object v2

    .line 1940
    :goto_4a
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1943
    :cond_4d
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->tracks:Ljava/util/List;

    .line 1944
    return-void
.end method

.method synthetic lambda$onBindViewHolderAtZeroPosition$0$com-google-android-exoplayer2-ui-StyledPlayerControlView$TextTrackSelectionAdapter(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 1960
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 1961
    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1962
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 1963
    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v0

    .line 1964
    .local v0, "trackSelectionParameters":Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    .line 1966
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v2

    .line 1967
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v2

    .line 1968
    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setIgnoredTextSelectionFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v2

    .line 1969
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v2

    .line 1964
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/Player;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 1970
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$4100(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1972
    .end local v0    # "trackSelectionParameters":Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    :cond_44
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 1926
    check-cast p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->onBindViewHolder(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;
    .param p2, "position"    # I

    .line 1977
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->onBindViewHolder(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;I)V

    .line 1978
    if-lez p2, :cond_1d

    .line 1979
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->tracks:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;

    .line 1980
    .local v0, "track":Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;
    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    goto :goto_1a

    :cond_19
    const/4 v2, 0x4

    :goto_1a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1982
    .end local v0    # "track":Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;
    :cond_1d
    return-void
.end method

.method public onBindViewHolderAtZeroPosition(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;)V
    .registers 5
    .param p1, "holder"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;

    .line 1949
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_none:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1950
    const/4 v0, 0x1

    .line 1951
    .local v0, "isTrackSelectionOff":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1952
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1953
    const/4 v0, 0x0

    .line 1954
    goto :goto_24

    .line 1951
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1957
    .end local v1    # "i":I
    :cond_24
    :goto_24
    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    if-eqz v0, :cond_2a

    const/4 v2, 0x0

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x4

    :goto_2b
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1958
    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1973
    return-void
.end method

.method public onTrackSelection(Ljava/lang/String;)V
    .registers 2
    .param p1, "subtext"    # Ljava/lang/String;

    .line 1987
    return-void
.end method
