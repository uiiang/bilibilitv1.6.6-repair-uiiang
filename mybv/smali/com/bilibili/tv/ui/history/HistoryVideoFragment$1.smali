.class Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;
.super Lbl/vm;
.source "HistoryVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadAppHistory(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vm",
        "<",
        "Lcom/bilibili/okretro/GeneralResponse",
        "<",
        "Lcom/alibaba/fastjson/JSONArray;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

.field final synthetic val$accessKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    iput-object p2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->val$accessKey:Ljava/lang/String;

    invoke-direct {p0}, Lbl/vm;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancel()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$002(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 310
    const-string v0, "HistoryVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App history load failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fallback to web"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # invokes: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadWebHistory()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$400(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V

    .line 312
    return-void
.end method

.method public onSuccess(Lcom/bilibili/okretro/GeneralResponse;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/okretro/GeneralResponse",
            "<",
            "Lcom/alibaba/fastjson/JSONArray;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const v10, 0x7f0c00d8

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_f

    .line 410
    :cond_e
    :goto_e
    return-void

    .line 319
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->j()V

    .line 320
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$002(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 322
    if-eqz p1, :cond_2f

    iget-object v0, p1, Lcom/bilibili/okretro/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    move-object v5, v0

    .line 323
    :goto_20
    if-nez v5, :cond_31

    .line 325
    const-string v0, "HistoryVideoFragment"

    const-string v1, "App history load failed, fallback to web"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # invokes: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadWebHistory()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$400(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V

    goto :goto_e

    :cond_2f
    move-object v5, v4

    .line 322
    goto :goto_20

    .line 330
    :cond_31
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 331
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 332
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a()I

    move-result v0

    if-nez v0, :cond_e

    .line 333
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->l()V

    .line 334
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->a(I)V

    goto :goto_e

    .line 350
    :cond_53
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # operator++ for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appPageNum:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$508(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)I

    .line 354
    new-instance v6, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move v0, v1

    .line 355
    :goto_5e
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_ad

    .line 356
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 357
    const-string v2, "history"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 358
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_a7

    const-string v2, "business"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_7b
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 359
    if-eqz v3, :cond_aa

    const-string v2, "oid"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    :goto_8d
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appSeenKeys:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$600(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 361
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_a4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 358
    :cond_a7
    const-string v2, ""

    goto :goto_7b

    .line 359
    :cond_aa
    const-wide/16 v2, 0x0

    goto :goto_8d

    .line 365
    :cond_ad
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 367
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 368
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a()I

    move-result v0

    if-nez v0, :cond_e

    .line 369
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->l()V

    .line 370
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->a(I)V

    goto/16 :goto_e

    .line 377
    :cond_d0
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 378
    :goto_d5
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_117

    .line 379
    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 380
    const-string v0, "history"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_109

    const-string v5, "business"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_ed
    const-string v5, "live"

    iget-object v7, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;
    invoke-static {v7}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$700(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 383
    const-string v5, "live"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 384
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_106
    :goto_106
    add-int/lit8 v1, v1, 0x1

    goto :goto_d5

    :cond_109
    move-object v0, v4

    .line 381
    goto :goto_ed

    .line 387
    :cond_10b
    const-string v5, "live"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    .line 388
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_106

    .line 393
    :cond_117
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_138

    .line 394
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v9}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 395
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appHasData:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$800(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 396
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->b(Lcom/alibaba/fastjson/JSONArray;)V

    .line 401
    :goto_133
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # invokes: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->updateHeaderInfo()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$900(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V

    .line 407
    :cond_138
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_e

    .line 408
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->val$accessKey:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadAppHistory(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$1000(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 398
    :cond_14f
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a(Lcom/alibaba/fastjson/JSONArray;)V

    .line 399
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appHasData:Z
    invoke-static {v0, v9}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$802(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    goto :goto_133
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 301
    check-cast p1, Lcom/bilibili/okretro/GeneralResponse;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->onSuccess(Lcom/bilibili/okretro/GeneralResponse;)V

    return-void
.end method
