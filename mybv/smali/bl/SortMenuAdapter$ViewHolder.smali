.class Lbl/SortMenuAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "SortMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/SortMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkIcon:Landroid/widget/ImageView;

.field groupTitle:Landroid/widget/TextView;

.field itemLayout:Landroid/widget/LinearLayout;

.field sortName:Landroid/widget/TextView;

.field final synthetic this$0:Lbl/SortMenuAdapter;


# direct methods
.method constructor <init>(Lbl/SortMenuAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 164
    iput-object p1, p0, Lbl/SortMenuAdapter$ViewHolder;->this$0:Lbl/SortMenuAdapter;

    .line 165
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 166
    const v0, 0x7f0801c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/SortMenuAdapter$ViewHolder;->groupTitle:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f0801c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbl/SortMenuAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    .line 168
    const v0, 0x7f0801c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbl/SortMenuAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f0801c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/SortMenuAdapter$ViewHolder;->sortName:Landroid/widget/TextView;

    .line 170
    return-void
.end method
