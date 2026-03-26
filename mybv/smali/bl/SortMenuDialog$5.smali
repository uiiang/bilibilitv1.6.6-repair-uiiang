.class Lbl/SortMenuDialog$5;
.super Ljava/lang/Object;
.source "SortMenuDialog.java"

# interfaces
.implements Lbl/SortMenuAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/SortMenuDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/SortMenuDialog;


# direct methods
.method constructor <init>(Lbl/SortMenuDialog;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lbl/SortMenuDialog$5;->this$0:Lbl/SortMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(II)V
    .locals 2

    .prologue
    .line 207
    if-ltz p1, :cond_4e

    iget-object v0, p0, Lbl/SortMenuDialog$5;->this$0:Lbl/SortMenuDialog;

    # getter for: Lbl/SortMenuDialog;->groups:Ljava/util/List;
    invoke-static {v0}, Lbl/SortMenuDialog;->access$000(Lbl/SortMenuDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4e

    .line 208
    iget-object v0, p0, Lbl/SortMenuDialog$5;->this$0:Lbl/SortMenuDialog;

    # getter for: Lbl/SortMenuDialog;->groups:Ljava/util/List;
    invoke-static {v0}, Lbl/SortMenuDialog;->access$000(Lbl/SortMenuDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SortMenuDialog$SortGroup;

    .line 209
    iput p2, v0, Lbl/SortMenuDialog$SortGroup;->selectedIndex:I

    .line 210
    iget-object v0, p0, Lbl/SortMenuDialog$5;->this$0:Lbl/SortMenuDialog;

    # getter for: Lbl/SortMenuDialog;->adapter:Lbl/SortMenuAdapter;
    invoke-static {v0}, Lbl/SortMenuDialog;->access$100(Lbl/SortMenuDialog;)Lbl/SortMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lbl/SortMenuAdapter;->notifyDataSetChanged()V

    .line 212
    iget-object v0, p0, Lbl/SortMenuDialog$5;->this$0:Lbl/SortMenuDialog;

    # getter for: Lbl/SortMenuDialog;->groups:Ljava/util/List;
    invoke-static {v0}, Lbl/SortMenuDialog;->access$000(Lbl/SortMenuDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4e

    .line 213
    iget-object v0, p0, Lbl/SortMenuDialog$5;->this$0:Lbl/SortMenuDialog;

    # getter for: Lbl/SortMenuDialog;->listener:Lbl/SortMenuDialog$OnConfirmListener;
    invoke-static {v0}, Lbl/SortMenuDialog;->access$200(Lbl/SortMenuDialog;)Lbl/SortMenuDialog$OnConfirmListener;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 214
    iget-object v0, p0, Lbl/SortMenuDialog$5;->this$0:Lbl/SortMenuDialog;

    # getter for: Lbl/SortMenuDialog;->listener:Lbl/SortMenuDialog$OnConfirmListener;
    invoke-static {v0}, Lbl/SortMenuDialog;->access$200(Lbl/SortMenuDialog;)Lbl/SortMenuDialog$OnConfirmListener;

    move-result-object v0

    iget-object v1, p0, Lbl/SortMenuDialog$5;->this$0:Lbl/SortMenuDialog;

    # getter for: Lbl/SortMenuDialog;->groups:Ljava/util/List;
    invoke-static {v1}, Lbl/SortMenuDialog;->access$000(Lbl/SortMenuDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lbl/SortMenuDialog$OnConfirmListener;->onConfirm(Ljava/util/List;)V

    .line 216
    :cond_49
    iget-object v0, p0, Lbl/SortMenuDialog$5;->this$0:Lbl/SortMenuDialog;

    invoke-virtual {v0}, Lbl/SortMenuDialog;->dismiss()V

    .line 219
    :cond_4e
    return-void
.end method
