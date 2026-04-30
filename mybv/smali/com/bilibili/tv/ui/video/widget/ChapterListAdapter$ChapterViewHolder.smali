.class public Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "ChapterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChapterViewHolder"
.end annotation


# instance fields
.field playIcon:Landroid/widget/ImageView;

.field rootView:Landroid/widget/LinearLayout;

.field textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    move-object v0, p1

    .line 35
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;->rootView:Landroid/widget/LinearLayout;

    .line 36
    const v0, 0x7f080222

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;->playIcon:Landroid/widget/ImageView;

    .line 37
    const v0, 0x7f080223

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;->textView:Landroid/widget/TextView;

    .line 38
    return-void
.end method
