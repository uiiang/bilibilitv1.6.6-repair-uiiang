.class public Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ScrollListener;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "BaseVideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;


# direct methods
.method protected constructor <init>(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .prologue
    .line 281
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 282
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iget-boolean v0, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->isLoadingMore:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iget-boolean v0, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->hasMoreData:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-nez v0, :cond_16

    .line 299
    :cond_15
    :goto_15
    return-void

    .line 285
    :cond_16
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 286
    if-eqz v0, :cond_15

    .line 289
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->p()I

    move-result v1

    .line 290
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->x()I

    move-result v2

    if-lez v2, :cond_15

    .line 291
    add-int/lit8 v1, v1, 0x14

    .line 292
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->H()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_15

    .line 293
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->H()I

    move-result v1

    .line 294
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->x()I

    move-result v0

    if-le v1, v0, :cond_15

    .line 295
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ScrollListener;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->fetchData(Z)V

    goto :goto_15
.end method
