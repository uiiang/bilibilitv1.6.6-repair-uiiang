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
    .line 176
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    iput p2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 179
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    if-eqz p2, :cond_13

    .line 181
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$i:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->e(I)V

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 186
    :goto_12
    return-void

    .line 184
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_12
.end method
