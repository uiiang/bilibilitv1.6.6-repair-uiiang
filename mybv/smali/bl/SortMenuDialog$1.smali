.class Lbl/SortMenuDialog$1;
.super Ljava/lang/Object;
.source "SortMenuDialog.java"

# interfaces
.implements Lbl/SortMenuDialog$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/SortMenuDialog;->setOnSortSelectedListener(Lbl/SortMenuDialog$OnSortSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/SortMenuDialog;

.field final synthetic val$singleListener:Lbl/SortMenuDialog$OnSortSelectedListener;


# direct methods
.method constructor <init>(Lbl/SortMenuDialog;Lbl/SortMenuDialog$OnSortSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 101
    iput-object p1, p0, Lbl/SortMenuDialog$1;->this$0:Lbl/SortMenuDialog;

    iput-object p2, p0, Lbl/SortMenuDialog$1;->val$singleListener:Lbl/SortMenuDialog$OnSortSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbl/SortMenuDialog$SortGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lbl/SortMenuDialog$1;->val$singleListener:Lbl/SortMenuDialog$OnSortSelectedListener;

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 105
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SortMenuDialog$SortGroup;

    .line 106
    iget-object v1, p0, Lbl/SortMenuDialog$1;->val$singleListener:Lbl/SortMenuDialog$OnSortSelectedListener;

    invoke-virtual {v0}, Lbl/SortMenuDialog$SortGroup;->getSelectedValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lbl/SortMenuDialog$SortGroup;->getSelectedName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lbl/SortMenuDialog$OnSortSelectedListener;->onSortSelected(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1e
    return-void
.end method
