.class Lbl/SortMenuDialog$3$1;
.super Ljava/lang/Object;
.source "SortMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/SortMenuDialog$3;->onItemClick(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/SortMenuDialog$3;

.field final synthetic val$rv:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lbl/SortMenuDialog$3;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lbl/SortMenuDialog$3$1;->this$1:Lbl/SortMenuDialog$3;

    iput-object p2, p0, Lbl/SortMenuDialog$3$1;->val$rv:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lbl/SortMenuDialog$3$1;->val$rv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_24

    .line 170
    iget-object v0, p0, Lbl/SortMenuDialog$3$1;->val$rv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 171
    const v2, 0x7f0801c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 172
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_25

    .line 173
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 177
    :cond_24
    return-void

    .line 169
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
