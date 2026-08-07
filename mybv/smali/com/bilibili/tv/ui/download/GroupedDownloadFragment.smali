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
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->openGroupDetail(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showTaskMenu(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->deleteLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->refreshList()V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->restoreFocus()V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->playLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->playLocalFileWithChooser(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showRenameDialog(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->renameLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;Ljava/lang/String;)V

    return-void
.end method

.method private deleteLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 2

    .prologue
    .line 565
    :try_start_0
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_20

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 568
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->exists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 569
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->delete(Landroid/content/Context;Ljava/lang/String;)Z

    .line 580
    :cond_1f
    :goto_1f
    return-void

    .line 573
    :cond_20
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 575
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_1f

    .line 577
    :catch_33
    move-exception v0

    .line 578
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method private groupTasks(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    move-object v0, v3

    .line 228
    :goto_f
    return-object v0

    .line 167
    :cond_10
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 168
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 169
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 172
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 173
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_44

    move v0, v2

    :goto_3c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 176
    :cond_4b
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 177
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_59
    :goto_59
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 179
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 184
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 185
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTotalPageCount()I

    move-result v8

    if-gt v8, v2, :cond_89

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTotalPageCount()I

    move-result v8

    if-nez v8, :cond_c2

    if-eqz v1, :cond_c2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_c2

    :cond_89
    move v1, v2

    .line 186
    :goto_8a
    if-eqz v1, :cond_c4

    .line 187
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    .line 188
    if-nez v1, :cond_bc

    .line 189
    new-instance v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;-><init>()V

    .line 190
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->bvid:Ljava/lang/String;

    .line 191
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->title:Ljava/lang/String;

    .line 192
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCoverUrl()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->coverUrl:Ljava/lang/String;

    .line 193
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getUpName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->upName:Ljava/lang/String;

    .line 194
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_bc
    iget-object v1, v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 185
    :cond_c2
    const/4 v1, 0x0

    goto :goto_8a

    .line 199
    :cond_c4
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 202
    :cond_c8
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    .line 204
    iget-object v2, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    new-instance v4, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$4;

    invoke-direct {v4, p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$4;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 211
    new-instance v2, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;

    invoke-direct {v2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;-><init>()V

    .line 212
    iput-object v0, v2, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;->group:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    .line 213
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    .line 216
    :cond_f1
    new-instance v0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$5;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$5;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 223
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_114

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 224
    new-instance v2, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;

    invoke-direct {v2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;-><init>()V

    .line 225
    iput-object v0, v2, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 226
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_fd

    :cond_114
    move-object v0, v3

    .line 228
    goto/16 :goto_f
.end method

.method private handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 3

    .prologue
    .line 395
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5220\u9664\u5df2\u4e0b\u8f7d\u89c6\u9891"

    .line 396
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u786e\u5b9a\u8981\u5220\u9664\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 397
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

    new-instance v2, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$8;

    invoke-direct {v2, p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$8;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 398
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 407
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 409
    return-void
.end method

.method public static newInstance(Z)Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v2, "show_completed"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v0
.end method

.method private openGroupDetail(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V
    .locals 3

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/bilibili/tv/ui/download/TaskGroupDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    const-string v1, "group_bvid"

    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->bvid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v1, "group_title"

    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v1, "group_show_completed"

    iget-boolean v2, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showCompleted:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->startActivity(Landroid/content/Intent;)V

    .line 240
    return-void
.end method

.method private playLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 470
    const-string v0, "GroupedDownloadFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playLocalFile: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v0, "GroupedDownloadFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playLocalFile: downloadPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 475
    :cond_47
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u8def\u5f84\u4e3a\u7a7a"

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 551
    :goto_54
    return-void

    .line 480
    :cond_55
    :try_start_55
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 485
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->getFileSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 486
    const-string v4, "GroupedDownloadFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playLocalFile: SAF file size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    cmp-long v4, v2, v8

    if-gez v4, :cond_c5

    .line 488
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_96} :catch_97

    goto :goto_54

    .line 546
    :catch_97
    move-exception v0

    .line 547
    const-string v1, "GroupedDownloadFragment"

    const-string v2, "playLocalFile error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u64ad\u653e\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 549
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->playOnlineVideo(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_54

    .line 491
    :cond_c5
    cmp-long v2, v2, v8

    if-nez v2, :cond_d9

    .line 492
    :try_start_c9
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u5927\u5c0f\u4e3a0\uff0c\u53ef\u80fd\u4e0b\u8f7d\u672a\u5b8c\u6210"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_54

    .line 495
    :cond_d9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 496
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 536
    :goto_e1
    const-string v2, "video/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 539
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_246

    .line 540
    const-string v0, "GroupedDownloadFragment"

    const-string v2, "playLocalFile: starting player activity"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_54

    .line 498
    :cond_105
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    const-string v0, "GroupedDownloadFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playLocalFile: file path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v0, "GroupedDownloadFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playLocalFile: file exists="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v0, "GroupedDownloadFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playLocalFile: file length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string v0, "GroupedDownloadFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playLocalFile: file canRead="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_190

    .line 505
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_54

    .line 509
    :cond_190
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1a6

    .line 510
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u65e0\u6cd5\u8bfb\u53d6\uff0c\u8bf7\u68c0\u67e5\u6743\u9650"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_54

    .line 514
    :cond_1a6
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-nez v0, :cond_1be

    .line 515
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u5927\u5c0f\u4e3a0\uff0c\u53ef\u80fd\u4e0b\u8f7d\u672a\u5b8c\u6210"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_54

    .line 519
    :cond_1be
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_1c0} :catch_97

    const/16 v3, 0x18

    if-lt v0, v3, :cond_224

    .line 521
    :try_start_1c4
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 522
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 523
    const-string v2, "GroupedDownloadFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playLocalFile: FileProvider URI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_207} :catch_209

    goto/16 :goto_e1

    .line 524
    :catch_209
    move-exception v0

    .line 525
    :try_start_20a
    const-string v1, "GroupedDownloadFragment"

    const-string v2, "FileProvider error, fallback to online play"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u672c\u5730\u64ad\u653e\u5931\u8d25\uff0c\u5c1d\u8bd5\u5728\u7ebf\u64ad\u653e"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 527
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->playOnlineVideo(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto/16 :goto_54

    .line 531
    :cond_224
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 532
    const-string v2, "GroupedDownloadFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playLocalFile: direct file URI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e1

    .line 543
    :cond_246
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u672a\u627e\u5230\u89c6\u9891\u64ad\u653e\u5668\uff0c\u5c1d\u8bd5\u5728\u7ebf\u64ad\u653e"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 544
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->playOnlineVideo(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_257} :catch_97

    goto/16 :goto_54
.end method

.method private playLocalFileWithChooser(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 412
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 414
    :cond_f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u8def\u5f84\u4e3a\u7a7a"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 467
    :goto_1c
    return-void

    .line 419
    :cond_1d
    :try_start_1d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 424
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->exists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 425
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->getFileSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_7c

    .line 426
    :cond_42
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728\u6216\u5927\u5c0f\u4e3a0"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_50} :catch_51

    goto :goto_1c

    .line 463
    :catch_51
    move-exception v0

    .line 464
    const-string v1, "GroupedDownloadFragment"

    const-string v2, "playLocalFileWithChooser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u64ad\u653e\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1c

    .line 429
    :cond_7c
    :try_start_7c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 430
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 456
    :goto_84
    const-string v2, "video/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 459
    const-string v0, "\u9009\u62e9\u64ad\u653e\u5668"

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 460
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c

    .line 432
    :cond_9d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 434
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1c

    .line 438
    :cond_b8
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 439
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u65e0\u6cd5\u8bfb\u53d6\uff0c\u8bf7\u68c0\u67e5\u6743\u9650"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1c

    .line 443
    :cond_ce
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-nez v0, :cond_e6

    .line 444
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u5927\u5c0f\u4e3a0\uff0c\u53ef\u80fd\u4e0b\u8f7d\u672a\u5b8c\u6210"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1c

    .line 448
    :cond_e6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_115

    .line 449
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 450
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_84

    .line 452
    :cond_115
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_118} :catch_51

    move-result-object v0

    goto/16 :goto_84
.end method

.method private playOnlineVideo(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 4

    .prologue
    .line 554
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 555
    const-string v1, "bundle_ac_id"

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getAvid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 556
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 557
    const-string v1, "preload_cover"

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    :cond_2d
    const-string v1, "download_auto_play"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 560
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->startActivity(Landroid/content/Intent;)V

    .line 561
    return-void
.end method

.method private refreshList()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_8

    .line 152
    :goto_7
    return-void

    .line 142
    :cond_8
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showCompleted:Z

    if-eqz v0, :cond_40

    .line 143
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getCompletedTasks()Ljava/util/List;

    move-result-object v0

    .line 145
    :goto_18
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->groupTasks(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 146
    iget-object v3, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->setItems(Ljava/util/List;)V

    .line 148
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    .line 149
    iget-object v4, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->emptyText:Landroid/widget/TextView;

    if-eqz v3, :cond_4d

    move v0, v1

    :goto_2a
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v4, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->emptyText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showCompleted:Z

    if-eqz v0, :cond_4f

    const-string v0, "\u6682\u65e0\u5df2\u4e0b\u8f7d\u89c6\u9891"

    :goto_35
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_52

    :goto_3c
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_7

    .line 144
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

    .line 149
    goto :goto_2a

    .line 150
    :cond_4f
    const-string v0, "\u6682\u65e0\u4e0b\u8f7d\u4efb\u52a1"

    goto :goto_35

    :cond_52
    move v2, v1

    .line 151
    goto :goto_3c
.end method

.method private renameLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 333
    :try_start_1
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 334
    const-string v1, "GroupedDownloadFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renameLocalFile: oldFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-eqz v0, :cond_c0

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 338
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->exists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 339
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 392
    :goto_3f
    return-void

    .line 342
    :cond_40
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/bilibili/tv/ui/download/SafFileHelper;->rename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_b1

    .line 344
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDownloadPath(Ljava/lang/String;)V

    .line 345
    const-string v0, "GroupedDownloadFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renameLocalFile: SAF task.downloadPath updated to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/DownloadManager;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 347
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u91cd\u547d\u540d\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 348
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->refreshList()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_85} :catch_86

    goto :goto_3f

    .line 388
    :catch_86
    move-exception v0

    .line 389
    const-string v1, "GroupedDownloadFragment"

    const-string v2, "renameLocalFile error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u91cd\u547d\u540d\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3f

    .line 350
    :cond_b1
    :try_start_b1
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u91cd\u547d\u540d\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3f

    .line 355
    :cond_c0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_db

    .line 358
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3f

    .line 362
    :cond_db
    const/4 v2, 0x0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    const-string v2, "GroupedDownloadFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameLocalFile: newFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_130

    .line 369
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u540d\u5df2\u5b58\u5728"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3f

    .line 373
    :cond_130
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 374
    const-string v2, "GroupedDownloadFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameLocalFile: rename success="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-eqz v1, :cond_192

    .line 377
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDownloadPath(Ljava/lang/String;)V

    .line 378
    const-string v0, "GroupedDownloadFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renameLocalFile: task.downloadPath updated to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/DownloadManager;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 381
    const-string v0, "GroupedDownloadFragment"

    const-string v1, "renameLocalFile: database updated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u91cd\u547d\u540d\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 384
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->refreshList()V

    goto/16 :goto_3f

    .line 386
    :cond_192
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u91cd\u547d\u540d\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_1a0} :catch_86

    goto/16 :goto_3f
.end method

.method private restoreFocus()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    if-nez v0, :cond_9

    .line 132
    :cond_8
    :goto_8
    return-void

    .line 125
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->getFocusPosition()I

    move-result v0

    .line 126
    if-ltz v0, :cond_8

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->a()I

    move-result v1

    if-le v1, v0, :cond_8

    .line 127
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->c(I)Landroid/support/v7/widget/RecyclerView$v;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 129
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_8
.end method

.method private showRenameDialog(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 5

    .prologue
    const/16 v4, 0x2e

    const/4 v3, 0x0

    .line 285
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 287
    :cond_f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u8def\u5f84\u65e0\u6548"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 329
    :goto_1c
    return-void

    .line 292
    :cond_1d
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->getFileNameFromPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 294
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_35
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 296
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 298
    :cond_45
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 302
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u91cd\u547d\u540d\u6587\u4ef6"

    .line 303
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "\u8bf7\u8f93\u5165\u65b0\u7684\u6587\u4ef6\u540d\uff08\u4e0d\u542b\u6269\u5c55\u540d\uff09"

    .line 304
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 305
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$7;

    invoke-direct {v4, p0, v2, p1, v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$7;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Landroid/widget/EditText;Lcom/bilibili/tv/ui/download/model/DownloadTask;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1c

    .line 294
    :cond_83
    const-string v0, ""

    goto :goto_35
.end method

.method private showTaskMenu(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 4

    .prologue
    .line 245
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u672c\u5730\u64ad\u653e"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u9009\u62e9\u64ad\u653e\u5668"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6587\u4ef6\u91cd\u547d\u540d"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5220\u9664"

    aput-object v2, v0, v1

    .line 247
    const-string v1, "GroupedDownloadFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showTaskMenu: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v1, "GroupedDownloadFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showTaskMenu: title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v1, "GroupedDownloadFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showTaskMenu: downloadPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v1, "GroupedDownloadFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showTaskMenu: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$6;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 254
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 282
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 48
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_completed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showCompleted:Z

    .line 50
    :cond_16
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    const v0, 0x7f0a00af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 56
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 58
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v2, "right"

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 59
    const v0, 0x7f080234

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->emptyText:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 62
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V

    .line 64
    new-instance v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->showCompleted:Z

    invoke-direct {v0, v2, v3}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    .line 65
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    new-instance v2, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$1;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$1;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->setOnGroupClickListener(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    new-instance v2, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$2;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$2;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->setOnTaskClickListener(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnTaskClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 79
    return-object v1
.end method

.method public onError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 622
    :goto_6
    return-void

    .line 616
    :cond_7
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$11;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$11;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 137
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->removeProgressListener(Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;)V

    .line 138
    return-void
.end method

.method public onProgressUpdate(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 2

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 596
    :goto_6
    return-void

    .line 587
    :cond_7
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$9;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 89
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1d

    .line 91
    new-instance v1, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$3;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 117
    :goto_11
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->addProgressListener(Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;)V

    .line 118
    return-void

    .line 115
    :cond_1d
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->refreshList()V

    goto :goto_11
.end method

.method public onStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 2

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 611
    :goto_6
    return-void

    .line 601
    :cond_7
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$10;-><init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6
.end method
