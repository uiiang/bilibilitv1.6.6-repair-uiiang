.class Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "SortMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkIcon:Landroid/widget/ImageView;

.field itemLayout:Landroid/widget/LinearLayout;

.field itemView:Landroid/view/View;

.field sortName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 96
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;->this$0:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;

    .line 97
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 98
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 99
    const v0, 0x7f0801c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f0801c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;->sortName:Landroid/widget/TextView;

    .line 101
    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    .line 102
    return-void
.end method
