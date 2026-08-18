.class Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$9;
.super Ljava/lang/Object;
.source "GroupedDownloadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->onProgressUpdate(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

.field final synthetic val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 587
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$9;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$9;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$9;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # getter for: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$1100(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 592
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$9;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # getter for: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$1100(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$9;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)Z

    .line 594
    :cond_13
    return-void
.end method
