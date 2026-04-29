.class Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;
.super Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;
.source "MainLiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

.field final synthetic val$columnCount:I

.field final synthetic val$fragment:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;Lcom/bilibili/tv/ui/main/content/MainLiveFragment;I)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iput-object p3, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;->val$fragment:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iput p4, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;->val$columnCount:I

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;-><init>(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 241
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 244
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;->val$fragment:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->ugcList:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;->val$fragment:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_13

    .line 285
    :cond_12
    :goto_12
    return-void

    .line 248
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;->val$fragment:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->ugcList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 249
    if-eqz v0, :cond_12

    .line 253
    if-nez p2, :cond_cd

    const-string v1, "bilibili_yst://live_category"

    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 254
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    const v2, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 255
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 257
    instance-of v1, p1, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;

    if-eqz v1, :cond_12

    move-object v1, p1

    .line 258
    check-cast v1, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;

    .line 259
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getCoverView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    const v2, 0x7f070103

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageResource(I)V

    .line 261
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBottomInfoLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 263
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBottomInfoLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 265
    :cond_72
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 266
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    :cond_7f
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;->val$columnCount:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_90

    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;->val$columnCount:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_12

    .line 271
    :cond_90
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 272
    const v2, 0x7f06022b

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    const v3, 0x7f0600de

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    add-int/2addr v2, v3

    const v3, 0x7f06006e

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 273
    sub-int/2addr v0, v2

    iget v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;->val$columnCount:I

    div-int/2addr v0, v2

    .line 274
    int-to-float v0, v0

    const v2, 0x3f0f5c29    # 0.56f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 275
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getCoverView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/ScalableImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_12

    .line 277
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_12

    .line 284
    :cond_cd
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->a(Lbl/adv;I)V

    goto/16 :goto_12
.end method
