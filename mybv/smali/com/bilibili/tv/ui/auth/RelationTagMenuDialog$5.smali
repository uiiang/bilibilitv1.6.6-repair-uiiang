.class Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;
.super Lbl/vn;
.source "RelationTagMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->loadRelationTagsWithSelection(Ljava/lang/String;Lmybl/MyBiliApiService;Ljava/util/List;)V
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

.field final synthetic val$currentTagIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    iput-object p2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;->val$currentTagIds:Ljava/util/List;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 6

    .prologue
    .line 190
    if-eqz p1, :cond_66

    .line 191
    const-string v0, "RelationTagMenuDialog"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->tagItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$700(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    .line 195
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 196
    new-instance v2, Lmybl/RelationTagItem;

    invoke-direct {v2}, Lmybl/RelationTagItem;-><init>()V

    .line 197
    const-string v3, "tagid"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lmybl/RelationTagItem;->setTagid(J)V

    .line 198
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmybl/RelationTagItem;->setName(Ljava/lang/String;)V

    .line 199
    const-string v3, "count"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lmybl/RelationTagItem;->setCount(I)V

    .line 200
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;->val$currentTagIds:Ljava/util/List;

    invoke-virtual {v2}, Lmybl/RelationTagItem;->getTagid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 201
    invoke-virtual {v2, v1}, Lmybl/RelationTagItem;->setSelected(Z)V

    .line 202
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->tagItems:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$700(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 205
    :cond_58
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$500(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5$1;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    :cond_66
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 187
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;->a(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$500(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$500(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 234
    const-string v0, "RelationTagMenuDialog"

    const-string v1, "Failed to load relation tags"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    return-void
.end method
