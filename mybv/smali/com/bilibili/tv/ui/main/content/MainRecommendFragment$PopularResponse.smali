.class final Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;
.super Lbl/vn;
.source "MainRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PopularResponse"
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
.field private isAppendMode:Z

.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)V
    .locals 1

    .prologue
    .line 440
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->isAppendMode:Z

    .line 442
    return-void
.end method

.method public constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 445
    iput-boolean p2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->isAppendMode:Z

    .line 446
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 450
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    move-result-object v0

    if-eqz v0, :cond_d

    if-nez p1, :cond_13

    .line 451
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$002(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)Z

    .line 498
    :goto_12
    return-void

    .line 454
    :cond_13
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 455
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 456
    :cond_21
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->hasMoreData:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$102(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)Z

    .line 457
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$002(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)Z

    goto :goto_12

    .line 461
    :cond_2c
    const-string v0, "no_more"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    .line 462
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    if-nez v0, :cond_f3

    move v0, v1

    :goto_37
    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->hasMoreData:Z
    invoke-static {v4, v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$102(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)Z

    .line 464
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    aput-object v5, v0, v2

    aput-object v5, v0, v1

    const/4 v1, 0x2

    aput-object v5, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    .line 465
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 466
    new-instance v4, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v2

    .line 468
    :goto_5b
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_f6

    .line 469
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 470
    new-instance v6, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v6}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 471
    const-string v7, "small_popular_ugc"

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 472
    const-string v7, "av"

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 473
    const-string v7, "aid"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setJumpId(Ljava/lang/Long;)V

    .line 474
    const-string v7, "pic"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCover(Ljava/lang/String;)V

    .line 475
    const-string v7, "title"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 476
    const-string v7, "pubdate"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPubdate(J)V

    .line 477
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bilibili_yst://video/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "aid"

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setUri(Ljava/lang/String;)V

    .line 478
    const-string v7, "duration"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDuration(I)V

    .line 479
    const-string v7, "owner"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 480
    if-eqz v7, :cond_d2

    .line 481
    const-string v8, "name"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setOwnerName(Ljava/lang/String;)V

    .line 483
    :cond_d2
    const-string v7, "stat"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 484
    if-eqz v5, :cond_ec

    .line 485
    const-string v7, "view"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPlay(I)V

    .line 486
    const-string v7, "danmaku"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDanmaku(I)V

    .line 488
    :cond_ec
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5b

    :cond_f3
    move v0, v2

    .line 462
    goto/16 :goto_37

    .line 491
    :cond_f6
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->isAppendMode:Z

    if-eqz v0, :cond_10a

    .line 492
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->appendData(Ljava/util/List;Ljava/util/List;)V

    .line 497
    :goto_103
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$002(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)Z

    goto/16 :goto_12

    .line 494
    :cond_10a
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->a(Ljava/util/List;Ljava/util/List;)Z

    goto :goto_103
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 437
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 502
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    const-string v0, "PopularRecommend"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$002(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)Z

    .line 505
    return-void
.end method
