.class Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1$1;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;

    iget v1, v1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$1;->val$fragmentIndex:I

    # invokes: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->setLeftSelected(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$000(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;I)V

    .line 146
    return-void
.end method
