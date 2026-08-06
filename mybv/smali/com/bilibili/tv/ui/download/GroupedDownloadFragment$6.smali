.class Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$6;
.super Ljava/lang/Object;
.source "GroupedDownloadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showTaskMenu(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
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
    .line 254
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$6;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$6;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$6;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$6;->val$task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManager;->getTask(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v0

    .line 259
    if-nez v0, :cond_27

    .line 260
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$6;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4efb\u52a1\u4e0d\u5b58\u5728"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 278
    :goto_26
    return-void

    .line 264
    :cond_27
    packed-switch p2, :pswitch_data_44

    goto :goto_26

    .line 266
    :pswitch_2b
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$6;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # invokes: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->playLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$500(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_26

    .line 269
    :pswitch_31
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$6;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # invokes: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->playLocalFileWithChooser(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$600(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_26

    .line 272
    :pswitch_37
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$6;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # invokes: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showRenameDialog(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$700(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_26

    .line 275
    :pswitch_3d
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$6;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    # invokes: Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->access$800(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_26

    .line 264
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_31
        :pswitch_37
        :pswitch_3d
    .end packed-switch
.end method
