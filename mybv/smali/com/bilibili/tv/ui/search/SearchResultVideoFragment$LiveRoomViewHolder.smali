.class Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;
.super Lbl/adv;
.source "SearchResultVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LiveRoomViewHolder"
.end annotation


# instance fields
.field img:Lcom/bilibili/tv/widget/ScalableImageView;

.field infoLayout:Landroid/widget/LinearLayout;

.field online:Landroid/widget/TextView;

.field root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

.field title:Landroid/widget/TextView;

.field up:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1381
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 1382
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 1383
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->title:Landroid/widget/TextView;

    .line 1384
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->up:Landroid/widget/TextView;

    .line 1385
    const v0, 0x7f0801aa

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->online:Landroid/widget/TextView;

    move-object v0, p1

    .line 1386
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 1387
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 1389
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1390
    const v1, 0x7f060179

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 1391
    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1392
    const v1, 0x7f0500a7

    invoke-static {v1}, Lbl/adl;->d(I)I

    move-result v1

    .line 1393
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1394
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->up:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1396
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ScalableImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9a

    .line 1397
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ScalableImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v2, v3

    .line 1398
    :goto_75
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_9a

    .line 1399
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1400
    instance-of v4, v1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_a8

    .line 1401
    check-cast v1, Landroid/widget/LinearLayout;

    .line 1402
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_a8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_a8

    .line 1403
    iput-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;->infoLayout:Landroid/widget/LinearLayout;

    .line 1404
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1411
    :cond_9a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1412
    instance-of v1, v0, Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_a7

    .line 1413
    check-cast v0, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1415
    :cond_a7
    return-void

    .line 1398
    :cond_a8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_75
.end method

.method static create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;
    .locals 3

    .prologue
    .line 1418
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1419
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
