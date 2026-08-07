.class public Lcom/bilibili/tv/ui/download/DownloadedFragment;
.super Landroid/support/v4/app/Fragment;
.source "DownloadedFragment.java"

# interfaces
.implements Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;


# static fields
.field public static final ARG_BVID:Ljava/lang/String; = "group_bvid"


# instance fields
.field private adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

.field private emptyView:Landroid/widget/TextView;

.field private filterBvid:Ljava/lang/String;

.field private focusPosition:I

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->focusPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/download/DownloadedFragment;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->focusPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/download/DownloadedFragment;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->focusPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/download/DownloadedFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->handleTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->playLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->playLocalFileWithChooser(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->showRenameDialog(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->renameLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->deleteLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/download/DownloadedFragment;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->refreshList()V

    return-void
.end method

.method private deleteLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 2

    .prologue
    .line 562
    :try_start_0
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_20

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 565
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->exists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 566
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->delete(Landroid/content/Context;Ljava/lang/String;)Z

    .line 577
    :cond_1f
    :goto_1f
    return-void

    .line 570
    :cond_20
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 572
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_1f

    .line 574
    :catch_33
    move-exception v0

    .line 575
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method private handleTaskClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v0

    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v0, v1, :cond_b

    .line 170
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->showTaskMenu(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 172
    :cond_b
    return-void
.end method

.method private handleTaskLongClick(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 3

    .prologue
    .line 354
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5220\u9664\u5df2\u4e0b\u8f7d\u89c6\u9891"

    .line 355
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u786e\u5b9a\u8981\u5220\u9664\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 356
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

    new-instance v2, Lcom/bilibili/tv/ui/download/DownloadedFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment$6;-><init>(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 357
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 372
    return-void
.end method

.method private playLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 449
    const-string v0, "DownloadedFragment"

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

    .line 450
    const-string v0, "DownloadedFragment"

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

    .line 453
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 455
    :cond_47
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u8def\u5f84\u4e3a\u7a7a"

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 542
    :goto_54
    return-void

    .line 461
    :cond_55
    :try_start_55
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 466
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->getFileSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 467
    const-string v4, "DownloadedFragment"

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

    .line 468
    cmp-long v4, v2, v8

    if-gez v4, :cond_c5

    .line 469
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_96} :catch_97

    goto :goto_54

    .line 536
    :catch_97
    move-exception v0

    .line 537
    const-string v1, "DownloadedFragment"

    const-string v2, "playLocalFile error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

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

    .line 540
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->playOnlineVideo(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_54

    .line 472
    :cond_c5
    cmp-long v2, v2, v8

    if-nez v2, :cond_d9

    .line 473
    :try_start_c9
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u5927\u5c0f\u4e3a0\uff0c\u53ef\u80fd\u4e0b\u8f7d\u672a\u5b8c\u6210"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_54

    .line 476
    :cond_d9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 477
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 524
    :goto_e1
    const-string v2, "video/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 528
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_246

    .line 529
    const-string v0, "DownloadedFragment"

    const-string v2, "playLocalFile: starting player activity"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_54

    .line 480
    :cond_105
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    const-string v0, "DownloadedFragment"

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

    .line 482
    const-string v0, "DownloadedFragment"

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

    .line 483
    const-string v0, "DownloadedFragment"

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

    .line 484
    const-string v0, "DownloadedFragment"

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

    .line 486
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_190

    .line 487
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_54

    .line 492
    :cond_190
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1a6

    .line 493
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u65e0\u6cd5\u8bfb\u53d6\uff0c\u8bf7\u68c0\u67e5\u6743\u9650"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_54

    .line 498
    :cond_1a6
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-nez v0, :cond_1be

    .line 499
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u5927\u5c0f\u4e3a0\uff0c\u53ef\u80fd\u4e0b\u8f7d\u672a\u5b8c\u6210"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_54

    .line 504
    :cond_1be
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_1c0} :catch_97

    const/16 v3, 0x18

    if-lt v0, v3, :cond_224

    .line 507
    :try_start_1c4
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

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

    .line 508
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 509
    const-string v2, "DownloadedFragment"

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

    .line 510
    :catch_209
    move-exception v0

    .line 512
    :try_start_20a
    const-string v1, "DownloadedFragment"

    const-string v2, "FileProvider error, fallback to online play"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u672c\u5730\u64ad\u653e\u5931\u8d25\uff0c\u5c1d\u8bd5\u5728\u7ebf\u64ad\u653e"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 514
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->playOnlineVideo(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto/16 :goto_54

    .line 519
    :cond_224
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 520
    const-string v2, "DownloadedFragment"

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

    .line 533
    :cond_246
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u672a\u627e\u5230\u89c6\u9891\u64ad\u653e\u5668\uff0c\u5c1d\u8bd5\u5728\u7ebf\u64ad\u653e"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 534
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->playOnlineVideo(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_257} :catch_97

    goto/16 :goto_54
.end method

.method private playLocalFileWithChooser(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 380
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 382
    :cond_f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u8def\u5f84\u4e3a\u7a7a"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 441
    :goto_1c
    return-void

    .line 388
    :cond_1d
    :try_start_1d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 393
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->exists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 394
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->getFileSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_7c

    .line 395
    :cond_42
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728\u6216\u5927\u5c0f\u4e3a0"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_50} :catch_51

    goto :goto_1c

    .line 437
    :catch_51
    move-exception v0

    .line 438
    const-string v1, "DownloadedFragment"

    const-string v2, "playLocalFileWithChooser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

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

    .line 398
    :cond_7c
    :try_start_7c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 399
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 429
    :goto_84
    const-string v2, "video/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 433
    const-string v0, "\u9009\u62e9\u64ad\u653e\u5668"

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 434
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 436
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c

    .line 402
    :cond_9d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 404
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1c

    .line 409
    :cond_b8
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 410
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u65e0\u6cd5\u8bfb\u53d6\uff0c\u8bf7\u68c0\u67e5\u6743\u9650"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1c

    .line 415
    :cond_ce
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-nez v0, :cond_e6

    .line 416
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u5927\u5c0f\u4e3a0\uff0c\u53ef\u80fd\u4e0b\u8f7d\u672a\u5b8c\u6210"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1c

    .line 421
    :cond_e6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_115

    .line 422
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

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

    .line 423
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_84

    .line 425
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
    .line 548
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    const-string v1, "bundle_ac_id"

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getAvid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 550
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 551
    const-string v1, "preload_cover"

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    :cond_2d
    const-string v1, "download_auto_play"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->startActivity(Landroid/content/Intent;)V

    .line 555
    return-void
.end method

.method private refreshList()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getCompletedTasks()Ljava/util/List;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->filterBvid:Ljava/lang/String;

    if-eqz v1, :cond_e5

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->filterBvid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e5

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
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

    .line 127
    iget-object v3, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->filterBvid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 128
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 132
    :cond_40
    new-instance v0, Lcom/bilibili/tv/ui/download/DownloadedFragment$3;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment$3;-><init>(Lcom/bilibili/tv/ui/download/DownloadedFragment;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    :goto_48
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4c
    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 144
    const-string v3, "DownloadedFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshList: taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", title="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 145
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", downloadPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 147
    :cond_a0
    const-string v3, "DownloadedFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshList: \u53d1\u73b0\u8def\u5f84\u4e3a\u7a7a\u7684\u4efb\u52a1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 151
    :cond_bd
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->setTaskList(Ljava/util/List;)V

    .line 154
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 155
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->emptyView:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u5df2\u4e0b\u8f7d\u89c6\u9891"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_d9
    return-void

    .line 159
    :cond_da
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d9

    :cond_e5
    move-object v1, v0

    goto/16 :goto_48
.end method

.method private renameLocalFile(Lcom/bilibili/tv/ui/download/model/DownloadTask;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 280
    :try_start_1
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 281
    const-string v1, "DownloadedFragment"

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

    .line 283
    if-eqz v0, :cond_c0

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 285
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->exists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 286
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 347
    :goto_3f
    return-void

    .line 289
    :cond_40
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/bilibili/tv/ui/download/SafFileHelper;->rename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_b1

    .line 292
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDownloadPath(Ljava/lang/String;)V

    .line 293
    const-string v0, "DownloadedFragment"

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

    .line 295
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/DownloadManager;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 296
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u91cd\u547d\u540d\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->refreshList()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_85} :catch_86

    goto :goto_3f

    .line 343
    :catch_86
    move-exception v0

    .line 344
    const-string v1, "DownloadedFragment"

    const-string v2, "renameLocalFile error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

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

    .line 299
    :cond_b1
    :try_start_b1
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u91cd\u547d\u540d\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3f

    .line 304
    :cond_c0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_db

    .line 307
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3f

    .line 312
    :cond_db
    const/4 v2, 0x0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 313
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

    .line 314
    const-string v2, "DownloadedFragment"

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

    .line 316
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_130

    .line 320
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u540d\u5df2\u5b58\u5728"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3f

    .line 325
    :cond_130
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 326
    const-string v2, "DownloadedFragment"

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

    .line 328
    if-eqz v1, :cond_192

    .line 330
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDownloadPath(Ljava/lang/String;)V

    .line 331
    const-string v0, "DownloadedFragment"

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

    .line 333
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/DownloadManager;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 334
    const-string v0, "DownloadedFragment"

    const-string v1, "renameLocalFile: database updated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u91cd\u547d\u540d\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 339
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->refreshList()V

    goto/16 :goto_3f

    .line 341
    :cond_192
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

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

.method private setupRecyclerView()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 89
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 91
    new-instance v0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    .line 93
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->filterBvid:Ljava/lang/String;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->filterBvid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    :goto_24
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->setShowPageIndex(Z)V

    .line 94
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 97
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment$2;-><init>(Lcom/bilibili/tv/ui/download/DownloadedFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->setOnTaskClickListener(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;)V

    .line 113
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->refreshList()V

    .line 114
    return-void

    .line 93
    :cond_3c
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private showRenameDialog(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 5

    .prologue
    const/16 v4, 0x2e

    const/4 v3, 0x0

    .line 226
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 228
    :cond_f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u8def\u5f84\u65e0\u6548"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    :goto_1c
    return-void

    .line 233
    :cond_1d
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/download/SafFileHelper;->getFileNameFromPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 235
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_35
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 237
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 240
    :cond_45
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 244
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u91cd\u547d\u540d\u6587\u4ef6"

    .line 245
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "\u8bf7\u8f93\u5165\u65b0\u7684\u6587\u4ef6\u540d\uff08\u4e0d\u542b\u6269\u5c55\u540d\uff09"

    .line 246
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 247
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/bilibili/tv/ui/download/DownloadedFragment$5;

    invoke-direct {v4, p0, v2, p1, v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment$5;-><init>(Lcom/bilibili/tv/ui/download/DownloadedFragment;Landroid/widget/EditText;Lcom/bilibili/tv/ui/download/model/DownloadTask;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1c

    .line 235
    :cond_83
    const-string v0, ""

    goto :goto_35
.end method

.method private showTaskMenu(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 4

    .prologue
    .line 178
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

    .line 180
    const-string v1, "DownloadedFragment"

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

    .line 181
    const-string v1, "DownloadedFragment"

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

    .line 182
    const-string v1, "DownloadedFragment"

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

    .line 183
    const-string v1, "DownloadedFragment"

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

    .line 185
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/bilibili/tv/ui/download/DownloadedFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/bilibili/tv/ui/download/DownloadedFragment$4;-><init>(Lcom/bilibili/tv/ui/download/DownloadedFragment;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 187
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 219
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 40
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "group_bvid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->filterBvid:Ljava/lang/String;

    .line 43
    :cond_15
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->addProgressListener(Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;)V

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 55
    const v0, 0x7f0a00af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 57
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 58
    const v0, 0x7f080234

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->emptyView:Landroid/widget/TextView;

    .line 60
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->setupRecyclerView()V

    .line 62
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 50
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->removeProgressListener(Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;)V

    .line 51
    return-void
.end method

.method public onError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->refreshList()V

    .line 596
    return-void
.end method

.method public onProgressUpdate(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 584
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 68
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->refreshList()V

    .line 71
    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->focusPosition:I

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->adapter:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->a()I

    move-result v0

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->focusPosition:I

    if-le v0, v1, :cond_1e

    .line 72
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadedFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadedFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment$1;-><init>(Lcom/bilibili/tv/ui/download/DownloadedFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 82
    :cond_1e
    return-void
.end method

.method public onStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;->refreshList()V

    .line 590
    return-void
.end method
