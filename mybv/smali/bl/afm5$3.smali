.class Lbl/afm5$3;
.super Ljava/lang/Object;
.source "afm5.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afm5;->showFolderPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afm5;

.field final synthetic val$folderListView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lbl/afm5;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lbl/afm5$3;->this$0:Lbl/afm5;

    iput-object p2, p0, Lbl/afm5$3;->val$folderListView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x13

    if-ne p2, v0, :cond_11

    .line 487
    iget-object v0, p0, Lbl/afm5$3;->val$folderListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 488
    const/4 v0, 0x1

    .line 490
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
