.class Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$2;
.super Ljava/lang/Object;
.source "DownloadingMenuDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;->a(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$2;->this$1:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;

    iput p2, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 148
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_26

    .line 149
    const/16 v1, 0x13

    if-ne p2, v1, :cond_10

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$2;->val$position:I

    if-nez v1, :cond_10

    .line 156
    :cond_f
    :goto_f
    return v0

    .line 152
    :cond_10
    const/16 v1, 0x14

    if-ne p2, v1, :cond_26

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$2;->val$position:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$2;->this$1:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;

    iget-object v2, v2, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;->this$0:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->itemNames:Ljava/util/List;
    invoke-static {v2}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->access$100(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_f

    .line 156
    :cond_26
    const/4 v0, 0x0

    goto :goto_f
.end method
