.class Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StyledPlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final iconIds:[Landroid/graphics/drawable/Drawable;

.field private final mainTexts:[Ljava/lang/String;

.field private final subTexts:[Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p2, "mainTexts"    # [Ljava/lang/String;
    .param p3, "iconIds"    # [Landroid/graphics/drawable/Drawable;

    .line 1752
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1753
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->mainTexts:[Ljava/lang/String;

    .line 1754
    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    .line 1755
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->iconIds:[Landroid/graphics/drawable/Drawable;

    .line 1756
    return-void
.end method

.method private shouldShowSetting(I)Z
    .registers 6
    .param p1, "position"    # I

    .line 1811
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1812
    return v1

    .line 1814
    :cond_a
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_3c

    .line 1821
    return v0

    .line 1816
    :pswitch_f
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 1817
    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    nop

    .line 1816
    :goto_2e
    return v1

    .line 1819
    :pswitch_2f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    return v0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 1798
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->mainTexts:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 1793
    int-to-long v0, p1

    return-wide v0
.end method

.method public hasSettingsToShow()Z
    .registers 4

    .line 1806
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->shouldShowSetting(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1807
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->shouldShowSetting(I)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    nop

    .line 1806
    :goto_12
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 1746
    check-cast p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->onBindViewHolder(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;I)V
    .registers 7
    .param p1, "holder"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;
    .param p2, "position"    # I

    .line 1768
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->shouldShowSetting(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1769
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1e

    .line 1773
    :cond_13
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1776
    :goto_1e
    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->mainTextView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->access$3600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->mainTexts:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1778
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    aget-object v0, v0, p2

    const/16 v1, 0x8

    if-nez v0, :cond_39

    .line 1779
    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->subTextView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->access$3700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_44

    .line 1781
    :cond_39
    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->subTextView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->access$3700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1784
    :goto_44
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->iconIds:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p2

    if-nez v0, :cond_52

    .line 1785
    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->iconView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->access$3800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5d

    .line 1787
    :cond_52
    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->iconView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->access$3800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->iconIds:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1789
    :goto_5d
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 1746
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 1760
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 1761
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$layout;->exo_styled_settings_list_item:I

    .line 1762
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1763
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;)V

    return-object v1
.end method

.method public setSubTextAtPosition(ILjava/lang/String;)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "subText"    # Ljava/lang/String;

    .line 1802
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 1803
    return-void
.end method
