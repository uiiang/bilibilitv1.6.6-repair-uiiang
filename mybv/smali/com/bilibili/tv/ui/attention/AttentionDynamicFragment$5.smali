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
    .line 509
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 13

    .prologue
    const v12, 0x7f0c00d8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 512
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_e

    .line 583
    :cond_d
    :goto_d
    return-void

    .line 515
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->j()V

    .line 516
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$202(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 518
    if-nez p1, :cond_6b

    .line 519
    :try_start_1a
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v3, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$502(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 520
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 521
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->l()V

    .line 522
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const v3, 0x7f0c00d8

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_35} :catch_36

    goto :goto_d

    .line 575
    :catch_36
    move-exception v0

    .line 576
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

    .line 578
    :cond_53
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$502(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 579
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 580
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->l()V

    .line 581
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0, v12}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(I)V

    goto :goto_d

    .line 526
    :cond_6b
    :try_start_6b
    const-string v0, "page"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 527
    if-eqz v3, :cond_12a

    const-string v0, "count"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 528
    :goto_7a
    if-eqz v3, :cond_12d

    const-string v0, "pn"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .line 529
    :goto_83
    if-eqz v3, :cond_130

    const-string v0, "ps"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 531
    :goto_8c
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_135

    const-string v3, "vlist"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    move-object v3, v0

    .line 533
    :goto_9b
    if-eqz v3, :cond_53

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_53

    .line 534
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 535
    :goto_a9
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_139

    .line 536
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 537
    new-instance v9, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    invoke-direct {v9}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;-><init>()V

    .line 538
    const-string v10, "pic"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 539
    const-string v10, "video_review"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    .line 540
    const-string v10, "aid"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    .line 541
    const-string v10, "play"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    .line 542
    const-string v10, "title"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    .line 543
    const-string v10, "created"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v9, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    .line 544
    const-string v10, "length"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/bilibili/tv/util/DateHelper;->parseDurationStr(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 545
    const-string v10, "length"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    .line 546
    const-string v10, "elec_arc_type"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcType:I

    .line 547
    const-string v10, "elec_arc_badge"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    .line 548
    const-string v10, "is_union_video"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isUnionVideo:I

    .line 549
    const-string v10, "is_live_playback"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    iput v8, v9, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isLivePlayback:I

    .line 550
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    :cond_12a
    move v6, v2

    .line 527
    goto/16 :goto_7a

    :cond_12d
    move v5, v1

    .line 528
    goto/16 :goto_83

    .line 529
    :cond_130
    const/16 v0, 0x28

    move v4, v0

    goto/16 :goto_8c

    .line 532
    :cond_135
    const/4 v0, 0x0

    move-object v3, v0

    goto/16 :goto_9b

    .line 552
    :cond_139
    const-string v0, "\u4e2a\u4eba\u6295\u7a3f"

    invoke-static {v7, v0}, Lmybl/BiliFilter;->filterBiliSpaceVideo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 553
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I
    invoke-static {v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v3

    if-ne v3, v1, :cond_196

    .line 554
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Ljava/util/List;)V

    .line 555
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v3, v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->updateHeaderCount(I)V

    .line 559
    :goto_155
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    mul-int/2addr v4, v5

    if-ge v4, v6, :cond_1a0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a0

    move v0, v1

    :goto_161
    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v3, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$502(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 560
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 561
    if-eqz v0, :cond_16f

    .line 562
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 564
    :cond_16f
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$500(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z

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

    .line 565
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # operator++ for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$708(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_18a} :catch_36

    .line 567
    const-wide/16 v4, 0x3e8

    :try_start_18c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_18f} :catch_1a2

    .line 571
    :goto_18f
    :try_start_18f
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->b()V

    goto/16 :goto_d

    .line 557
    :cond_196
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->b(Ljava/util/List;)V

    goto :goto_155

    :cond_1a0
    move v0, v2

    .line 559
    goto :goto_161

    .line 568
    :catch_1a2
    move-exception v0

    .line 569
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_1a6} :catch_36

    goto :goto_18f
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 509
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 587
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
    .line 592
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 593
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_14

    .line 600
    :cond_13
    :goto_13
    return-void

    .line 596
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$202(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 597
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 598
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->k()V

    goto :goto_13
.end method
