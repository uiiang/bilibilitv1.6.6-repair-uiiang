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

.field final synthetic val$confirmButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field final synthetic val$folderListView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lbl/afm5;Landroid/widget/ListView;Lcom/bilibili/tv/widget/DrawFrameLayout;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lbl/afm5$3;->this$0:Lbl/afm5;

    iput-object p2, p0, Lbl/afm5$3;->val$folderListView:Landroid/widget/ListView;

    iput-object p3, p0, Lbl/afm5$3;->val$confirmButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 556
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_21

    const/16 v0, 0x14

    if-ne p2, v0, :cond_21

    .line 558
    iget-object v0, p0, Lbl/afm5$3;->val$folderListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 560
    iget-object v1, p0, Lbl/afm5$3;->val$folderListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_21

    .line 561
    iget-object v0, p0, Lbl/afm5$3;->val$confirmButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    .line 562
    const/4 v0, 0x1

    .line 565
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method
