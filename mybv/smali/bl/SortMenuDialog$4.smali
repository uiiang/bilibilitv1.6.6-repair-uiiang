.class Lbl/SortMenuDialog$4;
.super Ljava/lang/Object;
.source "SortMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/SortMenuDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/SortMenuDialog;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lbl/SortMenuDialog;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lbl/SortMenuDialog$4;->this$0:Lbl/SortMenuDialog;

    iput-object p2, p0, Lbl/SortMenuDialog$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 194
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lbl/SortMenuDialog$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_24

    .line 195
    iget-object v0, p0, Lbl/SortMenuDialog$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 196
    const v2, 0x7f0801cd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 197
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_25

    .line 198
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 202
    :cond_24
    return-void

    .line 194
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
