.class public final Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "FavoriteVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field final b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    .line 173
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 178
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$100(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$200(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 187
    :cond_1b
    :goto_1b
    return-void

    .line 181
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->p()I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->x()I

    move-result v1

    if-lez v1, :cond_1b

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->H()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->H()I

    move-result v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->x()I

    move-result v1

    if-le v0, v1, :cond_1b

    .line 185
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # operator++ for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$408(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    .line 186
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->b()V

    goto :goto_1b
.end method
