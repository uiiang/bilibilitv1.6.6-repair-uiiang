.class Lbl/SortMenuAdapter$1;
.super Ljava/lang/Object;
.source "SortMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/SortMenuAdapter;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/SortMenuAdapter;

.field final synthetic val$groupIndex:I

.field final synthetic val$itemIndex:I

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lbl/SortMenuAdapter;III)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lbl/SortMenuAdapter$1;->this$0:Lbl/SortMenuAdapter;

    iput p2, p0, Lbl/SortMenuAdapter$1;->val$pos:I

    iput p3, p0, Lbl/SortMenuAdapter$1;->val$groupIndex:I

    iput p4, p0, Lbl/SortMenuAdapter$1;->val$itemIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lbl/SortMenuAdapter$1;->this$0:Lbl/SortMenuAdapter;

    iget v1, p0, Lbl/SortMenuAdapter$1;->val$pos:I

    # setter for: Lbl/SortMenuAdapter;->focusedPosition:I
    invoke-static {v0, v1}, Lbl/SortMenuAdapter;->access$002(Lbl/SortMenuAdapter;I)I

    .line 105
    iget-object v0, p0, Lbl/SortMenuAdapter$1;->this$0:Lbl/SortMenuAdapter;

    # getter for: Lbl/SortMenuAdapter;->listener:Lbl/SortMenuAdapter$OnItemClickListener;
    invoke-static {v0}, Lbl/SortMenuAdapter;->access$100(Lbl/SortMenuAdapter;)Lbl/SortMenuAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 106
    iget-object v0, p0, Lbl/SortMenuAdapter$1;->this$0:Lbl/SortMenuAdapter;

    # getter for: Lbl/SortMenuAdapter;->listener:Lbl/SortMenuAdapter$OnItemClickListener;
    invoke-static {v0}, Lbl/SortMenuAdapter;->access$100(Lbl/SortMenuAdapter;)Lbl/SortMenuAdapter$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lbl/SortMenuAdapter$1;->val$groupIndex:I

    iget v2, p0, Lbl/SortMenuAdapter$1;->val$itemIndex:I

    invoke-interface {v0, v1, v2}, Lbl/SortMenuAdapter$OnItemClickListener;->onItemClick(II)V

    .line 108
    :cond_1c
    return-void
.end method
