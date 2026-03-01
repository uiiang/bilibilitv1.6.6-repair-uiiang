.class public final Lcom/bilibili/tv/ui/main/content/MainMyFragment$ItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "MainMyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainMyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemDecoration"
.end annotation


# instance fields
.field final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 153
    iput p1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$ItemDecoration;->a:I

    .line 154
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 6

    .prologue
    .line 158
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result v1

    .line 162
    const/4 v0, 0x4

    if-ge v1, v0, :cond_2f

    const/4 v0, 0x0

    .line 163
    :goto_17
    iget v2, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$ItemDecoration;->a:I

    .line 164
    rem-int/lit8 v1, v1, 0x4

    .line 165
    iget v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$ItemDecoration;->a:I

    .line 166
    div-int/lit8 v4, v3, 0x2

    .line 168
    mul-int v5, v1, v3

    div-int/lit8 v5, v5, 0x4

    sub-int v5, v4, v5

    .line 169
    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v1, v4

    .line 171
    invoke-virtual {p1, v5, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 172
    return-void

    .line 162
    :cond_2f
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$ItemDecoration;->a:I

    goto :goto_17
.end method
