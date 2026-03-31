.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createSeasonsSectionView(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic val$sectionId:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 2452
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$sectionId:I

    iput-object p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2455
    if-eqz p2, :cond_38

    .line 2457
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$sectionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2458
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$sectionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2460
    :goto_2b
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->restoreFocusPosition(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    invoke-static {v2, v3, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    .line 2461
    if-eqz v0, :cond_39

    .line 2462
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2467
    :cond_38
    :goto_38
    return-void

    .line 2463
    :cond_39
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_38

    .line 2464
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_38

    :cond_4b
    move v0, v1

    goto :goto_2b
.end method
