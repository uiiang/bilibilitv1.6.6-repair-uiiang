.class Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;
.super Ljava/lang/Object;
.source "AreaActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

.field final synthetic val$vVar:Landroid/support/v7/widget/RecyclerView$v;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;Landroid/support/v7/widget/RecyclerView$v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 476
    iput-object p1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->this$0:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    iput-object p2, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 479
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->this$0:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    # getter for: Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->activityRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->access$300(Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/area/AreaActivity;

    .line 480
    if-nez p2, :cond_25

    .line 481
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->this$0:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 482
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->this$0:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    # getter for: Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->isFocused:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->access$400(Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 509
    :cond_1c
    :goto_1c
    return-void

    .line 485
    :cond_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1c

    .line 489
    :cond_25
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/area/AreaActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1c

    # getter for: Lcom/bilibili/tv/ui/area/AreaActivity;->d:Lbl/adr;
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaActivity;->access$500(Lcom/bilibili/tv/ui/area/AreaActivity;)Lbl/adr;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 493
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$v;->f()I

    move-result v1

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->this$0:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    # getter for: Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->lastFocusTime:J
    invoke-static {v4}, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->access$600(Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4f

    .line 495
    iget-object v2, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->this$0:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 498
    :cond_4f
    iget-object v2, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->this$0:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    # setter for: Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->currentPosition:I
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->access$702(Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;I)I

    .line 499
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->this$0:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->lastFocusTime:J
    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->access$602(Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;J)J

    .line 500
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->this$0:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    # setter for: Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->isFocused:Z
    invoke-static {v1, v6}, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->access$402(Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;Z)Z

    .line 501
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 503
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    instance-of v1, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v1, :cond_7b

    .line 504
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    check-cast v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->a()V

    .line 507
    :cond_7b
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/area/AreaActivity;->b(I)V

    .line 508
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter$1;->this$0:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1c
.end method
