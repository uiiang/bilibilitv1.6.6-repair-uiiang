.class public final Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$g;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "MainRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$g;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 141
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$g;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$000(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$g;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->hasMoreData:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$100(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$g;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 158
    :cond_1b
    :goto_1b
    return-void

    .line 144
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$g;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$300(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_1b

    .line 148
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->p()I

    move-result v1

    .line 149
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->x()I

    move-result v2

    if-lez v2, :cond_1b

    .line 150
    add-int/lit8 v1, v1, 0x14

    .line 151
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->H()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1b

    .line 152
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->H()I

    move-result v1

    .line 153
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->x()I

    move-result v0

    if-le v1, v0, :cond_1b

    .line 154
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$g;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->loadMoreData()V

    goto :goto_1b
.end method
