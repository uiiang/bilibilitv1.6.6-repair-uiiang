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
    .line 203
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 204
    iput p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    .line 205
    iput p2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->columnCount:I

    .line 206
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 3

    .prologue
    .line 210
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    .line 215
    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->columnCount:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->columnCount:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    .line 216
    :cond_1b
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    mul-int/lit8 v0, v0, 0x2

    .line 219
    :cond_1f
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 220
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 221
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 222
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 223
    return-void
.end method
