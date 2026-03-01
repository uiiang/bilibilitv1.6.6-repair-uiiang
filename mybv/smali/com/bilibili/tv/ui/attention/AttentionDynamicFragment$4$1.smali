.class Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4$1;
.super Ljava/lang/Object;
.source "AttentionDynamicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4;->a(Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4$1;->this$1:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4;

    iput-object p2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4$1;->this$1:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4;

    iget-object v0, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_26

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_26

    .line 432
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_26

    .line 434
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 437
    :cond_26
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 438
    return-void
.end method
