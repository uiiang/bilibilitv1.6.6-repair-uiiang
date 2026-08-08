.class Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1$1;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;

.field final synthetic val$itemIndex:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;I)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1$1;->this$1:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;

    iput p2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1$1;->val$itemIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1$1;->this$1:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->access$500(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    .line 555
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1c

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$400(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 565
    :cond_1c
    :goto_1c
    return-void

    .line 558
    :cond_1d
    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$300(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)I

    move-result v1

    iget v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1$1;->val$itemIndex:I

    if-eq v1, v2, :cond_1c

    .line 561
    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$400(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1$1;->val$itemIndex:I

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->c(I)V

    .line 562
    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1$1;->val$itemIndex:I

    # setter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$302(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;I)I

    .line 564
    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1$1;->val$itemIndex:I

    # invokes: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->setLeftSelected(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$000(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;I)V

    goto :goto_1c
.end method
