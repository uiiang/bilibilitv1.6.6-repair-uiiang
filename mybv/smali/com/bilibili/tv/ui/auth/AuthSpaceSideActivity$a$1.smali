.class Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;
.super Ljava/lang/Object;
.source "AuthSpaceSideActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

.field final synthetic val$h:Lbl/agf;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$v;

.field final synthetic val$item:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;Lbl/agf;Landroid/support/v7/widget/RecyclerView$v;Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    iput-object p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;->val$h:Lbl/agf;

    iput-object p3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;->val$holder:Landroid/support/v7/widget/RecyclerView$v;

    iput-object p4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;->val$item:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 422
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->a:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    .line 423
    if-nez p2, :cond_29

    .line 424
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 425
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->e:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 451
    :cond_1d
    :goto_1d
    return-void

    .line 427
    :cond_1e
    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 428
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;->val$h:Lbl/agf;

    iget-object v0, v0, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1d

    .line 431
    :cond_29
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 433
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;->val$holder:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$v;->f()I

    move-result v2

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->c:I
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->access$902(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;I)I

    .line 434
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->d:J
    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->access$1002(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;J)J

    .line 435
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->e:Z
    invoke-static {v1, v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->access$802(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;Z)Z

    .line 436
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1$1;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 447
    instance-of v1, p1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v1, :cond_65

    .line 448
    check-cast p1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {p1}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->a()V

    .line 449
    :cond_65
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a$1;->val$h:Lbl/agf;

    iget-object v1, v1, Lbl/agf;->n:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 450
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->b(I)V

    goto :goto_1d
.end method
