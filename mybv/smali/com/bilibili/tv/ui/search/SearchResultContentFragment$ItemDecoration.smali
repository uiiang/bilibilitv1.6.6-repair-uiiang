.class public final Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "SearchResultContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemDecoration"
.end annotation


# instance fields
.field final margin:I

.field final spacing:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 157
    iput p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ItemDecoration;->margin:I

    .line 158
    iput p2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ItemDecoration;->spacing:I

    .line 159
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 163
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v2

    .line 167
    const/4 v0, 0x1

    if-le v2, v0, :cond_24

    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ItemDecoration;->margin:I

    .line 170
    :goto_19
    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_26

    .line 171
    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ItemDecoration;->spacing:I

    move v2, v1

    .line 177
    :goto_20
    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 178
    return-void

    :cond_24
    move v0, v1

    .line 167
    goto :goto_19

    .line 175
    :cond_26
    iget v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ItemDecoration;->spacing:I

    move v3, v1

    goto :goto_20
.end method
