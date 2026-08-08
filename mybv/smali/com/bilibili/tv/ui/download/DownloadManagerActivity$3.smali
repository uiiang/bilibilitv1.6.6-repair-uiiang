.class Lcom/bilibili/tv/ui/download/DownloadManagerActivity$3;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->showDownloadingMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

.field final synthetic val$hasActive:Z


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;Z)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$3;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    iput-boolean p2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$3;->val$hasActive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 337
    if-nez p1, :cond_31

    .line 338
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$3;->val$hasActive:Z

    if-eqz v0, :cond_1c

    .line 339
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$3;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->pauseAllTasks()V

    .line 340
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$3;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    const-string v1, "\u5df2\u5168\u90e8\u6682\u505c"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 349
    :cond_1b
    :goto_1b
    return-void

    .line 342
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$3;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->resumeAllTasks()V

    .line 343
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$3;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    const-string v1, "\u5df2\u5168\u90e8\u5f00\u59cb"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1b

    .line 345
    :cond_31
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    .line 347
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$3;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->showDeleteAllConfirmDialog()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$200(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)V

    goto :goto_1b
.end method
