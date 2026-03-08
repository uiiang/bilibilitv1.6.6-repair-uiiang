.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->d(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

.field final synthetic val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

.field final synthetic val$finalPageIndex:I

.field final synthetic val$recyclerView3:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Landroid/support/v7/widget/RecyclerView;ILcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 2486
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView3:Landroid/support/v7/widget/RecyclerView;

    iput p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$finalPageIndex:I

    iput-object p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2489
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView3:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7c

    .line 2490
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView3:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2491
    if-eqz v0, :cond_7c

    .line 2492
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2493
    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$finalPageIndex:I

    mul-int/2addr v0, v2

    .line 2494
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView3:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 2496
    :try_start_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView3:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    .line 2497
    const/4 v3, -0x1

    move v2, v1

    .line 2498
    :goto_25
    if-ge v2, v4, :cond_9f

    .line 2499
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView3:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2500
    if-nez v0, :cond_32

    .line 2498
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 2501
    :cond_32
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2502
    instance-of v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v5, :cond_2f

    .line 2503
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 2504
    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    if-eqz v5, :cond_2f

    iget-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    const-string v6, "\\[\\d+\\].*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2505
    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 2506
    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 2507
    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_59} :catch_7f

    move-result v6

    .line 2509
    :try_start_5a
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2510
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    iget v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$finalPageIndex:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_70} :catch_9d

    if-ne v5, v0, :cond_2f

    move v0, v2

    .line 2520
    :goto_73
    if-ltz v0, :cond_7d

    .line 2525
    :goto_75
    :try_start_75
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$502(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7c} :catch_7f

    .line 2531
    :cond_7c
    :goto_7c
    return-void

    :cond_7d
    move v0, v1

    .line 2523
    goto :goto_75

    .line 2526
    :catch_7f
    move-exception v0

    .line 2527
    const-string v1, "VideoDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bb0\u5f55\u5206P\u7126\u70b9\u4f4d\u7f6e\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 2514
    :catch_9d
    move-exception v0

    goto :goto_2f

    :cond_9f
    move v0, v3

    goto :goto_73
.end method
