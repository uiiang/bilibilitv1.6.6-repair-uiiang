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
    .line 253
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 267
    if-eqz p1, :cond_1b

    .line 268
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    const/16 v4, 0x3e8

    move v0, v1

    .line 271
    :goto_b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1b

    .line 272
    add-int v5, v0, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_19

    .line 271
    :cond_19
    add-int/2addr v0, v4

    goto :goto_b

    .line 280
    :cond_1b
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_24

    .line 319
    :cond_23
    :goto_23
    return-void

    .line 283
    :cond_24
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->j()V

    .line 284
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$002(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 286
    if-nez p1, :cond_36

    .line 287
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    goto :goto_23

    .line 291
    :cond_36
    const-string v0, "cursor"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 292
    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$400(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)J

    move-result-wide v4

    .line 294
    if-eqz v0, :cond_90

    .line 295
    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v6, "max"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J
    invoke-static {v3, v6, v7}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$402(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J

    .line 296
    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v6, "view_at"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J
    invoke-static {v3, v6, v7}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$502(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J

    .line 297
    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const-string v6, "business"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$602(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 303
    :goto_6a
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_a0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a0

    .line 305
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_7f

    move v1, v2

    .line 306
    :cond_7f
    if-eqz v1, :cond_96

    .line 307
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a(Lcom/alibaba/fastjson/JSONArray;)V

    .line 311
    :goto_8a
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # invokes: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->updateHeaderInfo()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$700(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V

    goto :goto_23

    .line 300
    :cond_90
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    goto :goto_6a

    .line 309
    :cond_96
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->b(Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_8a

    .line 313
    :cond_a0
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 314
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a()I

    move-result v0

    if-nez v0, :cond_23

    .line 315
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->l()V

    .line 316
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->a(I)V

    goto/16 :goto_23
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 253
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 256
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
    .line 261
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$002(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z

    .line 262
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 263
    return-void
.end method
