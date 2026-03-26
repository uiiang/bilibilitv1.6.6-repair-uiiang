.class Lbl/SortMenuMultiAdapter$2;
.super Ljava/lang/Object;
.source "SortMenuMultiAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

.field final synthetic val$viewHolder:Lbl/SortMenuMultiAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lbl/SortMenuMultiAdapter;Lbl/SortMenuMultiAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lbl/SortMenuMultiAdapter$2;->this$0:Lbl/SortMenuMultiAdapter;

    iput-object p2, p0, Lbl/SortMenuMultiAdapter$2;->val$viewHolder:Lbl/SortMenuMultiAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_11

    .line 107
    iget-object v2, p0, Lbl/SortMenuMultiAdapter$2;->val$viewHolder:Lbl/SortMenuMultiAdapter$ViewHolder;

    invoke-virtual {v2}, Lbl/SortMenuMultiAdapter$ViewHolder;->d()I

    move-result v2

    .line 108
    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 116
    :cond_11
    :goto_11
    return v0

    .line 109
    :cond_12
    const/16 v3, 0x13

    if-ne p2, v3, :cond_1a

    if-nez v2, :cond_1a

    move v0, v1

    .line 110
    goto :goto_11

    .line 112
    :cond_1a
    const/16 v3, 0x14

    if-ne p2, v3, :cond_11

    iget-object v3, p0, Lbl/SortMenuMultiAdapter$2;->this$0:Lbl/SortMenuMultiAdapter;

    # getter for: Lbl/SortMenuMultiAdapter;->flatItems:Ljava/util/List;
    invoke-static {v3}, Lbl/SortMenuMultiAdapter;->access$100(Lbl/SortMenuMultiAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_11

    move v0, v1

    .line 113
    goto :goto_11
.end method
