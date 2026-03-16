.class public final Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "AuthSpaceVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
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
    .line 591
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 592
    iput p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;->a:I

    .line 593
    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;->b:I

    .line 594
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 598
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    .line 602
    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    iget v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;->a:I

    .line 603
    :cond_19
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_23

    .line 604
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;->b:I

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 608
    :goto_22
    return-void

    .line 606
    :cond_23
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;->b:I

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_22
.end method
