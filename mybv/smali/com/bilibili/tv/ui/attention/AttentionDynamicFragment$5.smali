.class Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;
.super Lbl/vn;
.source "AttentionDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->loadUperVideos()V
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
    .line 515
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10

    .prologue
    const v9, 0x7f0c00d8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 518
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_e

    .line 575
    :cond_d
    :goto_d
    return-void

    .line 521
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->j()V

    .line 522
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$202(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 524
    if-nez p1, :cond_6b

    .line 525
    :try_start_1a
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v3, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 526
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 527
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->l()V

    .line 528
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const v3, 0x7f0c00d8

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_35} :catch_36

    goto :goto_d

    .line 567
    :catch_36
    move-exception v0

    .line 568
    const-string v3, "AttentionDynamic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadUperVideos parse error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_53
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 571
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 572
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->l()V

    .line 573
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(I)V

    goto :goto_d

    .line 532
    :cond_6b
    :try_start_6b
    const-string v0, "page"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 533
    if-eqz v3, :cond_bd

    const-string v0, "count"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 534
    :goto_7a
    if-eqz v3, :cond_bf

    const-string v0, "pn"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .line 535
    :goto_83
    if-eqz v3, :cond_c1

    const-string v0, "ps"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 537
    :goto_8c
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 538
    if-eqz v0, :cond_c5

    const-string v3, "vlist"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    move-object v3, v0

    .line 539
    :goto_9b
    if-eqz v3, :cond_53

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_53

    .line 540
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 541
    :goto_a9
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_c8

    .line 542
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->fromVlist(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    :cond_bd
    move v6, v2

    .line 533
    goto :goto_7a

    :cond_bf
    move v5, v1

    .line 534
    goto :goto_83

    .line 535
    :cond_c1
    const/16 v0, 0x28

    move v4, v0

    goto :goto_8c

    .line 538
    :cond_c5
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_9b

    .line 544
    :cond_c8
    const-string v0, "\u4e2a\u4eba\u6295\u7a3f"

    invoke-static {v7, v0}, Lmybl/BiliFilter;->filterBiliSpaceVideo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 545
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I
    invoke-static {v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v3

    if-ne v3, v1, :cond_125

    .line 546
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Ljava/util/List;)V

    .line 547
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v3, v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->updateHeaderCount(I)V

    .line 551
    :goto_e4
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    mul-int/2addr v4, v5

    if-ge v4, v6, :cond_12f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12f

    move v0, v1

    :goto_f0
    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v3, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 552
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_fe

    .line 554
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 556
    :cond_fe
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a()I

    move-result v0

    const/16 v3, 0x8

    if-ge v0, v3, :cond_d

    .line 557
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # operator++ for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$708(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_119} :catch_36

    .line 559
    const-wide/16 v4, 0x3e8

    :try_start_11b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_11e} :catch_131

    .line 563
    :goto_11e
    :try_start_11e
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->b()V

    goto/16 :goto_d

    .line 549
    :cond_125
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->b(Ljava/util/List;)V

    goto :goto_e4

    :cond_12f
    move v0, v2

    .line 551
    goto :goto_f0

    .line 560
    :catch_131
    move-exception v0

    .line 561
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_135} :catch_36

    goto :goto_11e
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 515
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

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
    .locals 2

    .prologue
    .line 584
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 585
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_14

    .line 592
    :cond_13
    :goto_13
    return-void

    .line 588
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$202(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 589
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 590
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->k()V

    goto :goto_13
.end method
