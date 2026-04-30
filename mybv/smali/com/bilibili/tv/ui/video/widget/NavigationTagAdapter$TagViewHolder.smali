.class public Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "NavigationTagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagViewHolder"
.end annotation


# instance fields
.field textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 31
    const v0, 0x7f0801d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;->textView:Landroid/widget/TextView;

    .line 32
    return-void
.end method
