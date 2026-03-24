.class Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2$2;
.super Ljava/lang/Object;
.source "SearchResultContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2;

.field final synthetic val$code:I

.field final synthetic val$json:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2;ILcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2$2;->this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2;

    iput p2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2$2;->val$code:I

    iput-object p3, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2$2;->val$json:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2$2;->this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->access$002(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;Z)Z

    .line 423
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2$2;->val$code:I

    if-nez v0, :cond_16

    .line 424
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2$2;->this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2$2;->val$json:Lcom/alibaba/fastjson/JSONObject;

    # invokes: Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->handleBangumiResponse(Lcom/alibaba/fastjson/JSONObject;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->access$500(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;Lcom/alibaba/fastjson/JSONObject;)V

    .line 428
    :goto_15
    return-void

    .line 426
    :cond_16
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2$2;->this$1:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->k()V

    goto :goto_15
.end method
