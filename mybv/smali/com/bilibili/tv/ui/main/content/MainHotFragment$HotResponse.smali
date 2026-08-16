.class Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;
.super Lbl/vn;
.source "MainHotFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainHotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotResponse"
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
.field private isAppendMode:Z

.field private isPrefetch:Z

.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Z)V
    .locals 1

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 146
    iput-boolean p2, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->isAppendMode:Z

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->isPrefetch:Z

    .line 148
    return-void
.end method

.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainHotFragment;ZZ)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 151
    iput-boolean p2, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->isAppendMode:Z

    .line 152
    iput-boolean p3, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->isPrefetch:Z

    .line 153
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-eqz v0, :cond_b

    if-nez p1, :cond_1a

    .line 158
    :cond_b
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->isPrefetch:Z

    if-eqz v0, :cond_15

    .line 159
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->onPrefetchError()V

    .line 204
    :goto_14
    return-void

    .line 161
    :cond_15
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    iput-boolean v2, v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z

    goto :goto_14

    .line 166
    :cond_1a
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 167
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 168
    :cond_28
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    iput-boolean v2, v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->hasMoreData:Z

    .line 169
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->isPrefetch:Z

    if-eqz v0, :cond_36

    .line 170
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->onPrefetchError()V

    goto :goto_14

    .line 172
    :cond_36
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    iput-boolean v2, v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z

    goto :goto_14

    .line 177
    :cond_3b
    const-string v0, "no_more"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    .line 178
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    if-nez v0, :cond_7f

    move v0, v1

    :goto_46
    iput-boolean v0, v4, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->hasMoreData:Z

    .line 180
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    aput-object v5, v0, v2

    aput-object v5, v0, v1

    const/4 v1, 0x2

    aput-object v5, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    new-instance v4, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v2

    .line 184
    :goto_69
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_81

    .line 185
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 186
    iget-object v6, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    # invokes: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->parseHotItem(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    invoke-static {v6, v5}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$000(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v5

    .line 187
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    :cond_7f
    move v0, v2

    .line 178
    goto :goto_46

    .line 190
    :cond_81
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->isPrefetch:Z

    if-eqz v0, :cond_90

    .line 192
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    # operator++ for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->popularPage:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$108(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)I

    .line 193
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->onPrefetchSuccess(Ljava/util/List;)V

    goto :goto_14

    .line 197
    :cond_90
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->isAppendMode:Z

    if-eqz v0, :cond_a1

    .line 198
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->appendData(Ljava/util/List;)V

    .line 203
    :goto_9b
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    iput-boolean v2, v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z

    goto/16 :goto_14

    .line 200
    :cond_a1
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-virtual {v0, v1, v4}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->setData(Ljava/util/List;Ljava/util/List;)V

    goto :goto_9b
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 141
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 208
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->isPrefetch:Z

    if-eqz v0, :cond_1c

    .line 211
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->onPrefetchError()V

    .line 215
    :goto_1b
    return-void

    .line 213
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z

    goto :goto_1b
.end method
