.class Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;
.super Lbl/adv;
.source "SearchResultVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserViewHolder"
.end annotation


# instance fields
.field archives:Landroid/widget/TextView;

.field fans:Landroid/widget/TextView;

.field img:Lcom/bilibili/tv/widget/ScalableImageView;

.field root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1353
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 1354
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->img:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 1355
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->title:Landroid/widget/TextView;

    .line 1356
    const v0, 0x7f080081

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->fans:Landroid/widget/TextView;

    .line 1357
    const v0, 0x7f08001f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->archives:Landroid/widget/TextView;

    move-object v0, p1

    .line 1358
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 1359
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;->root:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 1361
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1362
    instance-of v1, v0, Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_49

    .line 1363
    check-cast v0, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1365
    :cond_49
    return-void
.end method

.method static create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;
    .locals 3

    .prologue
    .line 1368
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1369
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
