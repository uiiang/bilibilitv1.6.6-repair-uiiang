.class Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$4;
.super Ljava/lang/Object;
.source "TagFilterMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;

    iput-object p2, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 161
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3c

    .line 162
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 163
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    .line 164
    if-ltz v0, :cond_38

    iget-object v4, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->tagItems:Ljava/util/List;
    invoke-static {v4}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->access$100(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_38

    iget-object v4, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$4;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->tagItems:Ljava/util/List;
    invoke-static {v4}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->access$100(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;

    iget-boolean v0, v0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->isSelected:Z

    if-eqz v0, :cond_38

    .line 165
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 172
    :cond_37
    :goto_37
    return-void

    .line 161
    :cond_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 169
    :cond_3c
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_37

    .line 170
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_37
.end method
