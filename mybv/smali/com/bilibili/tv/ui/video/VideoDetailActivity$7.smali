.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 483
    if-eqz p2, :cond_38

    .line 484
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 485
    if-eqz v1, :cond_1e

    .line 486
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 487
    const v2, 0x7f080192

    if-eq v1, v2, :cond_19

    const v2, 0x7f080195

    if-ne v1, v2, :cond_1e

    .line 489
    :cond_19
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$702(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    .line 493
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I

    move-result v2

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->restoreFocusPosition(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_35

    .line 495
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 506
    :cond_35
    :goto_35
    return-void

    .line 498
    :cond_36
    add-int/lit8 v0, v0, 0x1

    :cond_38
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 499
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 500
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 501
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$702(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    goto :goto_35
.end method
