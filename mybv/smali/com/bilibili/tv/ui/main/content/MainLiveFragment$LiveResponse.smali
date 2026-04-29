.class Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;
.super Lbl/vn;
.source "MainLiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainLiveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveResponse"
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
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 173
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-eqz v0, :cond_9

    if-nez p1, :cond_e

    .line 178
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    .line 225
    :goto_d
    return-void

    .line 182
    :cond_e
    const-string v0, "room_list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 183
    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 184
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->hasMoreData:Z

    .line 185
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    goto :goto_d

    .line 189
    :cond_25
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 190
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    # invokes: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->createLiveCategoryEntry(Landroid/content/Context;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$000(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Landroid/content/Context;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 194
    :goto_3f
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_93

    .line 195
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 196
    const-string v2, "module_info"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_7b

    const-string v7, "title"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    :goto_57
    const-string v7, "list"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 200
    if-eqz v7, :cond_90

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_90

    move v3, v1

    .line 201
    :goto_66
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_90

    .line 202
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 203
    const-string v9, "is_ad"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v9

    .line 204
    if-eqz v9, :cond_7e

    .line 201
    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 197
    :cond_7b
    const-string v2, ""

    goto :goto_57

    .line 207
    :cond_7e
    new-instance v9, Lmybl/BiliLiveContent;

    invoke-direct {v9}, Lmybl/BiliLiveContent;-><init>()V

    .line 208
    iget-object v10, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    # invokes: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->parseLiveItem(Lcom/alibaba/fastjson/JSONObject;Lmybl/BiliLiveContent;Ljava/lang/String;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    invoke-static {v10, v8, v9, v2}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$100(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Lcom/alibaba/fastjson/JSONObject;Lmybl/BiliLiveContent;Ljava/lang/String;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v8

    .line 209
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 194
    :cond_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 215
    :cond_93
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_a4

    .line 216
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->hasMoreData:Z

    .line 217
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    goto/16 :goto_d

    .line 221
    :cond_a4
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v5}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->setData(Ljava/util/List;Ljava/util/List;)V

    .line 222
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;
    invoke-static {v0, v6}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->access$202(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Ljava/util/List;)Ljava/util/List;

    .line 223
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->hasMoreData:Z

    .line 224
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    goto/16 :goto_d
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 170
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 229
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    .line 232
    return-void
.end method
