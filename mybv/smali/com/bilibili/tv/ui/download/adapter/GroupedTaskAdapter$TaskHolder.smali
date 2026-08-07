.class Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "GroupedTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskHolder"
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
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 409
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 410
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->rootView:Landroid/view/View;

    .line 411
    const v0, 0x7f080239

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 412
    const v0, 0x7f08023a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->titleText:Landroid/widget/TextView;

    .line 413
    const v0, 0x7f08011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->subTitleText:Landroid/widget/TextView;

    .line 414
    const v0, 0x7f08023b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->upNameText:Landroid/widget/TextView;

    .line 415
    const v0, 0x7f08023c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 416
    const v0, 0x7f08023d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->progressText:Landroid/widget/TextView;

    .line 417
    const v0, 0x7f08023e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->fileSizeText:Landroid/widget/TextView;

    .line 418
    const v0, 0x7f08023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->speedText:Landroid/widget/TextView;

    .line 419
    const v0, 0x7f080240

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->statusText:Landroid/widget/TextView;

    .line 420
    return-void
.end method
