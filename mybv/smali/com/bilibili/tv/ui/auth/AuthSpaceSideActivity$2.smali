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
    .line 248
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->val$pageNum:I

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 251
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;
    invoke-static {v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$200(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    move-result-object v2

    if-nez v2, :cond_b

    .line 298
    :goto_a
    return-void

    .line 254
    :cond_b
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$002(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 256
    if-eqz p1, :cond_1a

    :try_start_12
    const-string v2, "items_lists"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-nez v2, :cond_32

    .line 257
    :cond_1a
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    const/4 v2, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 258
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_25} :catch_26

    goto :goto_a

    .line 294
    :catch_26
    move-exception v0

    .line 295
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 296
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    goto :goto_a

    .line 261
    :cond_32
    :try_start_32
    const-string v2, "items_lists"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 262
    const-string v2, "seasons_list"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 263
    const-string v2, "series_list"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 265
    if-eqz v4, :cond_77

    move v2, v1

    .line 266
    :goto_47
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_77

    .line 267
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 268
    const-string v7, "meta"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 269
    if-eqz v6, :cond_74

    .line 270
    const-string v7, "name"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 271
    const-string v8, "season_id"

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    .line 272
    iget-object v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;
    invoke-static {v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Ljava/util/List;

    move-result-object v6

    new-instance v10, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    const/4 v11, 0x1

    invoke-direct {v10, v8, v9, v7, v11}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;-><init>(JLjava/lang/String;I)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 276
    :cond_77
    if-eqz v5, :cond_aa

    move v2, v1

    .line 277
    :goto_7a
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_aa

    .line 278
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 279
    const-string v6, "meta"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 280
    if-eqz v4, :cond_a7

    .line 281
    const-string v6, "name"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 282
    const-string v7, "series_id"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    .line 283
    iget-object v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;
    invoke-static {v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Ljava/util/List;

    move-result-object v4

    new-instance v7, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v6, v10}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;-><init>(JLjava/lang/String;I)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    .line 288
    :cond_aa
    const-string v2, "page"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 289
    if-eqz v5, :cond_d9

    const-string v2, "total"

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    move v4, v2

    .line 290
    :goto_b9
    if-eqz v5, :cond_db

    const-string v2, "page_size"

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    .line 291
    :goto_c2
    if-eqz v5, :cond_df

    const-string v2, "page_num"

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 292
    :goto_ca
    iget-object v5, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    mul-int/2addr v2, v3

    if-ge v2, v4, :cond_e2

    :goto_cf
    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z
    invoke-static {v5, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 293
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    goto/16 :goto_a

    :cond_d9
    move v4, v1

    .line 289
    goto :goto_b9

    .line 290
    :cond_db
    const/16 v2, 0x14

    move v3, v2

    goto :goto_c2

    .line 291
    :cond_df
    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->val$pageNum:I
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_e1} :catch_26

    goto :goto_ca

    :cond_e2
    move v0, v1

    .line 292
    goto :goto_cf
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 248
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 308
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$200(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    move-result-object v0

    if-nez v0, :cond_11

    .line 314
    :goto_10
    return-void

    .line 311
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$002(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 312
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z

    .line 313
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    goto :goto_10
.end method
