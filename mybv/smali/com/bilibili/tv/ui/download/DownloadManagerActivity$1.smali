.class Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

.field final synthetic val$fragmentIndex:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 135
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    iput p2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;->val$fragmentIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;->val$fragmentIndex:I

    # invokes: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->setLeftSelected(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$000(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;I)V

    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$100(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    .line 141
    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$100(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2b

    .line 142
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$100(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1$1;-><init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    :cond_2b
    return-void
.end method
