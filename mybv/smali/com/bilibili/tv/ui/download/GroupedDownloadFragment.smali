.class public Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;
.super Landroid/support/v4/app/Fragment;
.source "GroupedDownloadFragment.java"

# interfaces
.implements Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;


# static fields
.field private static final ARG_SHOW_COMPLETED:Ljava/lang/String; = "show_completed"


# instance fields
.field private adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

.field private emptyText:Landroid/widget/TextView;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private showCompleted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->openGroupDetail(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->refreshList()V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    return-object v0
.end method

.method private groupTasks(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move-object v0, v2

    .line 150
    :goto_e
    return-object v0

    .line 123
    :cond_f
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 125
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 128
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    .line 129
    if-nez v1, :cond_5a

    .line 130
    new-instance v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;-><init>()V

    .line 131
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->bvid:Ljava/lang/String;

    .line 132
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->title:Ljava/lang/String;

    .line 133
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCoverUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->coverUrl:Ljava/lang/String;

    .line 134
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getUpName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->upName:Ljava/lang/String;

    .line 135
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_5a
    iget-object v1, v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 139
    :cond_60
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    .line 141
    iget-object v3, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    new-instance v4, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;

    invoke-direct {v4, p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 148
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_82
    move-object v0, v2

    .line 150
    goto :goto_e
.end method

.method public static newInstance(Z)Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string v2, "show_completed"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v0
.end method

.method private openGroupDetail(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/bilibili/tv/ui/download/TaskGroupDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    const-string v1, "group_bvid"

    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->bvid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "group_title"

    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v1, "group_show_completed"

    iget-boolean v2, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showCompleted:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method private refreshList()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_8

    .line 113
    :goto_7
    return-void

    .line 103
    :cond_8
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showCompleted:Z

    if-eqz v0, :cond_40

    .line 104
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getCompletedTasks()Ljava/util/List;

    move-result-object v0

    .line 106
    :goto_18
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->groupTasks(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 107
    iget-object v3, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->setGroups(Ljava/util/List;)V

    .line 109
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    .line 110
    iget-object v4, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->emptyText:Landroid/widget/TextView;

    if-eqz v3, :cond_4d

    move v0, v1

    :goto_2a
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v4, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->emptyText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showCompleted:Z

    if-eqz v0, :cond_4f

    const-string v0, "\u6682\u65e0\u5df2\u4e0b\u8f7d\u89c6\u9891"

    :goto_35
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_52

    :goto_3c
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_7

    .line 105
    :cond_40
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getDownloadingTasks()Ljava/util/List;

    move-result-object v0

    goto :goto_18

    :cond_4d
    move v0, v2

    .line 110
    goto :goto_2a

    .line 111
    :cond_4f
    const-string v0, "\u6682\u65e0\u4e0b\u8f7d\u4efb\u52a1"

    goto :goto_35

    :cond_52
    move v2, v1

    .line 112
    goto :goto_3c
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 47
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_completed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showCompleted:Z

    .line 49
    :cond_16
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 54
    const v0, 0x7f0a00af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 56
    const v0, 0x7f080234

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->emptyText:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 59
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V

    .line 61
    new-instance v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showCompleted:Z

    invoke-direct {v0, v2, v3}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    .line 62
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    new-instance v2, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$1;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$1;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->setOnGroupClickListener(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 69
    return-object v1
.end method

.method public onError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 204
    :goto_6
    return-void

    .line 198
    :cond_7
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$6;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 98
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->removeProgressListener(Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;)V

    .line 99
    return-void
.end method

.method public onProgressUpdate(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 178
    :goto_6
    return-void

    .line 169
    :cond_7
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$4;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 79
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1d

    .line 81
    new-instance v1, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$2;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 92
    :goto_11
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->addProgressListener(Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;)V

    .line 93
    return-void

    .line 90
    :cond_1d
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->refreshList()V

    goto :goto_11
.end method

.method public onStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 193
    :goto_6
    return-void

    .line 183
    :cond_7
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$5;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6
.end method
