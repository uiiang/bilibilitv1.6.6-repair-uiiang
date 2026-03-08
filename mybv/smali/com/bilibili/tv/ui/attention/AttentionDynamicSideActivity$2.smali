.class Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;
.super Lbl/vn;
.source "AttentionDynamicSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadFollowings()V
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 242
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    move-result-object v0

    if-nez v0, :cond_b

    .line 270
    :goto_a
    return-void

    .line 246
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z
    invoke-static {v0, v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$002(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z

    .line 248
    if-eqz p1, :cond_26

    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_39

    .line 249
    :cond_26
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)I

    move-result v0

    if-ne v0, v7, :cond_2e

    .line 252
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z
    invoke-static {v0, v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z

    .line 253
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # invokes: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->updateUperList()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$500(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    goto :goto_a

    .line 257
    :cond_39
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    move v0, v6

    .line 258
    :goto_40
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6d

    .line 259
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 260
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$600(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Ljava/util/List;

    move-result-object v9

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    const-string v2, "mid"

    .line 261
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "uname"

    .line 262
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "face"

    .line 263
    invoke-virtual {v5, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 260
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 268
    :cond_6d
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_78

    move v6, v7

    :cond_78
    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z
    invoke-static {v0, v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z

    .line 269
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # invokes: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->updateUperList()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$500(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    goto :goto_a
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 239
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 280
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    move-result-object v0

    if-nez v0, :cond_10

    .line 285
    :goto_f
    return-void

    .line 283
    :cond_10
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$002(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z

    .line 284
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # invokes: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->updateUperList()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$500(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    goto :goto_f
.end method
