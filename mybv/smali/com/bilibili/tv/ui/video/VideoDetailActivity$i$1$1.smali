.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->onUGCSeasonLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;)V
    .locals 0

    .prologue
    .line 2298
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v7, 0x7f080171

    const v6, 0x7f08008d

    const/4 v2, 0x0

    const v5, 0x7f080155

    const/4 v1, 0x1

    .line 2301
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->allSectionEpisodes:Ljava/util/List;

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->allSectionEpisodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a6

    move v0, v1

    .line 2302
    :goto_20
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget-object v3, v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v3, :cond_a9

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget-object v3, v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a9

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget-object v3, v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_a9

    move v3, v1

    .line 2303
    :goto_41
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget-object v4, v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v4, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    if-eqz v4, :cond_ab

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget-object v4, v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v4, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 2305
    :goto_55
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 2306
    if-eqz v2, :cond_71

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_71

    .line 2307
    if-eqz v0, :cond_ad

    .line 2308
    invoke-virtual {v2, v7}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 2314
    :goto_6c
    if-eqz v0, :cond_b7

    .line 2315
    invoke-virtual {v2, v7}, Landroid/support/v7/widget/RecyclerView;->setNextFocusDownId(I)V

    .line 2321
    :cond_71
    :goto_71
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 2322
    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8e

    .line 2323
    if-eqz v3, :cond_bd

    .line 2324
    const v4, 0x7f080149

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 2330
    :goto_89
    if-eqz v1, :cond_8e

    .line 2331
    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setNextFocusDownId(I)V

    .line 2335
    :cond_8e
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 2336
    if-eqz v1, :cond_a5

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a5

    .line 2337
    if-eqz v0, :cond_c7

    .line 2338
    invoke-virtual {v1, v7}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 2345
    :cond_a5
    :goto_a5
    return-void

    :cond_a6
    move v0, v2

    .line 2301
    goto/16 :goto_20

    :cond_a9
    move v3, v2

    .line 2302
    goto :goto_41

    :cond_ab
    move v1, v2

    .line 2303
    goto :goto_55

    .line 2309
    :cond_ad
    if-eqz v1, :cond_b3

    .line 2310
    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    goto :goto_6c

    .line 2312
    :cond_b3
    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    goto :goto_6c

    .line 2316
    :cond_b7
    if-eqz v1, :cond_71

    .line 2317
    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setNextFocusDownId(I)V

    goto :goto_71

    .line 2325
    :cond_bd
    if-eqz v1, :cond_c3

    .line 2326
    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    goto :goto_89

    .line 2328
    :cond_c3
    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    goto :goto_89

    .line 2339
    :cond_c7
    if-eqz v3, :cond_d0

    .line 2340
    const v0, 0x7f080149

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    goto :goto_a5

    .line 2342
    :cond_d0
    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    goto :goto_a5
.end method
