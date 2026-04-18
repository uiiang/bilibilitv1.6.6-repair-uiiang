.class Lbl/afm4$1;
.super Ljava/lang/Object;
.source "afm4.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afm4;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afm4;

.field final synthetic val$focusedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lbl/afm4;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lbl/afm4$1;->this$0:Lbl/afm4;

    iput-object p2, p0, Lbl/afm4$1;->val$focusedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 436
    iget-object v0, p0, Lbl/afm4$1;->this$0:Lbl/afm4;

    # getter for: Lbl/afm4;->menuScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lbl/afm4;->access$000(Lbl/afm4;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 437
    iget-object v1, p0, Lbl/afm4$1;->this$0:Lbl/afm4;

    # getter for: Lbl/afm4;->menuScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lbl/afm4;->access$000(Lbl/afm4;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    .line 438
    iget-object v2, p0, Lbl/afm4$1;->val$focusedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 439
    iget-object v3, p0, Lbl/afm4$1;->val$focusedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    .line 440
    iget-object v4, p0, Lbl/afm4$1;->val$focusedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 441
    if-ge v2, v0, :cond_35

    .line 442
    iget-object v0, p0, Lbl/afm4$1;->this$0:Lbl/afm4;

    # getter for: Lbl/afm4;->menuScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lbl/afm4;->access$000(Lbl/afm4;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    sub-int v1, v2, v4

    invoke-virtual {v0, v1, v5}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 446
    :cond_34
    :goto_34
    return-void

    .line 443
    :cond_35
    add-int/2addr v0, v1

    if-le v3, v0, :cond_34

    .line 444
    iget-object v0, p0, Lbl/afm4$1;->this$0:Lbl/afm4;

    # getter for: Lbl/afm4;->menuScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lbl/afm4;->access$000(Lbl/afm4;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    sub-int v1, v3, v1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1, v5}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_34
.end method
