.class public final Lbl/afa$d;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "afa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 121
    iput p1, p0, Lbl/afa$d;->a:I

    .line 122
    iput p2, p0, Lbl/afa$d;->b:I

    .line 123
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 127
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result v2

    .line 131
    const/4 v0, 0x5

    if-lt v2, v0, :cond_2f

    iget v0, p0, Lbl/afa$d;->a:I

    .line 132
    :goto_19
    rem-int/lit8 v2, v2, 0x5

    .line 133
    iget v3, p0, Lbl/afa$d;->b:I

    .line 134
    div-int/lit8 v4, v3, 0x2

    .line 136
    mul-int v5, v2, v3

    div-int/lit8 v5, v5, 0x5

    sub-int v5, v4, v5

    .line 137
    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x5

    sub-int/2addr v2, v4

    .line 139
    invoke-virtual {p1, v5, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 140
    return-void

    :cond_2f
    move v0, v1

    .line 131
    goto :goto_19
.end method
