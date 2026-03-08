.class Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;
.super Ljava/lang/Object;
.source "FavoriteSideActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

.field final synthetic val$folder:Lbl/FavoriteFolder;

.field final synthetic val$holder:Lbl/agf;

.field final synthetic val$vVar:Landroid/support/v7/widget/RecyclerView$v;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;Landroid/support/v7/widget/RecyclerView$v;Lbl/agf;Lbl/FavoriteFolder;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iput-object p3, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->val$holder:Lbl/agf;

    iput-object p4, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->val$folder:Lbl/FavoriteFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v6, 0x1

    .line 490
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->a:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->access$700(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    .line 491
    if-nez p2, :cond_2f

    .line 493
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 494
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->e:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->access$800(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 532
    :cond_1e
    :goto_1e
    return-void

    .line 497
    :cond_1f
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 499
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->val$holder:Lbl/agf;

    iget-object v0, v0, Lbl/agf;->n:Landroid/widget/TextView;

    .line 500
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1e

    .line 503
    :cond_2f
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 506
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$v;->f()I

    move-result v1

    .line 507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->d:J
    invoke-static {v4}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->access$900(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-gez v2, :cond_51

    .line 508
    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 510
    :cond_51
    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->c:I
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->access$1002(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;I)I

    .line 511
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->d:J
    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->access$902(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;J)J

    .line 512
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 513
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    instance-of v1, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v1, :cond_77

    .line 514
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    check-cast v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->a()V

    .line 517
    :cond_77
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->val$holder:Lbl/agf;

    iget-object v1, v1, Lbl/agf;->n:Landroid/widget/TextView;

    .line 518
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 519
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->b(I)V

    .line 521
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {p1, v0, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 522
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1$1;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1e
.end method
