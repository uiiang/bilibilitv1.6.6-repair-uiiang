.class Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$1;
.super Ljava/lang/Object;
.source "DownloadingMenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 135
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$1;->this$1:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;

    iput p2, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$1;->this$1:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;->this$0:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->listener:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->access$200(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;)Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 139
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$1;->this$1:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;->this$0:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->listener:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->access$200(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;)Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$OnMenuItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$OnMenuItemClickListener;->onMenuItemClick(I)V

    .line 141
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$1;->this$1:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;->this$0:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->dismiss()V

    .line 142
    return-void
.end method
