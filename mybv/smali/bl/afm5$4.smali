.class Lbl/afm5$4;
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

.field final synthetic val$safButton:Lcom/bilibili/tv/widget/DrawFrameLayout;


# direct methods
.method constructor <init>(Lbl/afm5;Landroid/widget/ListView;Lcom/bilibili/tv/widget/DrawFrameLayout;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lbl/afm5$4;->this$0:Lbl/afm5;

    iput-object p2, p0, Lbl/afm5$4;->val$folderListView:Landroid/widget/ListView;

    iput-object p3, p0, Lbl/afm5$4;->val$safButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 572
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1b

    .line 573
    const/16 v1, 0x13

    if-ne p2, v1, :cond_11

    .line 574
    iget-object v1, p0, Lbl/afm5$4;->val$folderListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 582
    :goto_10
    return v0

    .line 577
    :cond_11
    const/16 v1, 0x14

    if-ne p2, v1, :cond_1b

    .line 578
    iget-object v1, p0, Lbl/afm5$4;->val$safButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    goto :goto_10

    .line 582
    :cond_1b
    const/4 v0, 0x0

    goto :goto_10
.end method
