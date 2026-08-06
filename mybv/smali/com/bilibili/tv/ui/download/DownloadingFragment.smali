.class public Lcom/bilibili/tv/ui/download/DownloadingFragment;
.super Landroid/support/v4/app/Fragment;
.source "DownloadingFragment.java"

# interfaces
.implements Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;


# static fields
.field public static final ARG_BVID:Ljava/lang/String; = "group_bvid"


# instance fields
.field private adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

.field private emptyView:Landroid/widget/TextView;

.field private filterBvid:Ljava/lang/String;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/download/DownloadingFragment;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->refreshList()V

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/download/DownloadingFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/download/DownloadingFragment;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->restoreFocus()V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/download/DownloadingFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->handleTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/download/DownloadingFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method private handleTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    sget-object v0, Lcom/bilibili/tv/ui/download/DownloadingFragment$5;->$SwitchMap$com$bilibili$tv$ui$download$model$DownloadTask$Status:[I

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_86

    .line 219
    :goto_10
    return-void

    .line 194
    :pswitch_11
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u6682\u505c"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 200
    :pswitch_2e
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u6682\u505c"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 206
    :pswitch_4b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManager;->resumeTask(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u6062\u590d"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 212
    :pswitch_68
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManager;->retryTask(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u91cd\u8bd5"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 191
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
    .line 226
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5220\u9664\u4e0b\u8f7d\u4efb\u52a1"

    .line 227
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u786e\u5b9a\u8981\u5220\u9664\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
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

    new-instance v2, Lcom/bilibili/tv/ui/download/DownloadingFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/bilibili/tv/ui/download/DownloadingFragment$4;-><init>(Lcom/bilibili/tv/ui/download/DownloadingFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 239
    return-void
.end method

.method private refreshList()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getDownloadingTasks()Ljava/util/List;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->filterBvid:Ljava/lang/String;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->filterBvid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 159
    iget-object v3, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->filterBvid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 160
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 164
    :cond_40
    new-instance v0, Lcom/bilibili/tv/ui/download/DownloadingFragment$3;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment$3;-><init>(Lcom/bilibili/tv/ui/download/DownloadingFragment;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    .line 174
    :cond_49
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->setTaskList(Ljava/util/List;)V

    .line 177
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 178
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->emptyView:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u4e0b\u8f7d\u4efb\u52a1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_65
    return-void

    .line 182
    :cond_66
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_65
.end method

.method private restoreFocus()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    if-nez v0, :cond_9

    .line 113
    :cond_8
    :goto_8
    return-void

    .line 106
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->getFocusPosition()I

    move-result v0

    .line 107
    if-ltz v0, :cond_8

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->a()I

    move-result v1

    if-le v1, v0, :cond_8

    .line 108
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->c(I)Landroid/support/v7/widget/RecyclerView$v;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 110
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_8
.end method

.method private setupRecyclerView()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 120
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 123
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V

    .line 125
    new-instance v0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    .line 127
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->filterBvid:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->filterBvid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    :goto_2a
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->setShowPageIndex(Z)V

    .line 128
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 131
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadingFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment$2;-><init>(Lcom/bilibili/tv/ui/download/DownloadingFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->setOnTaskClickListener(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;)V

    .line 145
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->refreshList()V

    .line 146
    return-void

    .line 127
    :cond_42
    const/4 v0, 0x0

    goto :goto_2a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 37
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "group_bvid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->filterBvid:Ljava/lang/String;

    .line 40
    :cond_15
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->addProgressListener(Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;)V

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 52
    const v0, 0x7f0a00af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 54
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 56
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v2, "right"

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 57
    const v0, 0x7f080234

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->emptyView:Landroid/widget/TextView;

    .line 59
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->setupRecyclerView()V

    .line 61
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 47
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->removeProgressListener(Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;)V

    .line 48
    return-void
.end method

.method public onError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->refreshList()V

    .line 264
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

    .line 265
    return-void
.end method

.method public onProgressUpdate(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    if-eqz v0, :cond_9

    .line 247
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)Z

    .line 249
    :cond_9
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 71
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_12

    .line 73
    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadingFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment$1;-><init>(Lcom/bilibili/tv/ui/download/DownloadingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 99
    :goto_11
    return-void

    .line 97
    :cond_12
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->refreshList()V

    goto :goto_11
.end method

.method public onStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 256
    :cond_c
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadingFragment;->refreshList()V

    .line 258
    :cond_f
    return-void
.end method
