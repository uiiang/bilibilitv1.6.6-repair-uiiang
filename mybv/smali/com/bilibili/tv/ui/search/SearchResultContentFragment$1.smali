.class Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;
.super Ljava/lang/Object;
.source "SearchResultContentFragment.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->searchVideo()V
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
    .line 271
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .prologue
    .line 274
    const-string v0, "SearchResultContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SearchVideo failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_25

    .line 283
    :goto_24
    return-void

    .line 276
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1$1;-><init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_24
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_1c

    .line 290
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 292
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 294
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 318
    :cond_1c
    :goto_1c
    return-void

    .line 295
    :cond_1d
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1$2;-><init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;ILcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_1c

    .line 307
    :catch_2c
    move-exception v0

    .line 308
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 309
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1$3;-><init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method
