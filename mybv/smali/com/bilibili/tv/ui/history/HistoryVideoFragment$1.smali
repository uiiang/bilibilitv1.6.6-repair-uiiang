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
    .line 246
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 261
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v2

    if-nez v2, :cond_b

    .line 298
    :cond_a
    :goto_a
    return-void

    .line 264
    :cond_b
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->j()V

    .line 265
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$002(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 267
    if-nez p1, :cond_1d

    .line 268
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    goto :goto_a

    .line 272
    :cond_1d
    const-string v2, "cursor"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 273
    if-eqz v2, :cond_76

    .line 274
    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v4, "max"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J
    invoke-static {v3, v4, v5}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$402(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J

    .line 275
    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v4, "view_at"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J
    invoke-static {v3, v4, v5}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$502(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J

    .line 276
    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v4, "business"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$602(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 282
    :goto_4b
    const-string v2, "list"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 283
    if-eqz v2, :cond_88

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_88

    .line 284
    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$400(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_7c

    .line 285
    :goto_65
    if-eqz v0, :cond_7e

    .line 286
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a(Lcom/alibaba/fastjson/JSONArray;)V

    .line 290
    :goto_70
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # invokes: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->updateHeaderInfo()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$700(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V

    goto :goto_a

    .line 279
    :cond_76
    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v2, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    goto :goto_4b

    :cond_7c
    move v0, v1

    .line 284
    goto :goto_65

    .line 288
    :cond_7e
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->b(Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_70

    .line 292
    :cond_88
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 293
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a()I

    move-result v0

    if-nez v0, :cond_a

    .line 294
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->l()V

    .line 295
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->a(I)V

    goto/16 :goto_a
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 246
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 249
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
    .line 254
    const-string v0, "HistoryVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadHistoryData error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$002(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 256
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 257
    return-void
.end method
