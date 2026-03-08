.class public final Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$f;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "FavoriteVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 205
    iput p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$f;->a:I

    .line 206
    iput p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$f;->b:I

    .line 207
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 213
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v2

    .line 217
    const/4 v0, 0x1

    if-le v2, v0, :cond_24

    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$f;->a:I

    .line 218
    :goto_19
    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_26

    .line 219
    iget v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$f;->b:I

    move v3, v1

    .line 225
    :goto_20
    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 226
    return-void

    :cond_24
    move v0, v1

    .line 217
    goto :goto_19

    .line 222
    :cond_26
    iget v3, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$f;->b:I

    move v2, v1

    .line 223
    goto :goto_20
.end method
