.class public final Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity3$d;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "BoxListInfoActivity3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity3;
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
    .line 151
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 152
    iput p1, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity3$d;->a:I

    .line 153
    iput p2, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity3$d;->b:I

    .line 154
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 160
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v2

    .line 164
    const/4 v0, 0x1

    if-le v2, v0, :cond_24

    iget v0, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity3$d;->a:I

    .line 165
    :goto_19
    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_26

    .line 166
    iget v2, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity3$d;->b:I

    move v3, v1

    .line 172
    :goto_20
    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 173
    return-void

    :cond_24
    move v0, v1

    .line 164
    goto :goto_19

    .line 169
    :cond_26
    iget v3, p0, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity3$d;->b:I

    move v2, v1

    .line 170
    goto :goto_20
.end method
