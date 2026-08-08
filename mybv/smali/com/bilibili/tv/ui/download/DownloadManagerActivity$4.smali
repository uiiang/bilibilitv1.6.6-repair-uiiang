.class Lcom/bilibili/tv/ui/download/DownloadManagerActivity$4;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->showDeleteAllConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->deleteAllDownloadingTasks()V

    .line 368
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    const-string v1, "\u5df2\u5168\u90e8\u5220\u9664"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 370
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$400(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$300(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 371
    instance-of v1, v0, Lcom/bilibili/tv/ui/download/DownloadingFragment;

    if-eqz v1, :cond_2e

    .line 372
    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadingFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->refreshDownloadingList()V

    .line 374
    :cond_2e
    return-void
.end method
