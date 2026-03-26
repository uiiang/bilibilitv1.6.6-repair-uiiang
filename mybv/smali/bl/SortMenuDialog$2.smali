.class Lbl/SortMenuDialog$2;
.super Ljava/lang/Object;
.source "SortMenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 144
    iput-object p1, p0, Lbl/SortMenuDialog$2;->this$0:Lbl/SortMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lbl/SortMenuDialog$2;->this$0:Lbl/SortMenuDialog;

    invoke-virtual {v0}, Lbl/SortMenuDialog;->dismiss()V

    .line 148
    return-void
.end method
