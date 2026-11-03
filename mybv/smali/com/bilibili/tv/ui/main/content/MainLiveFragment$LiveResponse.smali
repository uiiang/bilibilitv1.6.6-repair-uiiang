.class Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;
.super Lbl/vn;
.source "MainLiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainLiveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveResponse"
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
.field private final append:Z

.field private final requestPage:I

.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

.field private final token:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;IZI)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 331
    iput p2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->requestPage:I

    .line 332
    iput-boolean p3, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->append:Z

    .line 333
    iput p4, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->token:I

    .line 334
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 11

    .prologue
    .line 338
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->token:I

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestToken:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$100(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)I

    move-result v1

    if-eq v0, v1, :cond_10

    .line 339
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    .line 398
    :cond_f
    :goto_f
    return-void

    .line 342
    :cond_10
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-eqz v0, :cond_18

    if-nez p1, :cond_1e

    .line 343
    :cond_18
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    goto :goto_f

    .line 347
    :cond_1e
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 348
    if-eqz v1, :cond_d2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    move v8, v0

    .line 349
    :goto_2b
    const-string v0, "has_more"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d6

    const/4 v0, 0x1

    move v9, v0

    .line 351
    :goto_36
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->append:Z

    if-eqz v0, :cond_dc

    .line 352
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 353
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 354
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 355
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    const/4 v2, 0x0

    # invokes: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->collectRooms(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    invoke-static/range {v0 .. v5}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    move-result v1

    .line 357
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iget v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->requestPage:I

    # setter for: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$302(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;I)I

    .line 358
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    .line 359
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    if-eqz v9, :cond_da

    const/16 v0, 0xf

    if-lt v8, v0, :cond_da

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    .line 361
    # getter for: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$300(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)I

    move-result v0

    const/16 v6, 0x3c

    if-ge v0, v6, :cond_da

    const/4 v0, 0x1

    :goto_6f
    iput-boolean v0, v2, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->hasMoreData:Z

    .line 362
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "live list page="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->requestPage:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", size="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", new="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasMore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iget-boolean v2, v2, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->hasMoreData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 368
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->appendData(Ljava/util/List;)V

    .line 369
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$400(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 370
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveBadgeColors:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$500(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_f

    .line 348
    :cond_d2
    const/4 v0, 0x0

    move v8, v0

    goto/16 :goto_2b

    .line 349
    :cond_d6
    const/4 v0, 0x0

    move v9, v0

    goto/16 :goto_36

    .line 361
    :cond_da
    const/4 v0, 0x0

    goto :goto_6f

    .line 375
    :cond_dc
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveRoomIds:Ljava/util/Set;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$600(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 377
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 378
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 379
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 380
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    # invokes: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->createLiveCategoryEntry(Landroid/content/Context;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$700(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Landroid/content/Context;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    const-string v0, "my_idols"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_18d

    const-string v2, "list"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 384
    :goto_111
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    const-string v4, "\u6211\u7684\u5173\u6ce8"

    # invokes: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->collectRooms(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    invoke-static/range {v2 .. v7}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    move-result v10

    .line 385
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    const/4 v4, 0x0

    move-object v3, v1

    # invokes: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->collectRooms(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    invoke-static/range {v2 .. v7}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    move-result v1

    .line 387
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    const/4 v2, 0x1

    # setter for: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$302(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;I)I

    .line 388
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    .line 389
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    if-eqz v9, :cond_18f

    const/16 v0, 0xf

    if-lt v8, v0, :cond_18f

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    .line 391
    # getter for: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$300(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)I

    move-result v0

    const/16 v3, 0x3c

    if-ge v0, v3, :cond_18f

    const/4 v0, 0x1

    :goto_13f
    iput-boolean v0, v2, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->hasMoreData:Z

    .line 392
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v5}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->setData(Ljava/util/List;Ljava/util/List;)V

    .line 393
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;
    invoke-static {v0, v6}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$402(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Ljava/util/List;)Ljava/util/List;

    .line 394
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveBadgeColors:Ljava/util/List;
    invoke-static {v0, v7}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$502(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Ljava/util/List;)Ljava/util/List;

    .line 396
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first page: follow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", recommend="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasMore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iget-boolean v2, v2, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->hasMoreData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 383
    :cond_18d
    const/4 v3, 0x0

    goto :goto_111

    .line 391
    :cond_18f
    const/4 v0, 0x0

    goto :goto_13f
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 324
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request live list page="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->requestPage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v1, v0}, Lmybl/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    .line 405
    return-void

    .line 403
    :cond_34
    const-string v0, ""

    goto :goto_23
.end method
