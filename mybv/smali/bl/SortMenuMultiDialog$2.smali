.class Lbl/SortMenuMultiDialog$2;
.super Ljava/lang/Object;
.source "SortMenuMultiDialog.java"

# interfaces
.implements Lbl/SortMenuMultiAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/SortMenuMultiDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/SortMenuMultiDialog;


# direct methods
.method constructor <init>(Lbl/SortMenuMultiDialog;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lbl/SortMenuMultiDialog$2;->this$0:Lbl/SortMenuMultiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(II)V
    .locals 1

    .prologue
    .line 134
    if-ltz p1, :cond_25

    iget-object v0, p0, Lbl/SortMenuMultiDialog$2;->this$0:Lbl/SortMenuMultiDialog;

    # getter for: Lbl/SortMenuMultiDialog;->groups:Ljava/util/List;
    invoke-static {v0}, Lbl/SortMenuMultiDialog;->access$000(Lbl/SortMenuMultiDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_25

    .line 135
    iget-object v0, p0, Lbl/SortMenuMultiDialog$2;->this$0:Lbl/SortMenuMultiDialog;

    # getter for: Lbl/SortMenuMultiDialog;->groups:Ljava/util/List;
    invoke-static {v0}, Lbl/SortMenuMultiDialog;->access$000(Lbl/SortMenuMultiDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SortMenuMultiDialog$SortGroup;

    .line 136
    iput p2, v0, Lbl/SortMenuMultiDialog$SortGroup;->selectedIndex:I

    .line 137
    iget-object v0, p0, Lbl/SortMenuMultiDialog$2;->this$0:Lbl/SortMenuMultiDialog;

    # getter for: Lbl/SortMenuMultiDialog;->adapter:Lbl/SortMenuMultiAdapter;
    invoke-static {v0}, Lbl/SortMenuMultiDialog;->access$100(Lbl/SortMenuMultiDialog;)Lbl/SortMenuMultiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lbl/SortMenuMultiAdapter;->notifyDataSetChanged()V

    .line 139
    :cond_25
    return-void
.end method
