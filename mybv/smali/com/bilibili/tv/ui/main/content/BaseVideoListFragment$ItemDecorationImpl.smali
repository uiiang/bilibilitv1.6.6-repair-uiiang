.class public final Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ItemDecorationImpl;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "BaseVideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ItemDecorationImpl"
.end annotation


# instance fields
.field final columnCount:I

.field final space:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 220
    iput p1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ItemDecorationImpl;->space:I

    .line 221
    iput p2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ItemDecorationImpl;->columnCount:I

    .line 222
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 3

    .prologue
    .line 226
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ItemDecorationImpl;->space:I

    .line 231
    iget v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ItemDecorationImpl;->columnCount:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ItemDecorationImpl;->columnCount:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    .line 232
    :cond_1b
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$ItemDecorationImpl;->space:I

    mul-int/lit8 v0, v0, 0x2

    .line 235
    :cond_1f
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 236
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 237
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 238
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 239
    return-void
.end method
