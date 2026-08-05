.class public Lcom/bilibili/tv/ui/download/DownloadedFragment;
.super Landroid/support/v4/app/Fragment;
.source "DownloadedFragment.java"

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
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->handleTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->deleteLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/download/DownloadedFragment;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->refreshList()V

    return-void
.end method

.method private deleteLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 2

    .prologue
    .line 172
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 179
    :cond_12
    :goto_12
    return-void

    .line 176
    :catch_13
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private handleTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v0

    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v0, v1, :cond_b

    .line 115
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->playLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 117
    :cond_b
    return-void
.end method

.method private handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5220\u9664\u5df2\u4e0b\u8f7d\u89c6\u9891"

    .line 125
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u786e\u5b9a\u8981\u5220\u9664\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\u5417\uff1f\n\u6587\u4ef6\u5c06\u88ab\u5220\u9664\uff0c\u65e0\u6cd5\u6062\u590d\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5220\u9664"

    new-instance v2, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;-><init>(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 142
    return-void
.end method

.method private playLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 4

    .prologue
    .line 149
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 151
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    :goto_1d
    return-void

    .line 158
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    const-string v1, "bundle_ac_id"

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getAvid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 160
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 161
    const-string v1, "preload_cover"

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :cond_4b
    const-string v1, "download_auto_play"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1d
.end method

.method private refreshList()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getCompletedTasks()Ljava/util/List;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->setTaskList(Ljava/util/List;)V

    .line 99
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 100
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->emptyView:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u5df2\u4e0b\u8f7d\u89c6\u9891"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_2b
    return-void

    .line 104
    :cond_2c
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b
.end method

.method private setupRecyclerView()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 66
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 68
    new-instance v0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    .line 69
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 72
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadedFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment$1;-><init>(Lcom/bilibili/tv/ui/download/DownloadedFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->setOnTaskClickListener(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;)V

    .line 86
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->refreshList()V

    .line 87
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
    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->addProgressListener(Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;)V

    .line 34
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 45
    const v0, 0x7f0a00af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 47
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 48
    const v0, 0x7f080234

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->emptyView:Landroid/widget/TextView;

    .line 50
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->setupRecyclerView()V

    .line 52
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 40
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->removeProgressListener(Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;)V

    .line 41
    return-void
.end method

.method public onError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->refreshList()V

    .line 198
    return-void
.end method

.method public onProgressUpdate(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 58
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->refreshList()V

    .line 59
    return-void
.end method

.method public onStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->refreshList()V

    .line 192
    return-void
.end method
