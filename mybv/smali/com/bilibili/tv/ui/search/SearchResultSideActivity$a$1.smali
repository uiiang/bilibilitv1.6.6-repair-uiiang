.class Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;
.super Ljava/lang/Object;
.source "SearchResultSideActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

.field final synthetic val$folder:Lbl/SearchFolder;

.field final synthetic val$holder:Lbl/agf;

.field final synthetic val$vVar:Landroid/support/v7/widget/RecyclerView$v;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;Landroid/support/v7/widget/RecyclerView$v;Lbl/agf;Lbl/SearchFolder;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iput-object p3, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->val$holder:Lbl/agf;

    iput-object p4, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->val$folder:Lbl/SearchFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 408
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->a:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->access$200(Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    .line 409
    if-nez p2, :cond_2f

    .line 410
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 411
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->e:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->access$300(Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 447
    :cond_1f
    :goto_1f
    return-void

    .line 414
    :cond_20
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 415
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->val$holder:Lbl/agf;

    iget-object v0, v0, Lbl/agf;->n:Landroid/widget/TextView;

    .line 416
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1f

    .line 419
    :cond_2f
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 422
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$v;->f()I

    move-result v1

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->d:J
    invoke-static {v4}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->access$400(Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-gez v2, :cond_51

    .line 424
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 426
    :cond_51
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    # setter for: Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->c:I
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->access$502(Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;I)I

    .line 427
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->d:J
    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->access$402(Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;J)J

    .line 428
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    # setter for: Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->e:Z
    invoke-static {v1, v6}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->access$302(Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;Z)Z

    .line 429
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setSelected(Z)V

    .line 430
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    instance-of v1, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v1, :cond_7c

    .line 431
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    check-cast v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->a()V

    .line 433
    :cond_7c
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->val$holder:Lbl/agf;

    iget-object v1, v1, Lbl/agf;->n:Landroid/widget/TextView;

    .line 434
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 435
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->b(I)V

    .line 436
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {p1, v0, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1$1;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1f
.end method
