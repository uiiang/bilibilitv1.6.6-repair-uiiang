.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createRelateVideoSectionView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;)V
    .locals 0

    .prologue
    .line 5206
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusExitDown(II)V
    .locals 3

    .prologue
    .line 5255
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionNavTagFocusPositions:Ljava/util/Map;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5257
    const/4 v2, -0x1

    .line 5258
    const/4 v0, 0x0

    move v1, v0

    :goto_16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a7

    .line 5259
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    if-ne v0, p1, :cond_75

    .line 5266
    :goto_36
    if-ltz v1, :cond_83

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_83

    .line 5267
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 5269
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v1

    .line 5270
    if-eqz v1, :cond_79

    .line 5271
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setFocusPosition(I)V

    .line 5272
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnSavedPosition()Z

    .line 5281
    :cond_74
    :goto_74
    return-void

    .line 5258
    :cond_75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 5273
    :cond_79
    iget-object v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_74

    .line 5274
    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    goto :goto_74

    .line 5276
    :cond_83
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_74

    .line 5278
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    goto :goto_74

    :cond_a7
    move v1, v2

    goto :goto_36
.end method

.method public onFocusExitUp(II)V
    .locals 3

    .prologue
    .line 5211
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5213
    const/4 v2, -0x1

    .line 5214
    const/4 v0, 0x0

    move v1, v0

    :goto_16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_df

    .line 5215
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    if-ne v0, p1, :cond_65

    .line 5228
    :goto_36
    if-lez v1, :cond_73

    .line 5229
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 5231
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v1

    .line 5232
    if-eqz v1, :cond_69

    .line 5233
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setFocusPosition(I)V

    .line 5234
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnSavedPosition()Z

    .line 5249
    :cond_64
    :goto_64
    return-void

    .line 5214
    :cond_65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 5235
    :cond_69
    iget-object v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_64

    .line 5236
    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    goto :goto_64

    .line 5238
    :cond_73
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_97

    .line 5240
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    goto :goto_64

    .line 5241
    :cond_97
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_bb

    .line 5243
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    goto :goto_64

    .line 5244
    :cond_bb
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_64

    .line 5246
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$10;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    goto :goto_64

    :cond_df
    move v1, v2

    goto/16 :goto_36
.end method
