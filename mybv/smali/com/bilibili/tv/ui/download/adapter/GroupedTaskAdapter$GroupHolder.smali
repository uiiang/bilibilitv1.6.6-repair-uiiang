.class Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "GroupedTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupHolder"
.end annotation


# instance fields
.field public countText:Landroid/widget/TextView;

.field public coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

.field public rootView:Landroid/view/View;

.field public statusText:Landroid/widget/TextView;

.field public titleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 385
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->rootView:Landroid/view/View;

    .line 386
    const v0, 0x7f08025c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 387
    const v0, 0x7f0801cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->titleText:Landroid/widget/TextView;

    .line 388
    const v0, 0x7f08025e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->countText:Landroid/widget/TextView;

    .line 389
    const v0, 0x7f08025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->statusText:Landroid/widget/TextView;

    .line 390
    return-void
.end method
