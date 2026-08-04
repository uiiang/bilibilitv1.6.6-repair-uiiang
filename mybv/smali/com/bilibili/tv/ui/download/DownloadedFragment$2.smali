.class Lcom/bilibili/tv/ui/download/DownloadedFragment$2;
.super Ljava/lang/Object;
.source "DownloadedFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadedFragment;->handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

.field final synthetic val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadedFragment;->deleteLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->access$200(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 134
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManager;->deleteTask(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u5220\u9664"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 137
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadedFragment;->refreshList()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->access$300(Lcom/bilibili/tv/ui/download/DownloadedFragment;)V

    .line 138
    return-void
.end method
