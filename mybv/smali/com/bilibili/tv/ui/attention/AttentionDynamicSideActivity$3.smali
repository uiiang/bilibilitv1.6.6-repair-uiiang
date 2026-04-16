.class Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;
.super Lbl/vn;
.source "AttentionDynamicSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadTagList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/alibaba/fastjson/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 355
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isLoadingTags:Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$702(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z

    .line 357
    if-eqz p1, :cond_58

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_58

    .line 358
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->tagItems:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$800(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 359
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->tagItems:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$800(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;

    const-wide/16 v4, -0x1

    const-string v3, "\u5168\u90e8\u5173\u6ce8"

    invoke-direct {v2, v4, v5, v3, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;-><init>(JLjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :goto_29
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    .line 362
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 363
    const-string v2, "count"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 364
    if-lez v2, :cond_55

    .line 365
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->tagItems:Ljava/util/List;
    invoke-static {v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$800(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;

    const-string v5, "tagid"

    .line 366
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    const-string v5, "name"

    .line 367
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v7, v1, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;-><init>(JLjava/lang/String;I)V

    .line 365
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 373
    :cond_58
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 352
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->a(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 382
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 383
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isLoadingTags:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$702(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z

    .line 384
    return-void
.end method
