.class Lcom/bilibili/tv/ui/download/DownloadedFragment$4;
.super Ljava/lang/Object;
.source "DownloadedFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadedFragment;->showTaskMenu(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 187
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$4;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$4;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManager;->getTask(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v0

    .line 192
    if-nez v0, :cond_27

    .line 193
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4efb\u52a1\u4e0d\u5b58\u5728"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 215
    :goto_26
    return-void

    .line 197
    :cond_27
    const-string v1, "DownloadedFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showTaskMenu: onClick which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v1, "DownloadedFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showTaskMenu: onClick latestTask.downloadPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    packed-switch p2, :pswitch_data_94

    goto :goto_26

    .line 202
    :pswitch_5f
    const-string v1, "DownloadedFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showTaskMenu: onClick \u672c\u5730\u64ad\u653e, downloadPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadedFragment;->playLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->access$400(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_26

    .line 206
    :pswitch_81
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadedFragment;->playLocalFileWithChooser(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->access$500(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_26

    .line 209
    :pswitch_87
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadedFragment;->showRenameDialog(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->access$600(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_26

    .line 212
    :pswitch_8d
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment$4;->this$0:Lcom/bilibili/tv/ui/download/DownloadedFragment;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadedFragment;->handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->access$300(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_26

    .line 200
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_81
        :pswitch_87
        :pswitch_8d
    .end packed-switch
.end method
