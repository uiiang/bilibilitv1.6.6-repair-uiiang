.class public Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;
.super Ljava/lang/Object;
.source "SearchResultVideoFragment.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchBangumiResponse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 752
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 753
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse$1;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 760
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 766
    if-eqz v0, :cond_2a

    .line 767
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 768
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 769
    const-string v1, "SearchResultVideoFrag_SearchBangumi_Response"

    invoke-static {v1, v0}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 770
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 771
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 772
    new-instance v3, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse$2;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;ILcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 794
    :cond_2a
    :goto_2a
    return-void

    .line 784
    :catch_2b
    move-exception v0

    .line 785
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 786
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse$3;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a
.end method
