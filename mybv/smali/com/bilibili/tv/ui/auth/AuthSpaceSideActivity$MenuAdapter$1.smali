.class Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;
.super Ljava/lang/Object;
.source "AuthSpaceSideActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;

.field final synthetic val$h:Lbl/agf;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$v;

.field final synthetic val$item:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;Lbl/agf;Landroid/support/v7/widget/RecyclerView$v;Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;

    iput-object p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->val$h:Lbl/agf;

    iput-object p3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$v;

    iput-object p4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->val$item:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 287
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->activityRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->access$400(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    .line 288
    if-nez p2, :cond_29

    .line 289
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 290
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->disabled:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 315
    :cond_1d
    :goto_1d
    return-void

    .line 292
    :cond_1e
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 293
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->val$h:Lbl/agf;

    iget-object v0, v0, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1d

    .line 296
    :cond_29
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 298
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$v;->f()I

    move-result v2

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->selectedPos:I
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->access$602(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;I)I

    .line 299
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->disabled:Z
    invoke-static {v1, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->access$502(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;Z)Z

    .line 300
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1$1;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 311
    instance-of v1, p1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v1, :cond_60

    .line 312
    check-cast p1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {p1}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->a()V

    .line 313
    :cond_60
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->val$h:Lbl/agf;

    iget-object v1, v1, Lbl/agf;->n:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 314
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->b(I)V

    goto :goto_1d
.end method
