.class Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$LegacyFallbackResponse;
.super Lbl/vm;
.source "MainRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyFallbackResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vm",
        "<",
        "Lcom/bilibili/tv/api/main/MainRecommend;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;


# direct methods
.method private constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$LegacyFallbackResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-direct {p0}, Lbl/vm;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$LegacyFallbackResponse;-><init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 255
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$LegacyFallbackResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public onSuccess(Lcom/bilibili/tv/api/main/MainRecommend;)V
    .locals 9

    .prologue
    const/16 v8, 0x14

    .line 227
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$LegacyFallbackResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/bilibili/tv/api/main/MainRecommend;->getData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    .line 251
    :cond_10
    return-void

    .line 230
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    invoke-virtual {p1}, Lcom/bilibili/tv/api/main/MainRecommend;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommend$Data;

    .line 232
    const-string v1, "recommend"

    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommend$Data;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommend$Data;->getBody()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 233
    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommend$Data;->getBody()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/main/MainRecommend$Body;

    .line 234
    new-instance v5, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v5}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 235
    const-string v6, "small_popular_ugc"

    invoke-virtual {v5, v6}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 236
    const-string v6, "av"

    invoke-virtual {v5, v6}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommend$Body;->getParam()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setJumpId(Ljava/lang/Long;)V

    .line 238
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommend$Body;->getCover()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCover(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommend$Body;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommend$Body;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setUri(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommend$Body;->getPlay()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPlay(I)V

    .line 242
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommend$Body;->getDanmaku()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDanmaku(I)V

    .line 243
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 245
    :cond_95
    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommend$Data;->getBody()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_9d
    if-ge v0, v8, :cond_a6

    .line 246
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .line 248
    :cond_a6
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$LegacyFallbackResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$LegacyFallbackResponse;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iget-object v1, v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->ogvList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->setData(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_1e
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 224
    check-cast p1, Lcom/bilibili/tv/api/main/MainRecommend;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$LegacyFallbackResponse;->onSuccess(Lcom/bilibili/tv/api/main/MainRecommend;)V

    return-void
.end method
