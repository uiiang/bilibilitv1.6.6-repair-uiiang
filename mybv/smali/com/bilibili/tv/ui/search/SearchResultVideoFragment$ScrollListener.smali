.class public final Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "SearchResultVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 202
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$000(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$100(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$200(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 210
    :cond_1b
    :goto_1b
    return-void

    .line 205
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$300(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->p()I

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;
    invoke-static {v1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$300(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->x()I

    move-result v1

    if-lez v1, :cond_1b

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;
    invoke-static {v1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$300(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->H()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$300(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->H()I

    move-result v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;
    invoke-static {v1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$300(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->x()I

    move-result v1

    if-le v0, v1, :cond_1b

    .line 209
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # invokes: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$400(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    goto :goto_1b
.end method
