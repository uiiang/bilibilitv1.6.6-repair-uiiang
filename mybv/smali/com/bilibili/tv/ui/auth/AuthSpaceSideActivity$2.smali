.class Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;
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
    .line 275
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->val$pageNum:I

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    const-string v3, "AuthSpaceSide"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMenuPage response: "

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

    invoke-static {v3, v0}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$200(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 327
    :goto_28
    return-void

    .line 278
    :cond_29
    const-string v0, "null"

    goto :goto_15

    .line 282
    :cond_2c
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$002(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 284
    if-eqz p1, :cond_3b

    :try_start_33
    const-string v0, "items_lists"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_6f

    .line 285
    :cond_3b
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 286
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_46} :catch_47

    goto :goto_28

    .line 322
    :catch_47
    move-exception v0

    .line 323
    const-string v1, "AuthSpaceSide"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMenuPage parse error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 325
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    goto :goto_28

    .line 289
    :cond_6f
    :try_start_6f
    const-string v0, "items_lists"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 290
    const-string v0, "seasons_list"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 291
    const-string v0, "series_list"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 293
    if-eqz v4, :cond_b4

    move v0, v2

    .line 294
    :goto_84
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_b4

    .line 295
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 296
    const-string v7, "meta"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 297
    if-eqz v6, :cond_b1

    .line 298
    const-string v7, "name"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 299
    const-string v8, "season_id"

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    .line 300
    iget-object v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;
    invoke-static {v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Ljava/util/List;

    move-result-object v6

    new-instance v10, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    const/4 v11, 0x1

    invoke-direct {v10, v8, v9, v7, v11}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;-><init>(JLjava/lang/String;I)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_b1
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 304
    :cond_b4
    if-eqz v5, :cond_e7

    move v0, v2

    .line 305
    :goto_b7
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_e7

    .line 306
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 307
    const-string v6, "meta"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 308
    if-eqz v4, :cond_e4

    .line 309
    const-string v6, "name"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 310
    const-string v7, "series_id"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    .line 311
    iget-object v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;
    invoke-static {v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Ljava/util/List;

    move-result-object v4

    new-instance v7, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v6, v10}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;-><init>(JLjava/lang/String;I)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_e4
    add-int/lit8 v0, v0, 0x1

    goto :goto_b7

    .line 316
    :cond_e7
    const-string v0, "page"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 317
    if-eqz v5, :cond_117

    const-string v0, "total"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 318
    :goto_f6
    if-eqz v5, :cond_119

    const-string v0, "page_size"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    .line 319
    :goto_ff
    if-eqz v5, :cond_11d

    const-string v0, "page_num"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 320
    :goto_107
    iget-object v5, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    mul-int/2addr v0, v3

    if-ge v0, v4, :cond_120

    move v0, v1

    :goto_10d
    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z
    invoke-static {v5, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 321
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    goto/16 :goto_28

    :cond_117
    move v4, v2

    .line 317
    goto :goto_f6

    .line 318
    :cond_119
    const/16 v0, 0x14

    move v3, v0

    goto :goto_ff

    .line 319
    :cond_11d
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->val$pageNum:I
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_11f} :catch_47

    goto :goto_107

    :cond_120
    move v0, v2

    .line 320
    goto :goto_10d
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 275
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    const-string v0, "AuthSpaceSide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMenuPage error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 338
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$200(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 344
    :goto_2c
    return-void

    .line 341
    :cond_2d
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$002(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 342
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 343
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    goto :goto_2c
.end method
