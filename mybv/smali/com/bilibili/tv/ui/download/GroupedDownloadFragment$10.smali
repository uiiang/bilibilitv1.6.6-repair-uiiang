.class Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$10;
.super Ljava/lang/Object;
.source "GroupedDownloadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->onStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
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

    .prologue
    .line 601
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$10;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$10;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$10;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # getter for: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$1100(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$10;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # getter for: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$1100(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$10;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 607
    :cond_16
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$10;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # invokes: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->refreshList()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$200(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    .line 609
    :cond_1b
    return-void
.end method
