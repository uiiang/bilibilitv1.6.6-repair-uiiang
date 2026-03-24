.class public final Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "SearchResultContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScrollListener"
.end annotation


# instance fields
.field final layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

.field final synthetic this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    .line 186
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 191
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isLoading:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->access$000(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->hasMore:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->access$100(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 200
    :cond_13
    :goto_13
    return-void

    .line 194
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->p()I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->x()I

    move-result v1

    if-lez v1, :cond_13

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->H()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->H()I

    move-result v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->x()I

    move-result v1

    if-le v0, v1, :cond_13

    .line 198
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    # operator++ for: Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->currentPage:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->access$208(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;)I

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    # invokes: Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->loadData()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->access$300(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;)V

    goto :goto_13
.end method
