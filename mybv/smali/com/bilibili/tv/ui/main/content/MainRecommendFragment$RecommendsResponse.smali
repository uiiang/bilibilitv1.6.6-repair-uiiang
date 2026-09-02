.class Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;
.super Lbl/vn;
.source "MainRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecommendsResponse"
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

.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)V
    .locals 1

    .prologue
    .line 268
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 269
    iput-boolean p2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->isAppendMode:Z

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->isPrefetch:Z

    .line 271
    return-void
.end method

.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;ZZ)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 274
    iput-boolean p2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->isAppendMode:Z

    .line 275
    iput-boolean p3, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->isPrefetch:Z

    .line 276
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    const-string v0, "item"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-nez v0, :cond_23

    .line 281
    :cond_14
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->isPrefetch:Z

    if-eqz v0, :cond_1e

    .line 282
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->onPrefetchError()V

    .line 319
    :goto_1d
    return-void

    .line 284
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    goto :goto_1d

    .line 289
    :cond_23
    const-string v0, "item"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 291
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v0, v5, :cond_33

    .line 292
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->hasMoreData:Z

    .line 295
    :cond_33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    aput-object v4, v0, v1

    const/4 v3, 0x1

    aput-object v4, v0, v3

    const/4 v3, 0x2

    aput-object v4, v0, v3

    const/4 v3, 0x3

    aput-object v4, v0, v3

    const/4 v3, 0x4

    aput-object v4, v0, v3

    .line 296
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 297
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 299
    :goto_53
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_69

    .line 300
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 301
    iget-object v6, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # invokes: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->parseRecommendItem(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    invoke-static {v6, v5}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$100(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v5

    .line 302
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 305
    :cond_69
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->isPrefetch:Z

    if-eqz v0, :cond_7b

    .line 307
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    sget v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->fresh_idx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->fresh_idx:I

    .line 308
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->onPrefetchSuccess(Ljava/util/List;)V

    goto :goto_1d

    .line 312
    :cond_7b
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->isAppendMode:Z

    if-eqz v0, :cond_8b

    .line 313
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->appendData(Ljava/util/List;)V

    .line 318
    :goto_86
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    goto :goto_1d

    .line 315
    :cond_8b
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->setData(Ljava/util/List;Ljava/util/List;)V

    goto :goto_86
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 264
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 323
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->isPrefetch:Z

    if-eqz v0, :cond_1c

    .line 326
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->onPrefetchError()V

    .line 330
    :goto_1b
    return-void

    .line 328
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    goto :goto_1b
.end method
