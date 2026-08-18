.class Lcom/bilibili/tv/ui/download/DownloadManager$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadManager;->notifyProgressUpdate(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

.field final synthetic val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadManager;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 637
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadManager$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/DownloadManager$2;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManager;->progressListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->access$600(Lcom/bilibili/tv/ui/download/DownloadManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;

    .line 641
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManager$2;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-interface {v0, v2}, Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;->onProgressUpdate(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_a

    .line 643
    :cond_1c
    return-void
.end method
