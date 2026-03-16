.class public final Lbl/afi$h;
.super Lbl/vn;
.source "afi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/bilibili/tv/api/search/BiliSearchResultPgc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afi;


# direct methods
.method public constructor <init>(Lbl/afi;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lbl/afi$h;->this$0:Lbl/afi;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 587
    return-void
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/search/BiliSearchResultPgc;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 597
    iget-object v0, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->d:Lbl/afi$f;
    invoke-static {v0}, Lbl/afi;->access$400(Lbl/afi;)Lbl/afi$f;

    move-result-object v0

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-object v0, p0, Lbl/afi$h;->this$0:Lbl/afi;

    invoke-virtual {v0}, Lbl/afi;->isVisible()Z

    move-result v0

    if-nez v0, :cond_15

    .line 633
    :cond_14
    :goto_14
    return-void

    .line 600
    :cond_15
    iget-object v0, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # setter for: Lbl/afi;->q:Z
    invoke-static {v0, v3}, Lbl/afi;->access$002(Lbl/afi;Z)Z

    .line 601
    iget-object v0, p0, Lbl/afi$h;->this$0:Lbl/afi;

    invoke-virtual {v0}, Lbl/afi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 602
    instance-of v1, v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    if-nez v1, :cond_25

    .line 603
    const/4 v0, 0x0

    .line 605
    :cond_25
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    .line 606
    if-eqz v0, :cond_14

    .line 607
    invoke-virtual {p1}, Lcom/bilibili/tv/api/search/BiliSearchResultPgc;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 608
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->h()Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 609
    iget-object v1, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->o:I
    invoke-static {v1}, Lbl/afi;->access$500(Lbl/afi;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_50

    .line 610
    iget-object v1, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lbl/afi;->access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 611
    iget-object v1, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v1}, Lbl/afi;->access$900(Lbl/afi;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 613
    :cond_50
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->h()Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 614
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->j(I)Z

    .line 616
    :cond_61
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 618
    :cond_68
    iget-object v0, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # setter for: Lbl/afi;->p:Z
    invoke-static {v0, v3}, Lbl/afi;->access$302(Lbl/afi;Z)Z

    goto :goto_14

    .line 621
    :cond_6e
    iget-object v1, p1, Lcom/bilibili/tv/api/search/BiliSearchResultPgc;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_7d

    iget-object v1, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # setter for: Lbl/afi;->p:Z
    invoke-static {v1, v3}, Lbl/afi;->access$302(Lbl/afi;Z)Z

    .line 622
    :cond_7d
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchActivity;->a(Z)V

    .line 623
    iget-object v0, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lbl/afi;->access$900(Lbl/afi;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 624
    iget-object v0, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lbl/afi;->access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_9e

    .line 625
    iget-object v0, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lbl/afi;->access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 627
    :cond_9e
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultPgc;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 628
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultPgc;->items:Ljava/util/ArrayList;

    .line 629
    const-string v1, "response.items"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->d:Lbl/afi$f;
    invoke-static {v1}, Lbl/afi;->access$400(Lbl/afi;)Lbl/afi$f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbl/afi$f;->a(Ljava/util/List;)V

    goto/16 :goto_14
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 585
    check-cast p1, Lcom/bilibili/tv/api/search/BiliSearchResultPgc;

    invoke-virtual {p0, p1}, Lbl/afi$h;->a(Lcom/bilibili/tv/api/search/BiliSearchResultPgc;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->d:Lbl/afi$f;
    invoke-static {v0}, Lbl/afi;->access$400(Lbl/afi;)Lbl/afi$f;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 638
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->d:Lbl/afi$f;
    invoke-static {v0}, Lbl/afi;->access$400(Lbl/afi;)Lbl/afi$f;

    move-result-object v0

    if-nez v0, :cond_f

    .line 661
    :cond_e
    :goto_e
    return-void

    .line 642
    :cond_f
    iget-object v0, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # setter for: Lbl/afi;->q:Z
    invoke-static {v0, v3}, Lbl/afi;->access$002(Lbl/afi;Z)Z

    .line 643
    iget-object v0, p0, Lbl/afi$h;->this$0:Lbl/afi;

    invoke-virtual {v0}, Lbl/afi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 644
    instance-of v1, v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    if-nez v1, :cond_1f

    .line 645
    const/4 v0, 0x0

    .line 647
    :cond_1f
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    .line 648
    if-eqz v0, :cond_e

    .line 649
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->h()Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 650
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 651
    iget-object v1, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->o:I
    invoke-static {v1}, Lbl/afi;->access$500(Lbl/afi;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4c

    .line 652
    iget-object v1, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lbl/afi;->access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 653
    iget-object v1, p0, Lbl/afi$h;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v1}, Lbl/afi;->access$900(Lbl/afi;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    .line 655
    :cond_4c
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->h()Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 656
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->j(I)Z

    .line 659
    :cond_5d
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchActivity;->a(Z)V

    goto :goto_e
.end method
