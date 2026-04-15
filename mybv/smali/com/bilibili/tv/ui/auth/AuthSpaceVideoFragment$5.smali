.class Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;
.super Lbl/vn;
.source "AuthSpaceVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadSeasonVideos()V
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
    .line 477
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 494
    const-string v1, "AuthSpaceVideo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSeasonVideos response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 568
    :cond_28
    :goto_28
    return-void

    .line 494
    :cond_29
    const-string v0, "null"

    goto :goto_15

    .line 497
    :cond_2c
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->j()V

    .line 498
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 499
    if-eqz p1, :cond_172

    .line 500
    const-string v1, "\u5408\u96c6"

    .line 502
    const-string v0, "meta"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 503
    if-eqz v2, :cond_194

    .line 504
    const-string v0, "name"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_191

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_191

    .line 508
    :goto_50
    const-string v1, "total"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .line 511
    :goto_57
    const-string v1, "archives"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 512
    if-nez v1, :cond_18e

    .line 513
    const-string v1, "list"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    move-object v5, v1

    .line 514
    :goto_66
    if-eqz v5, :cond_172

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_172

    .line 515
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 516
    :goto_74
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_137

    .line 517
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 518
    new-instance v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    invoke-direct {v8}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;-><init>()V

    .line 519
    const-string v9, "aid"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    .line 520
    iget-wide v10, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    .line 521
    const-string v9, "bvid"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    .line 522
    const-string v9, "title"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    .line 523
    const-string v9, "pic"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 524
    iget-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    if-eqz v9, :cond_b7

    iget-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_bf

    .line 525
    :cond_b7
    const-string v9, "cover"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 527
    :cond_bf
    const-string v9, "stat"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 528
    if-eqz v9, :cond_e7

    .line 529
    const-string v10, "view"

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v10

    .line 530
    iput v10, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    .line 531
    invoke-static {v10}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    .line 532
    const-string v10, "danmaku"

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    .line 533
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    .line 534
    invoke-static {v9}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    .line 536
    :cond_e7
    const-string v9, "pubdate"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    .line 537
    const-string v9, "duration"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 538
    const-string v9, "duration_text"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 539
    if-eqz v9, :cond_12e

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_12e

    .line 540
    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    .line 544
    :goto_107
    const-string v9, "elec_arc_type"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcType:I

    .line 545
    const-string v9, "elec_arc_badge"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    .line 546
    const-string v9, "is_union_video"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isUnionVideo:I

    .line 547
    const-string v9, "is_live_playback"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    iput v7, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isLivePlayback:I

    .line 548
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_74

    .line 542
    :cond_12e
    iget v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    invoke-static {v9}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    goto :goto_107

    .line 550
    :cond_137
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I

    move-result v1

    if-ne v1, v4, :cond_168

    .line 551
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->setVideos(Ljava/util/List;)V

    .line 552
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v1, v0, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->updateHeaderInfo(Ljava/lang/String;I)V

    .line 556
    :goto_14d
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_158

    move v3, v4

    :cond_158
    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 557
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_28

    .line 559
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_28

    .line 554
    :cond_168
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->addVideos(Ljava/util/List;)V

    goto :goto_14d

    .line 563
    :cond_172
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 564
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I

    move-result v0

    if-ne v0, v4, :cond_28

    .line 565
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->k()V

    .line 566
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->a(I)V

    goto/16 :goto_28

    :cond_18e
    move-object v5, v1

    goto/16 :goto_66

    :cond_191
    move-object v0, v1

    goto/16 :goto_50

    :cond_194
    move v2, v3

    move-object v0, v1

    goto/16 :goto_57
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 477
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

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
    .line 485
    const-string v0, "AuthSpaceVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSeasonVideos error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 487
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 488
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 489
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->k()V

    .line 490
    :cond_3b
    return-void
.end method
