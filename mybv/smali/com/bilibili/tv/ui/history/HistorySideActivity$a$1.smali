.class Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;
.super Ljava/lang/Object;
.source "HistorySideActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

.field final synthetic val$folder:Lbl/HistoryFolder;

.field final synthetic val$holder:Lbl/agf;

.field final synthetic val$vVar:Landroid/support/v7/widget/RecyclerView$v;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/HistorySideActivity$a;Landroid/support/v7/widget/RecyclerView$v;Lbl/agf;Lbl/HistoryFolder;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    iput-object p2, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iput-object p3, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->val$holder:Lbl/agf;

    iput-object p4, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->val$folder:Lbl/HistoryFolder;

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

    .line 271
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    # getter for: Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->a:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->access$100(Lcom/bilibili/tv/ui/history/HistorySideActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/history/HistorySideActivity;

    .line 272
    if-nez p2, :cond_2f

    .line 273
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 274
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    # getter for: Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->e:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->access$200(Lcom/bilibili/tv/ui/history/HistorySideActivity$a;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 310
    :cond_1f
    :goto_1f
    return-void

    .line 277
    :cond_20
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 278
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->val$holder:Lbl/agf;

    iget-object v0, v0, Lbl/agf;->n:Landroid/widget/TextView;

    .line 279
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1f

    .line 282
    :cond_2f
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 285
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$v;->f()I

    move-result v1

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    # getter for: Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->d:J
    invoke-static {v4}, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->access$300(Lcom/bilibili/tv/ui/history/HistorySideActivity$a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-gez v2, :cond_51

    .line 287
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 289
    :cond_51
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    # setter for: Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->c:I
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->access$402(Lcom/bilibili/tv/ui/history/HistorySideActivity$a;I)I

    .line 290
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->d:J
    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->access$302(Lcom/bilibili/tv/ui/history/HistorySideActivity$a;J)J

    .line 291
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    # setter for: Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->e:Z
    invoke-static {v1, v6}, Lcom/bilibili/tv/ui/history/HistorySideActivity$a;->access$202(Lcom/bilibili/tv/ui/history/HistorySideActivity$a;Z)Z

    .line 292
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setSelected(Z)V

    .line 293
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    instance-of v1, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v1, :cond_7c

    .line 294
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    check-cast v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->a()V

    .line 296
    :cond_7c
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->val$holder:Lbl/agf;

    iget-object v1, v1, Lbl/agf;->n:Landroid/widget/TextView;

    .line 297
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 298
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->b(I)V

    .line 299
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity$a;

    invoke-virtual {p1, v0, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;->val$vVar:Landroid/support/v7/widget/RecyclerView$v;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1$1;-><init>(Lcom/bilibili/tv/ui/history/HistorySideActivity$a$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1f
.end method
