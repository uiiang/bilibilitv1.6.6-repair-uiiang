.class Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$3;
.super Ljava/lang/Object;
.source "DownloadTaskAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->a(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

.field final synthetic val$position:I

.field final synthetic val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;Lcom/bilibili/tv/ui/download/model/DownloadTask;I)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$3;->this$0:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$3;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    iput p3, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$3;->this$0:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    # getter for: Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->access$000(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;)Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$3;->this$0:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    # getter for: Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->access$000(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;)Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$3;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    iget v2, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$3;->val$position:I

    invoke-interface {v0, v1, v2}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;->onTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;I)Z

    move-result v0

    .line 248
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
