.class public Lcom/bilibili/tv/ui/download/DownloadingFragment;
.super Landroid/support/v4/app/Fragment;
.source "DownloadingFragment.java"

# interfaces
.implements Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;


# instance fields
.field private adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

.field private emptyView:Landroid/widget/TextView;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/download/DownloadingFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->handleTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/download/DownloadingFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/download/DownloadingFragment;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->refreshList()V

    return-void
.end method

.method private handleTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    sget-object v0, Lcom/bilibili/tv/ui/download/DownloadingFragment$3;->$SwitchMap$com$bilibili$tv$ui$download$model$DownloadTask$Status:[I

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_86

    .line 142
    :goto_10
    return-void

    .line 117
    :pswitch_11
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u6682\u505c"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 123
    :pswitch_2e
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u6682\u505c"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 129
    :pswitch_4b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManager;->resumeTask(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u6062\u590d"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 135
    :pswitch_68
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManager;->retryTask(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u91cd\u8bd5"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 114
    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_11
        :pswitch_2e
        :pswitch_4b
        :pswitch_68
    .end packed-switch
.end method

.method private handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 3

    .prologue
    .line 149
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5220\u9664\u4e0b\u8f7d\u4efb\u52a1"

    .line 150
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u786e\u5b9a\u8981\u5220\u9664\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\u5417\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5220\u9664"

    new-instance v2, Lcom/bilibili/tv/ui/download/DownloadingFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/bilibili/tv/ui/download/DownloadingFragment$2;-><init>(Lcom/bilibili/tv/ui/download/DownloadingFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 162
    return-void
.end method

.method private refreshList()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getDownloadingTasks()Ljava/util/List;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->setTaskList(Ljava/util/List;)V

    .line 100
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 101
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->emptyView:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u4e0b\u8f7d\u4efb\u52a1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_2b
    return-void

    .line 105
    :cond_2c
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b
.end method

.method private setupRecyclerView()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 67
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V

    .line 69
    new-instance v0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    .line 70
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 73
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadingFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment$1;-><init>(Lcom/bilibili/tv/ui/download/DownloadingFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->setOnTaskClickListener(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->refreshList()V

    .line 88
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->addProgressListener(Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;)V

    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 43
    const v0, 0x7f0a00af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 45
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 46
    const v0, 0x7f080234

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->emptyView:Landroid/widget/TextView;

    .line 48
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->setupRecyclerView()V

    .line 50
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 38
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->removeProgressListener(Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;)V

    .line 39
    return-void
.end method

.method public onError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->refreshList()V

    .line 187
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 188
    return-void
.end method

.method public onProgressUpdate(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    if-eqz v0, :cond_9

    .line 170
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)Z

    .line 172
    :cond_9
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 56
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->refreshList()V

    .line 57
    return-void
.end method

.method public onStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 179
    :cond_c
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->refreshList()V

    .line 181
    :cond_f
    return-void
.end method
