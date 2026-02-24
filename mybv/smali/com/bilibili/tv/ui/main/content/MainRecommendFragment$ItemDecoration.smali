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
    .line 206
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 207
    iput p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    .line 208
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 2

    .prologue
    .line 212
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result v0

    .line 216
    rem-int/lit8 v1, v0, 0x4

    .line 217
    div-int/lit8 v0, v0, 0x4

    .line 219
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 220
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 221
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 222
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 223
    return-void
.end method
