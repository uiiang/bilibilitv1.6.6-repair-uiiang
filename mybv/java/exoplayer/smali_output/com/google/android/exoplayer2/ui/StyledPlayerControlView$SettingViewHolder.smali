.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StyledPlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingViewHolder"
.end annotation


# instance fields
.field private final iconView:Landroid/widget/ImageView;

.field private final mainTextView:Landroid/widget/TextView;

.field private final subTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;)V
    .registers 4
    .param p2, "itemView"    # Landroid/view/View;

    .line 1832
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 1833
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1834
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_f

    .line 1836
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 1838
    :cond_f
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_main_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->mainTextView:Landroid/widget/TextView;

    .line 1839
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_sub_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->subTextView:Landroid/widget/TextView;

    .line 1840
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->iconView:Landroid/widget/ImageView;

    .line 1841
    new-instance p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1842
    return-void
.end method

.method static synthetic access$3600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;

    .line 1826
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->mainTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;

    .line 1826
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->subTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;

    .line 1826
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method synthetic lambda$new$0$com-google-android-exoplayer2-ui-StyledPlayerControlView$SettingViewHolder(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 1841
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;->getAdapterPosition()I

    move-result v1

    # invokes: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->onSettingViewClicked(I)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$3900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;I)V

    return-void
.end method
