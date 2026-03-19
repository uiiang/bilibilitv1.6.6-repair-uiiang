.class Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;
.super Ljava/lang/Object;
.source "AttentionDynamicSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->updateUperList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

.field final synthetic val$focusedPosition:I

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput p3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->val$focusedPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3b

    move v0, v1

    .line 349
    :goto_a
    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 350
    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 351
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v3

    .line 352
    iget v4, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->val$focusedPosition:I

    if-ne v3, v4, :cond_2f

    .line 353
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 355
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->b(Z)V

    .line 363
    :goto_2e
    return-void

    .line 349
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 360
    :cond_32
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 362
    :cond_3b
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->b(Z)V

    goto :goto_2e
.end method
