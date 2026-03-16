.class Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;
.super Lbl/vn;
.source "AttentionDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->loadAllDynamic()V
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 280
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v1

    if-nez v1, :cond_b

    .line 310
    :cond_a
    :goto_a
    return-void

    .line 283
    :cond_b
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->j()V

    .line 284
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 285
    if-eqz p1, :cond_9a

    const-string v1, "items"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_9a

    const-string v1, "items"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_9a

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    :goto_30
    const-string v2, "items"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 288
    const-string v2, "items"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "modules"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 290
    :cond_52
    const-string v0, "\u52a8\u6001"

    invoke-static {v1, v0}, Lmybl/BiliFilter;->filterUpperFeedJSONItem(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v1

    if-ne v1, v4, :cond_90

    .line 292
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Ljava/util/List;)V

    .line 296
    :goto_69
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const-string v1, "has_more"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 297
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const-string v1, "offset"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->offset:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$502(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_a

    .line 301
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_a

    .line 294
    :cond_90
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->b(Ljava/util/List;)V

    goto :goto_69

    .line 305
    :cond_9a
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 306
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 307
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->l()V

    .line 308
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(I)V

    goto/16 :goto_a
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 277
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 319
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 320
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    move-result-object v0

    if-nez v0, :cond_14

    .line 327
    :cond_13
    :goto_13
    return-void

    .line 323
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    .line 324
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 325
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->k()V

    goto :goto_13
.end method
