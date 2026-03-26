.class Lbl/SortMenuMultiDialog$1;
.super Ljava/lang/Object;
.source "SortMenuMultiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 122
    iput-object p1, p0, Lbl/SortMenuMultiDialog$1;->this$0:Lbl/SortMenuMultiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lbl/SortMenuMultiDialog$1;->this$0:Lbl/SortMenuMultiDialog;

    invoke-virtual {v0}, Lbl/SortMenuMultiDialog;->dismiss()V

    .line 126
    return-void
.end method
