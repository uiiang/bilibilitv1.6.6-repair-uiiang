.class Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;
.super Lbl/adv;
.source "SearchResultVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoViewHolder"
.end annotation


# instance fields
.field badge:Landroid/widget/TextView;

.field danmaku:Landroid/widget/TextView;

.field duration:Landroid/widget/TextView;

.field img:Lcom/bilibili/tv/widget/ScalableImageView;

.field play:Landroid/widget/TextView;

.field pubdate:Landroid/widget/TextView;

.field root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

.field title:Landroid/widget/TextView;

.field up:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1365
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 1366
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 1367
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->title:Landroid/widget/TextView;

    .line 1368
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->up:Landroid/widget/TextView;

    .line 1369
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->play:Landroid/widget/TextView;

    .line 1370
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->danmaku:Landroid/widget/TextView;

    .line 1371
    const v0, 0x7f0801af

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->pubdate:Landroid/widget/TextView;

    .line 1372
    const v0, 0x7f0801a6

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->duration:Landroid/widget/TextView;

    .line 1373
    const v0, 0x7f0801d8

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->badge:Landroid/widget/TextView;

    move-object v0, p1

    .line 1374
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 1375
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 1377
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->up:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->play:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;->danmaku:Landroid/widget/TextView;

    const v4, 0x7f060179

    const v5, 0x7f0500a7

    invoke-static/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->apply(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    .line 1380
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1381
    instance-of v1, v0, Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_88

    .line 1382
    check-cast v0, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1384
    :cond_88
    return-void
.end method

.method static create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;
    .locals 3

    .prologue
    .line 1387
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1388
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
