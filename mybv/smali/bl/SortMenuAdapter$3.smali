.class Lbl/SortMenuAdapter$3;
.super Ljava/lang/Object;
.source "SortMenuAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/SortMenuAdapter;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/SortMenuAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lbl/SortMenuAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Lbl/SortMenuAdapter$3;->this$0:Lbl/SortMenuAdapter;

    iput p2, p0, Lbl/SortMenuAdapter$3;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 142
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lbl/SortMenuAdapter$3;->this$0:Lbl/SortMenuAdapter;

    # getter for: Lbl/SortMenuAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lbl/SortMenuAdapter;->access$300(Lbl/SortMenuAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3a

    .line 143
    iget-object v0, p0, Lbl/SortMenuAdapter$3;->this$0:Lbl/SortMenuAdapter;

    # getter for: Lbl/SortMenuAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lbl/SortMenuAdapter;->access$300(Lbl/SortMenuAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    iget-object v2, p0, Lbl/SortMenuAdapter$3;->this$0:Lbl/SortMenuAdapter;

    # getter for: Lbl/SortMenuAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v2}, Lbl/SortMenuAdapter;->access$300(Lbl/SortMenuAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v2

    .line 145
    iget v3, p0, Lbl/SortMenuAdapter$3;->val$pos:I

    if-ne v2, v3, :cond_3b

    .line 146
    const v2, 0x7f0801cd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 147
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3b

    .line 148
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 153
    :cond_3a
    return-void

    .line 142
    :cond_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
