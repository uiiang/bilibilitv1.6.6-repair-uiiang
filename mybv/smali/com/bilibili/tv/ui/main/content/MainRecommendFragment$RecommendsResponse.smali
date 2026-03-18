.class final Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;
.super Lbl/vn;
.source "MainRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RecommendsResponse"
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
    .line 359
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->isAppendMode:Z

    .line 361
    return-void
.end method

.method public constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 364
    iput-boolean p2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->isAppendMode:Z

    .line 365
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 369
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    move-result-object v0

    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    const-string v0, "item"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 370
    :cond_16
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$002(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)Z

    .line 413
    :goto_1b
    return-void

    .line 373
    :cond_1c
    const-string v0, "item"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 375
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v0, v5, :cond_2d

    .line 376
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->hasMoreData:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$102(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)Z

    .line 379
    :cond_2d
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    aput-object v4, v0, v1

    const/4 v3, 0x1

    aput-object v4, v0, v3

    const/4 v3, 0x2

    aput-object v4, v0, v3

    const/4 v3, 0x3

    aput-object v4, v0, v3

    const/4 v3, 0x4

    aput-object v4, v0, v3

    .line 380
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 381
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 383
    :goto_4d
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_e5

    .line 384
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 385
    new-instance v6, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v6}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 386
    const-string v7, "small_popular_ugc"

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 387
    const-string v7, "av"

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 388
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setJumpId(Ljava/lang/Long;)V

    .line 389
    const-string v7, "pic"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCover(Ljava/lang/String;)V

    .line 390
    const-string v7, "title"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 391
    const-string v7, "pubdate"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPubdate(J)V

    .line 392
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bilibili_yst://video/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setUri(Ljava/lang/String;)V

    .line 393
    const-string v7, "duration"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDuration(I)V

    .line 394
    const-string v7, "owner"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 395
    if-eqz v7, :cond_c4

    .line 396
    const-string v8, "name"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setOwnerName(Ljava/lang/String;)V

    .line 398
    :cond_c4
    const-string v7, "stat"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 399
    if-eqz v5, :cond_de

    .line 400
    const-string v7, "view"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPlay(I)V

    .line 401
    const-string v7, "danmaku"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDanmaku(I)V

    .line 403
    :cond_de
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4d

    .line 406
    :cond_e5
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->isAppendMode:Z

    if-eqz v0, :cond_f9

    .line 407
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->appendData(Ljava/util/List;Ljava/util/List;)V

    .line 412
    :goto_f2
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$002(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)Z

    goto/16 :goto_1b

    .line 409
    :cond_f9
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->a(Ljava/util/List;Ljava/util/List;)Z

    goto :goto_f2
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 356
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 417
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    const-string v0, "VideoRecommend"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$002(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)Z

    .line 420
    return-void
.end method
