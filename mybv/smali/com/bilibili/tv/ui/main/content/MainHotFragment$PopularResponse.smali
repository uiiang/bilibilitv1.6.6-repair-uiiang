.class final Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;
.super Lbl/vn;
.source "MainHotFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainHotFragment;
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

.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)V
    .locals 1

    .prologue
    .line 274
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->isAppendMode:Z

    .line 276
    return-void
.end method

.method public constructor <init>(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Z)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 279
    iput-boolean p2, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->isAppendMode:Z

    .line 280
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->a:Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;

    move-result-object v0

    if-eqz v0, :cond_d

    if-nez p1, :cond_13

    .line 285
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$002(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Z)Z

    .line 332
    :goto_12
    return-void

    .line 288
    :cond_13
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 289
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 290
    :cond_21
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->hasMoreData:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$102(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Z)Z

    .line 291
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$002(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Z)Z

    goto :goto_12

    .line 295
    :cond_2c
    const-string v0, "no_more"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    .line 296
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    if-nez v0, :cond_f3

    move v0, v1

    :goto_37
    # setter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->hasMoreData:Z
    invoke-static {v4, v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$102(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Z)Z

    .line 298
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

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 300
    new-instance v4, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v2

    .line 302
    :goto_5b
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_f6

    .line 303
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 304
    new-instance v6, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v6}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 305
    const-string v7, "small_popular_ugc"

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 306
    const-string v7, "av"

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 307
    const-string v7, "aid"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setJumpId(Ljava/lang/Long;)V

    .line 308
    const-string v7, "pic"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCover(Ljava/lang/String;)V

    .line 309
    const-string v7, "title"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 310
    const-string v7, "pubdate"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPubdate(J)V

    .line 311
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

    .line 312
    const-string v7, "duration"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDuration(I)V

    .line 313
    const-string v7, "owner"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 314
    if-eqz v7, :cond_d2

    .line 315
    const-string v8, "name"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setOwnerName(Ljava/lang/String;)V

    .line 317
    :cond_d2
    const-string v7, "stat"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 318
    if-eqz v5, :cond_ec

    .line 319
    const-string v7, "view"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPlay(I)V

    .line 320
    const-string v7, "danmaku"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDanmaku(I)V

    .line 322
    :cond_ec
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5b

    :cond_f3
    move v0, v2

    .line 296
    goto/16 :goto_37

    .line 325
    :cond_f6
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->isAppendMode:Z

    if-eqz v0, :cond_10a

    .line 326
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->a:Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;->appendData(Ljava/util/List;Ljava/util/List;)V

    .line 331
    :goto_103
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$002(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Z)Z

    goto/16 :goto_12

    .line 328
    :cond_10a
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->a:Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;->a(Ljava/util/List;Ljava/util/List;)Z

    goto :goto_103
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 271
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 336
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    const-string v0, "HotRecommend"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$002(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Z)Z

    .line 339
    return-void
.end method
