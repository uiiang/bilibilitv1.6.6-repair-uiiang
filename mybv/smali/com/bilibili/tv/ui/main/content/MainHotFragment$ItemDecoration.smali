.class public final Lcom/bilibili/tv/ui/main/content/MainHotFragment$ItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "MainHotFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainHotFragment;
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
    .line 188
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 189
    iput p1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$ItemDecoration;->space:I

    .line 190
    iput p2, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$ItemDecoration;->columnCount:I

    .line 191
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 3

    .prologue
    .line 195
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$ItemDecoration;->space:I

    .line 200
    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$ItemDecoration;->columnCount:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$ItemDecoration;->columnCount:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    .line 201
    :cond_1b
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$ItemDecoration;->space:I

    mul-int/lit8 v0, v0, 0x2

    .line 204
    :cond_1f
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 205
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 206
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 207
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 208
    return-void
.end method
