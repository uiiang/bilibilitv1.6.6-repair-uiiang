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
    .line 589
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 606
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

    .line 607
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 681
    :cond_28
    :goto_28
    return-void

    .line 606
    :cond_29
    const-string v0, "null"

    goto :goto_15

    .line 609
    :cond_2c
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->j()V

    .line 610
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 611
    if-eqz p1, :cond_175

    .line 612
    const-string v5, "\u7cfb\u5217"

    .line 614
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 615
    const-string v0, "page"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_194

    .line 617
    const-string v2, "total"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 620
    :goto_4e
    const-string v2, "archives"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 621
    if-nez v2, :cond_191

    .line 622
    if-eqz v4, :cond_5e

    .line 623
    const-string v2, "archives"

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 624
    :cond_5e
    if-nez v2, :cond_191

    if-eqz v4, :cond_191

    .line 625
    const-string v2, "list"

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    move-object v4, v2

    .line 627
    :goto_69
    if-eqz v4, :cond_175

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_175

    .line 628
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 629
    :goto_77
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_13a

    .line 630
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 631
    new-instance v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    invoke-direct {v8}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;-><init>()V

    .line 632
    const-string v9, "aid"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    .line 633
    iget-wide v10, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    .line 634
    const-string v9, "bvid"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    .line 635
    const-string v9, "title"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    .line 636
    const-string v9, "pic"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 637
    iget-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    if-eqz v9, :cond_ba

    iget-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c2

    .line 638
    :cond_ba
    const-string v9, "cover"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 640
    :cond_c2
    const-string v9, "stat"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 641
    if-eqz v9, :cond_ea

    .line 642
    const-string v10, "view"

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v10

    .line 643
    iput v10, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    .line 644
    invoke-static {v10}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    .line 645
    const-string v10, "danmaku"

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    .line 646
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    .line 647
    invoke-static {v9}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    .line 649
    :cond_ea
    const-string v9, "pubdate"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    .line 650
    const-string v9, "duration"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 651
    const-string v9, "duration_text"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 652
    if-eqz v9, :cond_131

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_131

    .line 653
    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    .line 657
    :goto_10a
    const-string v9, "elec_arc_type"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcType:I

    .line 658
    const-string v9, "elec_arc_badge"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    .line 659
    const-string v9, "is_union_video"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isUnionVideo:I

    .line 660
    const-string v9, "is_live_playback"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    iput v7, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isLivePlayback:I

    .line 661
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_77

    .line 655
    :cond_131
    iget v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    invoke-static {v9}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    goto :goto_10a

    .line 663
    :cond_13a
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I

    move-result v2

    if-ne v2, v3, :cond_16b

    .line 664
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->setVideos(Ljava/util/List;)V

    .line 665
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v2, v5, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->updateHeaderInfo(Ljava/lang/String;I)V

    .line 669
    :goto_150
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    const/16 v4, 0x1e

    if-ne v2, v4, :cond_15b

    move v1, v3

    :cond_15b
    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 670
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 671
    if-eqz v0, :cond_28

    .line 672
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_28

    .line 667
    :cond_16b
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->addVideos(Ljava/util/List;)V

    goto :goto_150

    .line 676
    :cond_175
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 677
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I

    move-result v0

    if-ne v0, v3, :cond_28

    .line 678
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->k()V

    .line 679
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->a(I)V

    goto/16 :goto_28

    :cond_191
    move-object v4, v2

    goto/16 :goto_69

    :cond_194
    move v0, v1

    goto/16 :goto_4e
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 589
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 592
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
    .line 597
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

    .line 598
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 599
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 600
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 601
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->k()V

    .line 602
    :cond_3b
    return-void
.end method
