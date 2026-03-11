.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createSeasonSectionView(Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;IILcom/bilibili/tv/api/video/BiliVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

.field final synthetic val$finalCurrentPosition:I

.field final synthetic val$finalSectionId:I

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 2566
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$finalCurrentPosition:I

    iput p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$finalSectionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2569
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_61

    .line 2570
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2571
    if-eqz v0, :cond_61

    .line 2572
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2573
    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$finalCurrentPosition:I

    mul-int/2addr v0, v2

    .line 2574
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 2578
    :try_start_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 2579
    const/4 v2, -0x1

    .line 2580
    :goto_24
    if-ge v1, v3, :cond_78

    .line 2581
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2582
    if-nez v0, :cond_31

    .line 2580
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 2583
    :cond_31
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2584
    instance-of v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v4, :cond_2e

    .line 2585
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 2586
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_2e

    move v0, v1

    .line 2593
    :goto_4a
    if-ltz v0, :cond_62

    .line 2598
    :goto_4c
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$finalSectionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2604
    :cond_61
    :goto_61
    return-void

    .line 2596
    :cond_62
    const/4 v0, 0x0

    iget v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$finalCurrentPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_74} :catch_76

    move-result v0

    goto :goto_4c

    .line 2599
    :catch_76
    move-exception v0

    goto :goto_61

    :cond_78
    move v0, v2

    goto :goto_4a
.end method
