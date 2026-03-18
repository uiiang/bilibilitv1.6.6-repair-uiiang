.class Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;
.super Lbl/vn;
.source "WeeklyVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->loadWeeklyVideos()V
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 217
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->access$300(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_a

    .line 240
    :goto_9
    return-void

    .line 220
    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->j()V

    .line 221
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->h:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->access$102(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Z)Z

    .line 222
    if-eqz p1, :cond_57

    .line 223
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 224
    const-string v0, "config"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 226
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 227
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->access$300(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->a(Lcom/alibaba/fastjson/JSONArray;)V

    .line 229
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->access$400(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Ljava/lang/String;

    move-result-object v0

    .line 230
    if-eqz v2, :cond_4d

    const-string v3, "subject"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 231
    const-string v0, "subject"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_4d
    iget-object v2, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->updateHeaderInfo(Ljava/lang/String;I)V

    goto :goto_9

    .line 237
    :cond_57
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->g:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->access$202(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Z)Z

    .line 238
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->l()V

    .line 239
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->a(I)V

    goto :goto_9
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 214
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->access$300(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

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
    .line 249
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 250
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->access$300(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_14

    .line 255
    :goto_13
    return-void

    .line 253
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->access$102(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Z)Z

    .line 254
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->k()V

    goto :goto_13
.end method
