.class Lbl/SortMenuAdapter$2;
.super Ljava/lang/Object;
.source "SortMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 111
    iput-object p1, p0, Lbl/SortMenuAdapter$2;->this$0:Lbl/SortMenuAdapter;

    iput p2, p0, Lbl/SortMenuAdapter$2;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 114
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_24

    .line 115
    const/16 v1, 0x13

    if-ne p2, v1, :cond_10

    iget v1, p0, Lbl/SortMenuAdapter$2;->val$pos:I

    if-nez v1, :cond_10

    .line 122
    :cond_f
    :goto_f
    return v0

    .line 118
    :cond_10
    const/16 v1, 0x14

    if-ne p2, v1, :cond_24

    iget v1, p0, Lbl/SortMenuAdapter$2;->val$pos:I

    iget-object v2, p0, Lbl/SortMenuAdapter$2;->this$0:Lbl/SortMenuAdapter;

    # getter for: Lbl/SortMenuAdapter;->flatItems:Ljava/util/List;
    invoke-static {v2}, Lbl/SortMenuAdapter;->access$200(Lbl/SortMenuAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_f

    .line 122
    :cond_24
    const/4 v0, 0x0

    goto :goto_f
.end method
