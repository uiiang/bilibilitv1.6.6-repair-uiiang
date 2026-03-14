.class Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;
.super Ljava/lang/Object;
.source "WeeklyActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

.field final synthetic val$holder:Lbl/agf;

.field final synthetic val$vVar:Landroid/support/v7/widget/RecyclerView$v;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;Landroid/support/v7/widget/RecyclerView$v;Lbl/agf;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    iput-object p2, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iput-object p3, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->val$holder:Lbl/agf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v6, 0x1

    .line 255
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->a:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->access$300(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    .line 256
    if-nez p2, :cond_2f

    .line 257
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 258
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->e:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->access$400(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 281
    :cond_1e
    :goto_1e
    return-void

    .line 261
    :cond_1f
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 262
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->val$holder:Lbl/agf;

    iget-object v0, v0, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1e

    .line 265
    :cond_2f
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 268
    iget-object v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$v;->f()I

    move-result v1

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->d:J
    invoke-static {v4}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->access$500(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-gez v2, :cond_51

    .line 270
    iget-object v2, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 272
    :cond_51
    iget-object v2, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    # setter for: Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->c:I
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->access$602(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;I)I

    .line 273
    iget-object v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->d:J
    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->access$502(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;J)J

    .line 274
    iget-object v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 275
    iget-object v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    instance-of v1, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v1, :cond_77

    .line 276
    iget-object v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    check-cast v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->a()V

    .line 278
    :cond_77
    iget-object v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->val$holder:Lbl/agf;

    iget-object v1, v1, Lbl/agf;->n:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 279
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->b(I)V

    .line 280
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    invoke-virtual {p1, v0, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1e
.end method
