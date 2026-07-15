.class public final Lbl/adq$i;
.super Lbl/vn;
.source "adq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/adq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/bilibili/tv/api/area/BiliVideoV2;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbl/adq;


# direct methods
.method public constructor <init>(Lbl/adq;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 626
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 624
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lbl/adq$i;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/area/BiliVideoV2;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v4, 0x7f0c00b1

    const/4 v3, 0x0

    .line 634
    const-string v1, "AreaFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[i.onSuccess] START, list="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_36

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-virtual {v0}, Lbl/adq;->a()Lbl/adq$j;

    move-result-object v0

    if-nez v0, :cond_39

    .line 637
    const-string v0, "AreaFragment"

    const-string v1, "[i.onSuccess] adapter is null, return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :goto_35
    return-void

    .line 634
    :cond_36
    const-string v0, "null"

    goto :goto_1b

    .line 640
    :cond_39
    iget-object v0, p0, Lbl/adq$i;->this$0:Lbl/adq;

    # setter for: Lbl/adq;->k:Z
    invoke-static {v0, v3}, Lbl/adq;->access$202(Lbl/adq;Z)Z

    .line 641
    iget-object v0, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-virtual {v0}, Lbl/adq;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 642
    if-eqz p1, :cond_4f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5c

    .line 643
    :cond_4f
    const-string v0, "AreaFragment"

    const-string v1, "[i.onSuccess] list is empty, j=false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p0, Lbl/adq$i;->this$0:Lbl/adq;

    # setter for: Lbl/adq;->j:Z
    invoke-static {v0, v3}, Lbl/adq;->access$102(Lbl/adq;Z)Z

    goto :goto_35

    .line 647
    :cond_5c
    const-string v1, "AreaFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[i.onSuccess] First video: title="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/area/BiliVideoV2;

    iget-object v0, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", param="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/area/BiliVideoV2;

    iget-object v0, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->param:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static {v4}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    # getter for: Lbl/adq;->l:Z
    invoke-static {v1}, Lbl/adq;->access$500(Lbl/adq;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 650
    iget-object v1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-virtual {v1}, Lbl/adq;->b()Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->SENDDATE:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    if-ne v1, v2, :cond_ea

    .line 651
    invoke-static {v4}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 670
    :goto_a8
    iget-object v1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-virtual {v1}, Lbl/adq;->m()V

    .line 671
    iget-object v1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-virtual {v1}, Lbl/adq;->a()Lbl/adq$j;

    move-result-object v1

    .line 672
    if-nez v1, :cond_b5

    .line 674
    :cond_b5
    invoke-virtual {v1}, Lbl/adq$j;->h()V

    .line 675
    iget-object v1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    # setter for: Lbl/adq;->l:Z
    invoke-static {v1, v3}, Lbl/adq;->access$502(Lbl/adq;Z)Z

    .line 677
    :cond_bd
    iget-object v1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-virtual {v1}, Lbl/adq;->j()V

    .line 678
    iget-object v1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-virtual {v1}, Lbl/adq;->a()Lbl/adq$j;

    move-result-object v1

    .line 679
    if-nez v1, :cond_cd

    .line 680
    invoke-static {}, Lbl/bbi;->a()V

    .line 682
    :cond_cd
    invoke-virtual {v1, v0, p1}, Lbl/adq$j;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 683
    const-string v1, "AreaFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[i.onSuccess] END, adapter updated with title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 652
    :cond_ea
    iget-object v1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-virtual {v1}, Lbl/adq;->b()Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->VIEW:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    if-ne v1, v2, :cond_fc

    .line 653
    const v0, 0x7f0c00b0

    invoke-static {v0}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a8

    .line 654
    :cond_fc
    iget-object v1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-virtual {v1}, Lbl/adq;->b()Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->DANMAKU:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    if-ne v1, v2, :cond_10e

    .line 655
    const v0, 0x7f0c00af

    invoke-static {v0}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a8

    .line 656
    :cond_10e
    iget-object v1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-virtual {v1}, Lbl/adq;->b()Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->REPLY:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    if-ne v1, v2, :cond_120

    .line 657
    const v0, 0x7f0c00b2

    invoke-static {v0}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a8

    .line 659
    :cond_120
    iget-object v1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-virtual {v1}, Lbl/adq;->b()Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->FAVORITE:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    if-ne v1, v2, :cond_131

    .line 660
    const v0, 0x7f0c00b3

    invoke-static {v0}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 662
    :cond_131
    iget-object v1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-virtual {v1}, Lbl/adq;->m()V

    .line 663
    iget-object v1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-virtual {v1}, Lbl/adq;->a()Lbl/adq$j;

    move-result-object v1

    .line 664
    if-nez v1, :cond_141

    .line 665
    invoke-static {}, Lbl/bbi;->a()V

    .line 667
    :cond_141
    invoke-virtual {v1}, Lbl/adq$j;->h()V

    .line 668
    iget-object v1, p0, Lbl/adq$i;->this$0:Lbl/adq;

    # setter for: Lbl/adq;->l:Z
    invoke-static {v1, v3}, Lbl/adq;->access$502(Lbl/adq;Z)Z

    goto/16 :goto_a8
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 688
    const-string v0, "AreaFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[i.onError] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lbl/adq$i;->this$0:Lbl/adq;

    invoke-virtual {v0}, Lbl/adq;->a()Lbl/adq$j;

    move-result-object v0

    if-nez v0, :cond_31

    .line 691
    const-string v0, "AreaFragment"

    const-string v1, "[i.onError] adapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :goto_30
    return-void

    .line 694
    :cond_31
    iget-object v0, p0, Lbl/adq$i;->this$0:Lbl/adq;

    const/4 v1, 0x0

    # setter for: Lbl/adq;->k:Z
    invoke-static {v0, v1}, Lbl/adq;->access$202(Lbl/adq;Z)Z

    goto :goto_30
.end method
