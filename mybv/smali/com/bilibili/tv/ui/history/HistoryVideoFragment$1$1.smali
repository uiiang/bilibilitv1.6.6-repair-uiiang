.class Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;
.super Ljava/lang/Object;
.source "HistoryVideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

.field final synthetic val$list:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 278
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iput-object p2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->val$list:Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 281
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_f

    .line 319
    :cond_e
    :goto_e
    return-void

    .line 284
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->j()V

    .line 285
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z
    invoke-static {v0, v5}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$002(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 287
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->val$list:Lcom/alibaba/fastjson/JSONArray;

    if-nez v0, :cond_30

    .line 289
    const-string v0, "HistoryVideoFragment"

    const-string v1, "App history load failed, fallback to web"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # invokes: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadWebHistory()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$400(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V

    goto :goto_e

    .line 294
    :cond_30
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$500(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)J

    move-result-wide v6

    .line 295
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->val$list:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 296
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v5}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 297
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a()I

    move-result v0

    if-nez v0, :cond_e

    .line 298
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->l()V

    .line 299
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->a(I)V

    goto :goto_e

    .line 305
    :cond_67
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->val$list:Lcom/alibaba/fastjson/JSONArray;

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->val$list:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 306
    const-string v0, "history"

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v9, v1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    if-eqz v0, :cond_c4

    const-string v1, "oid"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    :goto_87
    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J
    invoke-static {v9, v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$502(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J

    .line 308
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v1, "view_at"

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J
    invoke-static {v0, v8, v9}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$602(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J

    .line 309
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v1, ""

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$702(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v4}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 312
    cmp-long v0, v6, v2

    if-nez v0, :cond_c6

    move v0, v4

    .line 313
    :goto_ac
    if-eqz v0, :cond_c8

    .line 314
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->val$list:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a(Lcom/alibaba/fastjson/JSONArray;)V

    .line 318
    :goto_bb
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # invokes: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->updateHeaderInfo()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$800(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V

    goto/16 :goto_e

    :cond_c4
    move-wide v0, v2

    .line 307
    goto :goto_87

    :cond_c6
    move v0, v5

    .line 312
    goto :goto_ac

    .line 316
    :cond_c8
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->this$1:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1$1;->val$list:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->b(Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_bb
.end method
