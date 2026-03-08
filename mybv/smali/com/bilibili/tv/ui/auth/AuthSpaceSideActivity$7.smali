.class Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;
.super Lbl/vn;
.source "AuthSpaceSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->loadMenuPage(I)V
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

.field final synthetic val$pageNum:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;I)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->val$pageNum:I

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 363
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;
    invoke-static {v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$200(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    move-result-object v2

    if-nez v2, :cond_b

    .line 411
    :goto_a
    return-void

    .line 366
    :cond_b
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$002(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 368
    if-eqz p1, :cond_1a

    :try_start_12
    const-string v2, "items_lists"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-nez v2, :cond_39

    .line 369
    :cond_1a
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    const/4 v2, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 370
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_25} :catch_26

    goto :goto_a

    .line 406
    :catch_26
    move-exception v0

    .line 407
    const-string v2, "AuthSpaceSideActivity"

    const-string v3, "parse error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 409
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    goto :goto_a

    .line 373
    :cond_39
    :try_start_39
    const-string v2, "items_lists"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 374
    const-string v2, "seasons_list"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 375
    const-string v2, "series_list"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 377
    if-eqz v4, :cond_7e

    move v2, v1

    .line 378
    :goto_4e
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_7e

    .line 379
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 380
    const-string v7, "meta"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 381
    if-eqz v6, :cond_7b

    .line 382
    const-string v7, "name"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 383
    const-string v8, "season_id"

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    .line 384
    iget-object v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;
    invoke-static {v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Ljava/util/List;

    move-result-object v6

    new-instance v10, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    const/4 v11, 0x1

    invoke-direct {v10, v8, v9, v7, v11}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;-><init>(JLjava/lang/String;I)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 388
    :cond_7e
    if-eqz v5, :cond_b1

    move v2, v1

    .line 389
    :goto_81
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_b1

    .line 390
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 391
    const-string v6, "meta"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 392
    if-eqz v4, :cond_ae

    .line 393
    const-string v6, "name"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 394
    const-string v7, "series_id"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    .line 395
    iget-object v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;
    invoke-static {v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Ljava/util/List;

    move-result-object v4

    new-instance v7, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v6, v10}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;-><init>(JLjava/lang/String;I)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_ae
    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    .line 400
    :cond_b1
    const-string v2, "page"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 401
    if-eqz v5, :cond_e0

    const-string v2, "total"

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    move v4, v2

    .line 402
    :goto_c0
    if-eqz v5, :cond_e2

    const-string v2, "page_size"

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    .line 403
    :goto_c9
    if-eqz v5, :cond_e6

    const-string v2, "page_num"

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 404
    :goto_d1
    iget-object v5, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    mul-int/2addr v2, v3

    if-ge v2, v4, :cond_e9

    :goto_d6
    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z
    invoke-static {v5, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 405
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    goto/16 :goto_a

    :cond_e0
    move v4, v1

    .line 401
    goto :goto_c0

    .line 402
    :cond_e2
    const/16 v2, 0x14

    move v3, v2

    goto :goto_c9

    .line 403
    :cond_e6
    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->val$pageNum:I
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_e8} :catch_26

    goto :goto_d1

    :cond_e9
    move v0, v1

    .line 404
    goto :goto_d6
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 360
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 421
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$200(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    move-result-object v0

    if-nez v0, :cond_11

    .line 427
    :goto_10
    return-void

    .line 424
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$002(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 425
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 426
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    goto :goto_10
.end method
