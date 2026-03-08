.class public final Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "MainRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemDecoration"
.end annotation


# instance fields
.field final space:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 198
    iput p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    .line 199
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 2

    .prologue
    .line 203
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result v0

    .line 207
    rem-int/lit8 v1, v0, 0x4

    .line 208
    div-int/lit8 v0, v0, 0x4

    .line 210
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 211
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 212
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 213
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 214
    return-void
.end method
