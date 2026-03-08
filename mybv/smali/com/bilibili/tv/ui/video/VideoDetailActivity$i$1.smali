.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->showEpisodes(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

.field final synthetic val$finalCurrentPosition:I

.field final synthetic val$recyclerView2:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 2334
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iput p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$finalCurrentPosition:I

    iput-object p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$recyclerView2:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2337
    const-string v0, "VideoDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u6eda\u52a8 - \u76ee\u6807\u4f4d\u7f6e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$finalCurrentPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u5b50\u89c6\u56fe\u6570\u91cf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$recyclerView2:Landroid/support/v7/widget/RecyclerView;

    .line 2338
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2337
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$recyclerView2:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_10f

    .line 2341
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$recyclerView2:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2342
    if-eqz v0, :cond_107

    .line 2343
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2344
    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$finalCurrentPosition:I

    mul-int/2addr v2, v0

    .line 2345
    const-string v3, "VideoDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6eda\u52a8\u53c2\u6570 - \u5b50\u89c6\u56fe\u5bbd\u5ea6: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", \u76ee\u6807\u504f\u79fb\u91cf: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$recyclerView2:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 2350
    const-string v0, "VideoDetailActivity"

    const-string v2, "\u6eda\u52a8\u5b8c\u6210"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    :try_start_70
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$recyclerView2:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 2354
    const/4 v2, -0x1

    .line 2355
    :goto_77
    if-ge v1, v3, :cond_117

    .line 2356
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$recyclerView2:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2357
    if-nez v0, :cond_84

    .line 2355
    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 2359
    :cond_84
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2360
    instance-of v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v4, :cond_81

    .line 2361
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 2362
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_81

    move v0, v1

    .line 2369
    :goto_9d
    if-ltz v0, :cond_d5

    .line 2375
    :goto_9f
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$802(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    .line 2376
    const-string v1, "VideoDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bb0\u5f55\u7126\u70b9\u5b50\u7d22\u5f15(by tag search): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (visibleChildren="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$recyclerView2:Landroid/support/v7/widget/RecyclerView;

    .line 2377
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2376
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :goto_d4
    return-void

    .line 2372
    :cond_d5
    const/4 v0, 0x0

    iget v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$finalCurrentPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$recyclerView2:Landroid/support/v7/widget/RecyclerView;

    .line 2373
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 2372
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_e7} :catch_e9

    move-result v0

    goto :goto_9f

    .line 2378
    :catch_e9
    move-exception v0

    .line 2379
    const-string v1, "VideoDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bb0\u5f55\u7126\u70b9\u4f4d\u7f6e\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 2382
    :cond_107
    const-string v0, "VideoDetailActivity"

    const-string v1, "\u7b2c\u4e00\u4e2a\u5b50\u89c6\u56fe\u4e3anull"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 2385
    :cond_10f
    const-string v0, "VideoDetailActivity"

    const-string v1, "\u6ca1\u6709\u5b50\u89c6\u56fe\u53ef\u6eda\u52a8"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    :cond_117
    move v0, v2

    goto :goto_9d
.end method
