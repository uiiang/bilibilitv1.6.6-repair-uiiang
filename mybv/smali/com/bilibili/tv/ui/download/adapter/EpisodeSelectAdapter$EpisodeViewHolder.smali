.class public Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "EpisodeSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpisodeViewHolder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/TextView;

.field coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

.field episodeSize:Landroid/widget/TextView;

.field episodeTitle:Landroid/widget/TextView;

.field rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 203
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->rootView:Landroid/view/View;

    .line 204
    const v0, 0x7f080059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->checkBox:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f08025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 206
    const v0, 0x7f080258

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->episodeTitle:Landroid/widget/TextView;

    .line 207
    const v0, 0x7f080259

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->episodeSize:Landroid/widget/TextView;

    .line 208
    return-void
.end method
