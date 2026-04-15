.class Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;
.super Lbl/vn;
.source "AuthSpaceVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadSeriesVideos()V
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 562
    const-string v2, "AuthSpaceVideo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSeriesVideos response: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 606
    :cond_28
    :goto_28
    return-void

    .line 562
    :cond_29
    const-string v0, "null"

    goto :goto_15

    .line 565
    :cond_2c
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->j()V

    .line 566
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 567
    if-eqz p1, :cond_c6

    .line 568
    const-string v5, "\u7cfb\u5217"

    .line 570
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 571
    const-string v0, "page"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_e4

    .line 573
    const-string v2, "total"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 576
    :goto_4e
    const-string v2, "archives"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 577
    if-nez v2, :cond_e2

    .line 578
    if-eqz v4, :cond_5e

    .line 579
    const-string v2, "archives"

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 580
    :cond_5e
    if-nez v2, :cond_e2

    if-eqz v4, :cond_e2

    .line 581
    const-string v2, "list"

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    move-object v4, v2

    .line 583
    :goto_69
    if-eqz v4, :cond_c6

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_c6

    .line 584
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 585
    :goto_77
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_8b

    .line 586
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->fromArchives(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 588
    :cond_8b
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I

    move-result v2

    if-ne v2, v3, :cond_bc

    .line 589
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->setVideos(Ljava/util/List;)V

    .line 590
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v2, v5, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->updateHeaderInfo(Ljava/lang/String;I)V

    .line 594
    :goto_a1
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    const/16 v4, 0x1e

    if-ne v2, v4, :cond_ac

    move v1, v3

    :cond_ac
    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 595
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_28

    .line 597
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_28

    .line 592
    :cond_bc
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->addVideos(Ljava/util/List;)V

    goto :goto_a1

    .line 601
    :cond_c6
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 602
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I

    move-result v0

    if-ne v0, v3, :cond_28

    .line 603
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->k()V

    .line 604
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->a(I)V

    goto/16 :goto_28

    :cond_e2
    move-object v4, v2

    goto :goto_69

    :cond_e4
    move v0, v1

    goto/16 :goto_4e
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 545
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

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
    .line 553
    const-string v0, "AuthSpaceVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSeriesVideos error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 555
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 556
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 557
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->k()V

    .line 558
    :cond_3b
    return-void
.end method
