.class public final Lbl/afi$g;
.super Lbl/vn;
.source "afi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/afi$g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/bilibili/tv/api/search/BiliSearchResultAllNew;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afi;


# direct methods
.method public constructor <init>(Lbl/afi;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lbl/afi$g;->this$0:Lbl/afi;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 485
    return-void
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/search/BiliSearchResultAllNew;)V
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 521
    iget-object v0, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->d:Lbl/afi$f;
    invoke-static {v0}, Lbl/afi;->access$400(Lbl/afi;)Lbl/afi$f;

    move-result-object v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    iget-object v0, p0, Lbl/afi$g;->this$0:Lbl/afi;

    invoke-virtual {v0}, Lbl/afi;->isVisible()Z

    move-result v0

    if-nez v0, :cond_16

    .line 566
    :cond_15
    :goto_15
    return-void

    .line 524
    :cond_16
    iget-object v0, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # setter for: Lbl/afi;->q:Z
    invoke-static {v0, v4}, Lbl/afi;->access$002(Lbl/afi;Z)Z

    .line 525
    iget-object v0, p0, Lbl/afi$g;->this$0:Lbl/afi;

    invoke-virtual {v0}, Lbl/afi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 526
    instance-of v1, v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    if-nez v1, :cond_26

    .line 527
    const/4 v0, 0x0

    .line 529
    :cond_26
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    .line 530
    if-eqz v0, :cond_15

    .line 531
    invoke-virtual {p1}, Lcom/bilibili/tv/api/search/BiliSearchResultAllNew;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 532
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->h()Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 533
    iget-object v1, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->o:I
    invoke-static {v1}, Lbl/afi;->access$500(Lbl/afi;)I

    move-result v1

    if-ne v1, v5, :cond_50

    .line 534
    iget-object v1, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lbl/afi;->access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 535
    iget-object v1, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v1}, Lbl/afi;->access$900(Lbl/afi;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 537
    :cond_50
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->h()Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 538
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->j(I)Z

    .line 540
    :cond_61
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 542
    :cond_68
    iget-object v0, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # setter for: Lbl/afi;->p:Z
    invoke-static {v0, v4}, Lbl/afi;->access$302(Lbl/afi;Z)Z

    goto :goto_15

    .line 545
    :cond_6e
    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/search/SearchActivity;->a(Z)V

    .line 546
    iget-object v0, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lbl/afi;->access$900(Lbl/afi;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 547
    iget-object v0, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lbl/afi;->access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_8f

    .line 548
    iget-object v0, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lbl/afi;->access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 550
    :cond_8f
    iget-object v0, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->s:I
    invoke-static {v0}, Lbl/afi;->access$600(Lbl/afi;)I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_a1

    iget-object v0, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->s:I
    invoke-static {v0}, Lbl/afi;->access$600(Lbl/afi;)I

    move-result v0

    if-nez v0, :cond_c3

    :cond_a1
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultAllNew;->items:Lcom/bilibili/tv/api/search/BiliSearchResultNew;

    iget-object v0, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew;->season:Ljava/util/ArrayList;

    if-eqz v0, :cond_c3

    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultAllNew;->items:Lcom/bilibili/tv/api/search/BiliSearchResultNew;

    iget-object v0, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew;->season:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c3

    .line 551
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultAllNew;->items:Lcom/bilibili/tv/api/search/BiliSearchResultNew;

    iget-object v0, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew;->season:Ljava/util/ArrayList;

    .line 552
    const-string v1, "response.items.season"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->d:Lbl/afi$f;
    invoke-static {v1}, Lbl/afi;->access$400(Lbl/afi;)Lbl/afi$f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbl/afi$f;->a(Ljava/util/List;)V

    .line 555
    :cond_c3
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultAllNew;->items:Lcom/bilibili/tv/api/search/BiliSearchResultNew;

    iget-object v0, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew;->archive:Ljava/util/ArrayList;

    if-eqz v0, :cond_e5

    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultAllNew;->items:Lcom/bilibili/tv/api/search/BiliSearchResultNew;

    iget-object v0, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew;->archive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e5

    .line 556
    iget-object v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultAllNew;->items:Lcom/bilibili/tv/api/search/BiliSearchResultNew;

    iget-object v0, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew;->archive:Ljava/util/ArrayList;

    .line 557
    const-string v1, "response.items.archive"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->d:Lbl/afi$f;
    invoke-static {v1}, Lbl/afi;->access$400(Lbl/afi;)Lbl/afi$f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbl/afi$f;->b(Ljava/util/List;)V

    .line 560
    :cond_e5
    iget-object v0, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lbl/afi;->access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 561
    if-eqz v0, :cond_f7

    .line 562
    new-instance v1, Lbl/afi$g$a;

    invoke-direct {v1, p0}, Lbl/afi$g$a;-><init>(Lbl/afi$g;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 564
    :cond_f7
    const-string v0, "tv_search_result"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "keyword"

    aput-object v2, v1, v4

    iget-object v2, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->r:Ljava/lang/String;
    invoke-static {v2}, Lbl/afi;->access$1000(Lbl/afi;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_15
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 483
    check-cast p1, Lcom/bilibili/tv/api/search/BiliSearchResultAllNew;

    invoke-virtual {p0, p1}, Lbl/afi$g;->a(Lcom/bilibili/tv/api/search/BiliSearchResultAllNew;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lbl/afi$g;->this$0:Lbl/afi;

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

    .line 495
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->d:Lbl/afi$f;
    invoke-static {v0}, Lbl/afi;->access$400(Lbl/afi;)Lbl/afi$f;

    move-result-object v0

    if-nez v0, :cond_f

    .line 516
    :cond_e
    :goto_e
    return-void

    .line 499
    :cond_f
    iget-object v0, p0, Lbl/afi$g;->this$0:Lbl/afi;

    invoke-virtual {v0}, Lbl/afi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 500
    instance-of v1, v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    if-nez v1, :cond_1a

    .line 501
    const/4 v0, 0x0

    .line 503
    :cond_1a
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchActivity;

    .line 504
    if-eqz v0, :cond_e

    .line 505
    iget-object v1, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # setter for: Lbl/afi;->q:Z
    invoke-static {v1, v3}, Lbl/afi;->access$002(Lbl/afi;Z)Z

    .line 506
    iget-object v1, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lbl/afi;->access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 507
    iget-object v1, p0, Lbl/afi$g;->this$0:Lbl/afi;

    # getter for: Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v1}, Lbl/afi;->access$900(Lbl/afi;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    .line 508
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->h()Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 509
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 510
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity;->h()Lcom/bilibili/tv/ui/search/SearchKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 511
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/search/SearchKeyboardView;->j(I)Z

    .line 514
    :cond_54
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchActivity;->a(Z)V

    goto :goto_e
.end method
