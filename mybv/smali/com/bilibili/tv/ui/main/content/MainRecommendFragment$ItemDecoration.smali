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
.field final columnCount:I

.field final space:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 212
    iput p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    .line 213
    iput p2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->columnCount:I

    .line 214
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 3

    .prologue
    .line 218
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    .line 223
    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->columnCount:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->columnCount:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    .line 224
    :cond_1b
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    mul-int/lit8 v0, v0, 0x2

    .line 227
    :cond_1f
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 228
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 229
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 230
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 231
    return-void
.end method
