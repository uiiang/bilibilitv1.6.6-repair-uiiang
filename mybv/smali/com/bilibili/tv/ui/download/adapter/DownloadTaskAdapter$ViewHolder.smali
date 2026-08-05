.class public Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "DownloadTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

.field public fileSizeText:Landroid/widget/TextView;

.field public lastCoverUrl:Ljava/lang/String;

.field public progressBar:Landroid/widget/ProgressBar;

.field public progressText:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public speedText:Landroid/widget/TextView;

.field public statusText:Landroid/widget/TextView;

.field public subTitleText:Landroid/widget/TextView;

.field public titleText:Landroid/widget/TextView;

.field public upNameText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 49
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->rootView:Landroid/view/View;

    .line 50
    const v0, 0x7f080239

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 51
    const v0, 0x7f08023a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f08011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->subTitleText:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f08023b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->upNameText:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f08023c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 55
    const v0, 0x7f08023d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->progressText:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f08023e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->fileSizeText:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f08023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->speedText:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f080240

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->statusText:Landroid/widget/TextView;

    .line 59
    return-void
.end method
