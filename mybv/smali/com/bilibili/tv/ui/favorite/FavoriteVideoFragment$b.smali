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
    .line 540
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 541
    return-void
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/favorite/BiliFavVideoDetailList;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 563
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_b

    .line 606
    :cond_a
    :goto_a
    return-void

    .line 566
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->j()V

    .line 567
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$102(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 568
    if-nez p1, :cond_1a

    .line 569
    invoke-static {}, Lbl/bbi;->a()V

    .line 571
    :cond_1a
    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavVideoDetailList;->getFavVideos()Ljava/util/List;

    move-result-object v0

    .line 572
    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavVideoDetailList;->getPages()I

    move-result v1

    .line 573
    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v2

    .line 574
    if-nez v2, :cond_2d

    .line 575
    invoke-static {}, Lbl/bbi;->a()V

    .line 577
    :cond_2d
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a()I

    move-result v2

    if-nez v2, :cond_3b

    if-eqz v0, :cond_78

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_78

    .line 578
    :cond_3b
    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v2

    if-lt v2, v1, :cond_48

    .line 579
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z
    invoke-static {v1, v3}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$202(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 581
    :cond_48
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v1

    if-ne v1, v4, :cond_64

    .line 582
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v1

    .line 583
    if-nez v1, :cond_5b

    .line 584
    invoke-static {}, Lbl/bbi;->a()V

    .line 586
    :cond_5b
    if-nez v0, :cond_60

    .line 587
    invoke-static {}, Lbl/bbi;->a()V

    .line 589
    :cond_60
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Ljava/util/List;)V

    goto :goto_a

    .line 592
    :cond_64
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v1

    .line 593
    if-nez v1, :cond_6f

    .line 594
    invoke-static {}, Lbl/bbi;->a()V

    .line 596
    :cond_6f
    if-nez v0, :cond_74

    .line 597
    invoke-static {}, Lbl/bbi;->a()V

    .line 599
    :cond_74
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->b(Ljava/util/List;)V

    goto :goto_a

    .line 602
    :cond_78
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 603
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->l()V

    .line 604
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->a(I)V

    goto/16 :goto_a
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 539
    check-cast p1, Lcom/bilibili/tv/api/favorite/BiliFavVideoDetailList;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->a(Lcom/bilibili/tv/api/favorite/BiliFavVideoDetailList;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 545
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
    .line 550
    const-string v0, "error"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 552
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_19

    .line 559
    :cond_18
    :goto_18
    return-void

    .line 555
    :cond_19
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$102(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z

    .line 556
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 557
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->k()V

    goto :goto_18
.end method
