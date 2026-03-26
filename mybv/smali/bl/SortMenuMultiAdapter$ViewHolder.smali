.class Lbl/SortMenuMultiAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "SortMenuMultiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/SortMenuMultiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkIcon:Landroid/widget/ImageView;

.field groupTitle:Landroid/widget/TextView;

.field itemLayout:Landroid/widget/LinearLayout;

.field itemView:Landroid/view/View;

.field sortName:Landroid/widget/TextView;

.field final synthetic this$0:Lbl/SortMenuMultiAdapter;


# direct methods
.method constructor <init>(Lbl/SortMenuMultiAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lbl/SortMenuMultiAdapter$ViewHolder;->this$0:Lbl/SortMenuMultiAdapter;

    .line 140
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 141
    iput-object p2, p0, Lbl/SortMenuMultiAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 142
    const v0, 0x7f0801c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/SortMenuMultiAdapter$ViewHolder;->groupTitle:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0801c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbl/SortMenuMultiAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    .line 144
    const v0, 0x7f0801c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/SortMenuMultiAdapter$ViewHolder;->sortName:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0801c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbl/SortMenuMultiAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    .line 146
    return-void
.end method
