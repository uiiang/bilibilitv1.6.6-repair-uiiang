.class Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "FavoriteMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkIcon:Landroid/widget/ImageView;

.field favoriteName:Landroid/widget/TextView;

.field itemLayout:Landroid/widget/LinearLayout;

.field itemView:Landroid/view/View;

.field final synthetic this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;->this$0:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    .line 100
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 101
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 102
    const v0, 0x7f0801c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f0801c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;->favoriteName:Landroid/widget/TextView;

    .line 104
    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    .line 105
    return-void
.end method
