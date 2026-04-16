.class Lcom/bilibili/tv/ui/attention/TagFilterAdapter$TagFilterViewHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "TagFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/TagFilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TagFilterViewHolder"
.end annotation


# instance fields
.field itemView:Landroid/view/View;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 80
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$TagFilterViewHolder;->itemView:Landroid/view/View;

    .line 81
    const v0, 0x7f0801ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$TagFilterViewHolder;->title:Landroid/widget/TextView;

    .line 82
    return-void
.end method
