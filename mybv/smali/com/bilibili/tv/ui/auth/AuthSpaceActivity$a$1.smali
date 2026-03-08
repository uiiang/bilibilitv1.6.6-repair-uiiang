.class Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;
.super Ljava/lang/Object;
.source "AuthSpaceActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;

.field final synthetic val$holder:Lbl/agf;

.field final synthetic val$item:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$MenuItem;

.field final synthetic val$vVar:Landroid/support/v7/widget/RecyclerView$v;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;Landroid/support/v7/widget/RecyclerView$v;Lbl/agf;Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$MenuItem;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;

    iput-object p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iput-object p3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->val$holder:Lbl/agf;

    iput-object p4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->val$item:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 462
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;->a:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;->access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    .line 463
    if-nez p2, :cond_2d

    .line 464
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 465
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;->e:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 495
    :cond_1c
    :goto_1c
    return-void

    .line 468
    :cond_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 469
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->val$holder:Lbl/agf;

    iget-object v0, v0, Lbl/agf;->n:Landroid/widget/TextView;

    .line 470
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1c

    .line 473
    :cond_2d
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 476
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$v;->f()I

    move-result v1

    .line 477
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;->c:I
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;->access$902(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;I)I

    .line 478
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;->d:J
    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;->access$1002(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;J)J

    .line 479
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 480
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1$1;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1$1;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 489
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    instance-of v1, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v1, :cond_74

    .line 490
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    check-cast v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->a()V

    .line 492
    :cond_74
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a$1;->val$holder:Lbl/agf;

    iget-object v1, v1, Lbl/agf;->n:Landroid/widget/TextView;

    .line 493
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 494
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->b(I)V

    goto :goto_1c
.end method
