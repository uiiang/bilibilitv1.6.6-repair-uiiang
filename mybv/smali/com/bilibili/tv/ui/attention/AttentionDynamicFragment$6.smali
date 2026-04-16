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
    .line 610
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

    .line 627
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_d

    .line 690
    :cond_c
    :goto_c
    return-void

    .line 629
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->j()V

    .line 630
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$202(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 632
    if-nez p1, :cond_6a

    .line 633
    :try_start_19
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v2, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 634
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 635
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->k()V

    .line 636
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const v2, 0x7f0c00d8

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_34} :catch_35

    goto :goto_c

    .line 682
    :catch_35
    move-exception v0

    .line 683
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

    .line 684
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

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

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(I)V

    goto :goto_c

    .line 641
    :cond_6a
    :try_start_6a
    const-string v0, "has_more"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v2

    .line 642
    const-string v0, "offset"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 643
    const-string v0, "items"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 645
    if-eqz v4, :cond_ef

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_ef

    .line 646
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 647
    :goto_8a
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_b7

    .line 648
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 649
    const-string v7, "type"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 650
    const-string v8, "DYNAMIC_TYPE_AV"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a5

    .line 647
    :cond_a2
    :goto_a2
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 653
    :cond_a5
    const-string v7, "modules"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 654
    if-eqz v6, :cond_a2

    .line 656
    invoke-static {v6}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->fromFeedDynamic(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    move-result-object v6

    .line 657
    if-eqz v6, :cond_a2

    .line 658
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 662
    :cond_b7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ef

    .line 663
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e5

    .line 664
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Ljava/util/List;)V

    .line 668
    :goto_ce
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$1002(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 669
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 670
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 671
    if-eqz v0, :cond_c

    .line 672
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_c

    .line 666
    :cond_e5
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->b(Ljava/util/List;)V

    goto :goto_ce

    .line 677
    :cond_ef
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v2, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 678
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 679
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->k()V

    .line 680
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
    .line 610
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 613
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
    .line 618
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

    .line 619
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 620
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$202(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 621
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 622
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->k()V

    .line 623
    :cond_3a
    return-void
.end method
