.class Lcom/bilibili/tv/ui/download/DownloadManager$4;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadManager;->notifyError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

.field final synthetic val$errorCode:I

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadManager;Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadManager$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/DownloadManager$4;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    iput p3, p0, Lcom/bilibili/tv/ui/download/DownloadManager$4;->val$errorCode:I

    iput-object p4, p0, Lcom/bilibili/tv/ui/download/DownloadManager$4;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 668
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManager;->progressListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->access$600(Lcom/bilibili/tv/ui/download/DownloadManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;

    .line 669
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManager$4;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    iget v3, p0, Lcom/bilibili/tv/ui/download/DownloadManager$4;->val$errorCode:I

    iget-object v4, p0, Lcom/bilibili/tv/ui/download/DownloadManager$4;->val$errorMessage:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;->onError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V

    goto :goto_a

    .line 671
    :cond_20
    return-void
.end method
