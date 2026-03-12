.class Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$2;
.super Ljava/lang/Object;
.source "MainRecommendFragment.java"

# interfaces
.implements Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->setupBorderView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$2;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;III)V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$2;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->borderView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$600(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 838
    :cond_a
    :goto_a
    return-void

    .line 831
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$2;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isFirstFocus:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$700(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 832
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$2;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isFirstFocus:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$702(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)Z

    .line 833
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$2;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    # invokes: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->showBorderAt(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V
    invoke-static {v0, p1, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$800(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_a

    .line 837
    :cond_21
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$2;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    # invokes: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->animateBorderTo(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V
    invoke-static {v0, p1, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$900(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_a
.end method
