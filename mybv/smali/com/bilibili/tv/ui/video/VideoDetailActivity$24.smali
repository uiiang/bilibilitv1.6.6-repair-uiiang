.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 2713
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusExitDown(II)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2730
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionNavTagFocusPositions:Ljava/util/Map;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2731
    const/4 v3, -0x1

    move v1, v2

    .line 2732
    :goto_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_db

    .line 2733
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    if-ne v0, p1, :cond_67

    .line 2738
    :goto_30
    if-ltz v1, :cond_75

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_75

    .line 2739
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 2740
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v1

    .line 2741
    if-eqz v1, :cond_6b

    .line 2742
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setFocusPosition(I)V

    .line 2743
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnSavedPosition()Z

    .line 2758
    :cond_66
    :goto_66
    return-void

    .line 2732
    :cond_67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 2744
    :cond_6b
    iget-object v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_66

    .line 2745
    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    goto :goto_66

    .line 2748
    :cond_75
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_bd

    .line 2749
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2750
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2751
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_66

    .line 2752
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_66

    .line 2754
    :cond_bd
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_66

    .line 2755
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    goto :goto_66

    :cond_db
    move v1, v3

    goto/16 :goto_30
.end method

.method public onFocusExitUp(II)V
    .locals 3

    .prologue
    .line 2717
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2718
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2f

    .line 2719
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    .line 2725
    :cond_2e
    :goto_2e
    return-void

    .line 2720
    :cond_2f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4d

    .line 2721
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    goto :goto_2e

    .line 2722
    :cond_4d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2e

    .line 2723
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    goto :goto_2e
.end method
