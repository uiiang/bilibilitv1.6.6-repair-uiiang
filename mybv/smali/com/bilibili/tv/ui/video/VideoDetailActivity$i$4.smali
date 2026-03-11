.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->scrollToCurrentVideo(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

.field final synthetic val$currentAid:J

.field final synthetic val$finalTargetPosition:I

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Landroid/support/v7/widget/RecyclerView;IJ)V
    .locals 0

    .prologue
    .line 2594
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$finalTargetPosition:I

    iput-wide p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$currentAid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 2597
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4b

    .line 2598
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2599
    if-eqz v1, :cond_4b

    .line 2600
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2601
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$finalTargetPosition:I

    mul-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 2603
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    move v1, v0

    .line 2604
    :goto_24
    if-ge v1, v2, :cond_4b

    .line 2605
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2606
    if-nez v0, :cond_32

    .line 2604
    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 2607
    :cond_32
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2608
    instance-of v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v3, :cond_2e

    .line 2609
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 2610
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->val$currentAid:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2e

    .line 2611
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$4;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$802(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    .line 2618
    :cond_4b
    return-void
.end method
