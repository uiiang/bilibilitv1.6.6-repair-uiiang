.class Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3;
.super Ljava/lang/Object;
.source "SearchResultContentFragment.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->searchMovie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_9

    .line 524
    :goto_8
    return-void

    .line 517
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3$1;-><init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_1c

    .line 531
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 533
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 535
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 559
    :cond_1c
    :goto_1c
    return-void

    .line 536
    :cond_1d
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3$2;-><init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3;ILcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_1c

    .line 548
    :catch_2c
    move-exception v0

    .line 549
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 550
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3$3;-><init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method
