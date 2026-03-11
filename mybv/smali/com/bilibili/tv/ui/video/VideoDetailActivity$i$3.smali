.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createSectionList(Lcom/bilibili/tv/api/video/BiliVideoDetail;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

.field final synthetic val$currentAid:J

.field final synthetic val$currentSectionIndex:I

.field final synthetic val$finalRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Ljava/util/List;JLandroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .prologue
    .line 2538
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$list:Ljava/util/List;

    iput-wide p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$currentAid:J

    iput-object p5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$finalRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iput p6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$currentSectionIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2541
    const/4 v3, -0x1

    move v1, v2

    .line 2542
    :goto_3
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8e

    .line 2543
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$currentAid:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_4c

    .line 2549
    :goto_1b
    if-ltz v1, :cond_8d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$finalRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8d

    .line 2550
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$finalRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2551
    if-eqz v0, :cond_8d

    .line 2552
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2553
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$finalRecyclerView:Landroid/support/v7/widget/RecyclerView;

    mul-int/2addr v0, v1

    invoke-virtual {v3, v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 2556
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$finalRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    move v1, v2

    .line 2557
    :goto_3e
    if-ge v1, v3, :cond_8d

    .line 2558
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$finalRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2559
    if-nez v0, :cond_50

    .line 2557
    :cond_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3e

    .line 2542
    :cond_4c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2560
    :cond_50
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2561
    instance-of v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v4, :cond_48

    .line 2562
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 2563
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$currentAid:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_48

    .line 2565
    :goto_62
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sectionFocusPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$currentSectionIndex:I

    if-gt v0, v3, :cond_7e

    .line 2566
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sectionFocusPositions:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 2568
    :cond_7e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sectionFocusPositions:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$3;->val$currentSectionIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2575
    :cond_8d
    return-void

    :cond_8e
    move v1, v3

    goto :goto_1b
.end method
