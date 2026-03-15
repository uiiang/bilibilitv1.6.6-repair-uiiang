.class Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;
.super Lbl/vn;
.source "HistoryVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadHistoryData()V
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 272
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v2

    if-nez v2, :cond_b

    .line 326
    :cond_a
    :goto_a
    return-void

    .line 275
    :cond_b
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->j()V

    .line 276
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$002(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 278
    const-string v2, "HistoryVideoFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponse: adapter.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v4}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-nez p1, :cond_46

    .line 281
    const-string v0, "HistoryVideoFragment"

    const-string v2, "onResponse: response is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    goto :goto_a

    .line 286
    :cond_46
    const-string v2, "cursor"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 287
    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$400(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)J

    move-result-wide v4

    .line 288
    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$500(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)J

    move-result-wide v6

    .line 289
    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$600(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/lang/String;

    move-result-object v3

    .line 291
    if-eqz v2, :cond_17f

    .line 292
    iget-object v8, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v9, "max"

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J
    invoke-static {v8, v10, v11}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$402(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J

    .line 293
    iget-object v8, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v9, "view_at"

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J
    invoke-static {v8, v10, v11}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$502(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J

    .line 294
    iget-object v8, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v9, "business"

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;
    invoke-static {v8, v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$602(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 296
    const-string v2, "HistoryVideoFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResponse: cursor updated, oldMax="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newMax="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J
    invoke-static {v9}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$400(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", oldViewAt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newViewAt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    .line 297
    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J
    invoke-static {v7}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$500(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", oldBusiness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", newBusiness="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    .line 298
    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;
    invoke-static {v6}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$600(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_e2
    const-string v2, "list"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 305
    if-eqz v2, :cond_1a0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a0

    .line 306
    const-string v3, "HistoryVideoFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResponse: list size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isFirstLoad\u5224\u65ad\u65f6oldCursorMax="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_18d

    .line 308
    :goto_11c
    const-string v1, "HistoryVideoFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResponse: isFirstLoad="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " (oldCursorMax="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-eqz v0, :cond_18f

    .line 310
    const-string v0, "HistoryVideoFragment"

    const-string v1, "onResponse: calling adapter.a(list) - \u6e05\u7a7a\u540e\u6dfb\u52a0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a(Lcom/alibaba/fastjson/JSONArray;)V

    .line 316
    :goto_156
    const-string v0, "HistoryVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse: after update, adapter.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # invokes: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->updateHeaderInfo()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$700(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V

    goto/16 :goto_a

    .line 300
    :cond_17f
    const-string v2, "HistoryVideoFragment"

    const-string v3, "onResponse: cursor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    goto/16 :goto_e2

    :cond_18d
    move v0, v1

    .line 307
    goto :goto_11c

    .line 313
    :cond_18f
    const-string v0, "HistoryVideoFragment"

    const-string v1, "onResponse: calling adapter.b(list) - \u8ffd\u52a0\u6570\u636e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->b(Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_156

    .line 319
    :cond_1a0
    const-string v0, "HistoryVideoFragment"

    const-string v2, "onResponse: list is null or empty"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 321
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a()I

    move-result v0

    if-nez v0, :cond_a

    .line 322
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->l()V

    .line 323
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->a(I)V

    goto/16 :goto_a
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 258
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 261
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
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$002(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 267
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 268
    return-void
.end method
