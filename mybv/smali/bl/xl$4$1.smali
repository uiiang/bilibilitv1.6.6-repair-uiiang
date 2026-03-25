.class Lbl/xl$4$1;
.super Ljava/lang/Object;
.source "xl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xl$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xl$4;


# direct methods
.method constructor <init>(Lbl/xl$4;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lbl/xl$4$1;->this$1:Lbl/xl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lbl/xl$4$1;->this$1:Lbl/xl$4;

    iget-object v0, v0, Lbl/xl$4;->this$0:Lbl/xl;

    # getter for: Lbl/xl;->k:Landroid/support/v7/widget/LinearLayoutManager;
    invoke-static {v0}, Lbl/xl;->access$300(Lbl/xl;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->n()I

    move-result v0

    .line 448
    iget-object v1, p0, Lbl/xl$4$1;->this$1:Lbl/xl$4;

    iget-object v1, v1, Lbl/xl$4;->this$0:Lbl/xl;

    # getter for: Lbl/xl;->i:I
    invoke-static {v1}, Lbl/xl;->access$000(Lbl/xl;)I

    move-result v1

    .line 449
    sub-int v0, v1, v0

    .line 450
    if-ltz v0, :cond_37

    iget-object v1, p0, Lbl/xl$4$1;->this$1:Lbl/xl$4;

    iget-object v1, v1, Lbl/xl$4;->this$0:Lbl/xl;

    # getter for: Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lbl/xl;->access$100(Lbl/xl;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 451
    iget-object v1, p0, Lbl/xl$4$1;->this$1:Lbl/xl$4;

    iget-object v1, v1, Lbl/xl$4;->this$0:Lbl/xl;

    # getter for: Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lbl/xl;->access$100(Lbl/xl;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_37

    .line 453
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 456
    :cond_37
    return-void
.end method
