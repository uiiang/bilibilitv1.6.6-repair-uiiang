.class Lbl/SortMenuMultiAdapter$1;
.super Ljava/lang/Object;
.source "SortMenuMultiAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/SortMenuMultiAdapter;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/SortMenuMultiAdapter;

.field final synthetic val$flatItem:Lbl/SortMenuMultiAdapter$FlatItem;


# direct methods
.method constructor <init>(Lbl/SortMenuMultiAdapter;Lbl/SortMenuMultiAdapter$FlatItem;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lbl/SortMenuMultiAdapter$1;->this$0:Lbl/SortMenuMultiAdapter;

    iput-object p2, p0, Lbl/SortMenuMultiAdapter$1;->val$flatItem:Lbl/SortMenuMultiAdapter$FlatItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lbl/SortMenuMultiAdapter$1;->this$0:Lbl/SortMenuMultiAdapter;

    # getter for: Lbl/SortMenuMultiAdapter;->listener:Lbl/SortMenuMultiAdapter$OnItemClickListener;
    invoke-static {v0}, Lbl/SortMenuMultiAdapter;->access$000(Lbl/SortMenuMultiAdapter;)Lbl/SortMenuMultiAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 98
    iget-object v0, p0, Lbl/SortMenuMultiAdapter$1;->this$0:Lbl/SortMenuMultiAdapter;

    # getter for: Lbl/SortMenuMultiAdapter;->listener:Lbl/SortMenuMultiAdapter$OnItemClickListener;
    invoke-static {v0}, Lbl/SortMenuMultiAdapter;->access$000(Lbl/SortMenuMultiAdapter;)Lbl/SortMenuMultiAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lbl/SortMenuMultiAdapter$1;->val$flatItem:Lbl/SortMenuMultiAdapter$FlatItem;

    iget v1, v1, Lbl/SortMenuMultiAdapter$FlatItem;->groupIndex:I

    iget-object v2, p0, Lbl/SortMenuMultiAdapter$1;->val$flatItem:Lbl/SortMenuMultiAdapter$FlatItem;

    iget v2, v2, Lbl/SortMenuMultiAdapter$FlatItem;->itemIndex:I

    invoke-interface {v0, v1, v2}, Lbl/SortMenuMultiAdapter$OnItemClickListener;->onItemClick(II)V

    .line 100
    :cond_19
    return-void
.end method
