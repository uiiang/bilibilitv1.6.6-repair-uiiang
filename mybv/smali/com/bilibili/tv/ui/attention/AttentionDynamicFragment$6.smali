.class Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;
.super Lbl/vn;
.source "AttentionDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->loadUperDynamicVideos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10

    .prologue
    const v9, 0x7f0c00d8

    const/4 v1, 0x0

    .line 634
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_d

    .line 697
    :cond_c
    :goto_c
    return-void

    .line 636
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->j()V

    .line 637
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$202(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 639
    if-nez p1, :cond_6a

    .line 640
    :try_start_19
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v2, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 641
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 642
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->k()V

    .line 643
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const v2, 0x7f0c00d8

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_34} :catch_35

    goto :goto_c

    .line 689
    :catch_35
    move-exception v0

    .line 690
    const-string v2, "AttentionDynamic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadUperDynamicVideos parse error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 692
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 693
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->k()V

    .line 694
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(I)V

    goto :goto_c

    .line 648
    :cond_6a
    :try_start_6a
    const-string v0, "has_more"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v2

    .line 649
    const-string v0, "offset"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 650
    const-string v0, "items"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 652
    if-eqz v4, :cond_ef

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_ef

    .line 653
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 654
    :goto_8a
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_b7

    .line 655
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 656
    const-string v7, "type"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 657
    const-string v8, "DYNAMIC_TYPE_AV"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a5

    .line 654
    :cond_a2
    :goto_a2
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 660
    :cond_a5
    const-string v7, "modules"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 661
    if-eqz v6, :cond_a2

    .line 663
    invoke-static {v6}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->fromFeedDynamic(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    move-result-object v6

    .line 664
    if-eqz v6, :cond_a2

    .line 665
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 669
    :cond_b7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ef

    .line 670
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e5

    .line 671
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Ljava/util/List;)V

    .line 675
    :goto_ce
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$1002(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 676
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 677
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_c

    .line 679
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_c

    .line 673
    :cond_e5
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->b(Ljava/util/List;)V

    goto :goto_ce

    .line 684
    :cond_ef
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v2, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 685
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 686
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->k()V

    .line 687
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const v2, 0x7f0c00d8

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(I)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_10a} :catch_35

    goto/16 :goto_c
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 617
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

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
    .locals 3

    .prologue
    .line 625
    const-string v0, "AttentionDynamic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUperDynamicVideos error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 627
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$202(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 628
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 629
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->k()V

    .line 630
    :cond_3a
    return-void
.end method
