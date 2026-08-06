.class Lcom/bilibili/tv/ui/download/DownloadManagerActivity$2;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->onResume()V
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
    .line 187
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$100(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_9

    .line 200
    :cond_8
    return-void

    .line 193
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$100(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 194
    const/4 v0, 0x0

    :goto_14
    if-ge v0, v1, :cond_8

    .line 195
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$100(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 196
    if-eqz v2, :cond_26

    .line 197
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 194
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method
