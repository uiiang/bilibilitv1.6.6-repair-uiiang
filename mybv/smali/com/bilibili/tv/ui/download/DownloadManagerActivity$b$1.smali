.class Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

.field final synthetic val$cVar:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;ILcom/bilibili/tv/ui/download/DownloadManagerActivity$c;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    iput p2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$i:I

    iput-object p3, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$cVar:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 498
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->access$500(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    .line 500
    if-nez p2, :cond_5a

    .line 502
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 504
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->d:Z
    invoke-static {v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->access$600(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 567
    :cond_24
    :goto_24
    return-void

    .line 509
    :cond_25
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_47

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$i:I

    .line 510
    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$300(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)I

    move-result v0

    if-ne v1, v0, :cond_47

    .line 511
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$cVar:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_24

    .line 512
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$cVar:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;->a:Landroid/view/View;

    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    goto :goto_24

    .line 516
    :cond_47
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$cVar:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 517
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$cVar:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;->z()Landroid/widget/TextView;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_24

    .line 519
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_24

    .line 524
    :cond_5a
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_24

    .line 528
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b(Z)V

    .line 530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->g:J
    invoke-static {v2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->access$700(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-gez v0, :cond_7b

    .line 531
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 533
    :cond_7b
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$i:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->e(I)V

    .line 534
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->g:J
    invoke-static {v0, v2, v3}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->access$702(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;J)J

    .line 535
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$cVar:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 537
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$cVar:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;->a:Landroid/view/View;

    .line 538
    if-nez v0, :cond_a0

    .line 539
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.widget.side.SideLeftSelectLinearLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_a0
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->a()V

    .line 543
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$cVar:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;->z()Landroid/widget/TextView;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_b1

    .line 545
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 548
    :cond_b1
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {p1, v0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 550
    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$i:I

    .line 551
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$cVar:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    iget-object v1, v1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;->a:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1$1;-><init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_24
.end method
