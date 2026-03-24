.class Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse$2;
.super Ljava/lang/Object;
.source "SearchResultVideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;

.field final synthetic val$code:I

.field final synthetic val$json:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;ILcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse$2;->this$1:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;

    iput p2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse$2;->val$code:I

    iput-object p3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse$2;->val$json:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 766
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse$2;->val$code:I

    if-nez v0, :cond_f

    .line 767
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse$2;->this$1:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse$2;->val$json:Lcom/alibaba/fastjson/JSONObject;

    # invokes: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->handleLiveRoomResponse(Lcom/alibaba/fastjson/JSONObject;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$800(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Lcom/alibaba/fastjson/JSONObject;)V

    .line 772
    :goto_e
    return-void

    .line 769
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse$2;->this$1:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$002(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Z)Z

    .line 770
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse$2;->this$1:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$500(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    goto :goto_e
.end method
