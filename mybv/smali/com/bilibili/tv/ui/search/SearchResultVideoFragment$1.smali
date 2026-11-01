.class Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$1;
.super Ljava/lang/Object;
.source "SearchResultVideoFragment.java"

# interfaces
.implements Lmybl/WbiSigner$WbiSignCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->enqueueSignedSearch(Ljava/util/TreeMap;Ljava/lang/String;Lokhttp3/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

.field final synthetic val$cookie:Ljava/lang/String;

.field final synthetic val$referer:Ljava/lang/String;

.field final synthetic val$responseCallback:Lokhttp3/Callback;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 396
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$1;->val$cookie:Ljava/lang/String;

    iput-object p3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$1;->val$referer:Ljava/lang/String;

    iput-object p4, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$1;->val$responseCallback:Lokhttp3/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignError(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 415
    const-string v0, "SearchResultVideoFrag"

    const-string v1, "WBI sign failed, abort search request"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$002(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Z)Z

    .line 417
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$500(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 418
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$500(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    .line 420
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 421
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u641c\u7d22\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 423
    :cond_35
    return-void
.end method

.method public onSignReady(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 399
    if-nez p1, :cond_d

    .line 400
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "signedQuery is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$1;->onSignError(Ljava/lang/Exception;)V

    .line 411
    :goto_c
    return-void

    .line 403
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    const-string v1, "SearchResultVideoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== Search URL ===\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmybl/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Cookie"

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$1;->val$cookie:Ljava/lang/String;

    .line 406
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Referer"

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$1;->val$referer:Ljava/lang/String;

    .line 407
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 408
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 410
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$1;->val$responseCallback:Lokhttp3/Callback;

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_c
.end method
