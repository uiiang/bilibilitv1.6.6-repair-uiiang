.class final Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;
.super Lbl/vn;
.source "FavoriteVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/bilibili/tv/api/favorite/BiliFavVideoDetailList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 561
    return-void
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/favorite/BiliFavVideoDetailList;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 583
    const-string v0, "FavoriteVideoFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoFavorite: page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v3}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    if-eqz p1, :cond_56

    .line 585
    const-string v2, "FavoriteVideoFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoFavorite: videos count="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 586
    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavVideoDetailList;->getFavVideos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 587
    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavVideoDetailList;->getFavVideos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", pages="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 588
    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavVideoDetailList;->getPages()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_56
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_61

    .line 633
    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    move v0, v1

    .line 587
    goto :goto_3d

    .line 593
    :cond_61
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->j()V

    .line 594
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$102(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 595
    if-nez p1, :cond_70

    .line 596
    invoke-static {}, Lbl/bbi;->a()V

    .line 598
    :cond_70
    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavVideoDetailList;->getFavVideos()Ljava/util/List;

    move-result-object v0

    .line 599
    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavVideoDetailList;->getPages()I

    move-result v2

    .line 600
    iget-object v3, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v3}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v3

    .line 601
    if-nez v3, :cond_83

    .line 602
    invoke-static {}, Lbl/bbi;->a()V

    .line 604
    :cond_83
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a()I

    move-result v3

    if-nez v3, :cond_91

    if-eqz v0, :cond_ce

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_ce

    .line 605
    :cond_91
    iget-object v3, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v3}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v3

    if-lt v3, v2, :cond_9e

    .line 606
    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$202(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 608
    :cond_9e
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v1

    if-ne v1, v4, :cond_ba

    .line 609
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v1

    .line 610
    if-nez v1, :cond_b1

    .line 611
    invoke-static {}, Lbl/bbi;->a()V

    .line 613
    :cond_b1
    if-nez v0, :cond_b6

    .line 614
    invoke-static {}, Lbl/bbi;->a()V

    .line 616
    :cond_b6
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Ljava/util/List;)V

    goto :goto_5e

    .line 619
    :cond_ba
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v1

    .line 620
    if-nez v1, :cond_c5

    .line 621
    invoke-static {}, Lbl/bbi;->a()V

    .line 623
    :cond_c5
    if-nez v0, :cond_ca

    .line 624
    invoke-static {}, Lbl/bbi;->a()V

    .line 626
    :cond_ca
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b(Ljava/util/List;)V

    goto :goto_5e

    .line 629
    :cond_ce
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v0

    if-ne v0, v4, :cond_5e

    .line 630
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->l()V

    .line 631
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->a(I)V

    goto/16 :goto_5e
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 559
    check-cast p1, Lcom/bilibili/tv/api/favorite/BiliFavVideoDetailList;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->a(Lcom/bilibili/tv/api/favorite/BiliFavVideoDetailList;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 570
    const-string v0, "error"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 572
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_19

    .line 579
    :cond_18
    :goto_18
    return-void

    .line 575
    :cond_19
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$102(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 576
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 577
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->k()V

    goto :goto_18
.end method
