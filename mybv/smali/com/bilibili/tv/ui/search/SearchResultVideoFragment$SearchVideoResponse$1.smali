.class Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse$1;
.super Ljava/lang/Object;
.source "SearchResultVideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse$1;->this$1:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 633
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse$1;->this$1:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$002(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Z)Z

    .line 634
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse$1;->this$1:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->access$500(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    .line 635
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse$1;->this$1:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 636
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse$1;->this$1:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;->this$0:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u641c\u7d22\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 638
    :cond_2e
    return-void
.end method
