.class Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;
.super Ljava/lang/Object;
.source "AreaVideoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->a(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

.field final synthetic val$response:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 253
    iput-object p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iput-object p2, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->val$response:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->val$response:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->val$response:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "list"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_bd

    .line 257
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->val$response:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "list"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_a7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a7

    .line 262
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # invokes: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->convertBiliVideoDetailToContentList(Ljava/util/List;)Ljava/util/List;
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$2200(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->ugcList:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$2300(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 266
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->ogvList:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$2400(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 269
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->ugcList:Ljava/util/List;
    invoke-static {v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$2500(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$2600(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    move-result-object v1

    if-eqz v1, :cond_67

    .line 273
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$2700(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->d()V

    .line 276
    :cond_67
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # setter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$2802(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z

    .line 277
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v1, v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # setter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$2902(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z

    .line 279
    const-string v1, "AreaVideoListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " precious videos"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1$1;-><init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 304
    :goto_a6
    return-void

    .line 295
    :cond_a7
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # setter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$3202(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z

    .line 296
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # setter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$3302(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z

    .line 297
    const-string v0, "AreaVideoListFragment"

    const-string v1, "No precious videos loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 300
    :cond_bd
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # setter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$3402(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z

    .line 301
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # setter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$3502(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z

    .line 302
    const-string v0, "AreaVideoListFragment"

    const-string v1, "Precious API response is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6
.end method
