.class Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;I)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    iput p2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 182
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    if-eqz p2, :cond_30

    .line 184
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$i:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->e(I)V

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 187
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->access$000(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    .line 188
    if-eqz v0, :cond_2f

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$100(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 189
    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$100(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$i:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->c(I)V

    .line 194
    :cond_2f
    :goto_2f
    return-void

    .line 192
    :cond_30
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2f
.end method
