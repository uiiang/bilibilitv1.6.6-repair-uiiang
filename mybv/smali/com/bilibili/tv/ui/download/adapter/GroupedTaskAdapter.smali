.class public Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "GroupedTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;,
        Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;,
        Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnTaskClickListener;,
        Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;,
        Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;,
        Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$v;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_GROUP:I = 0x0

.field private static final TYPE_TASK:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private focusPosition:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;

.field private final showCompleted:Z

.field private taskListener:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnTaskClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->items:Ljava/util/List;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->focusPosition:I

    .line 130
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->context:Landroid/content/Context;

    .line 131
    iput-boolean p2, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->showCompleted:Z

    .line 132
    return-void
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->focusPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnTaskClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->taskListener:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnTaskClickListener;

    return-object v0
.end method

.method private bindGroup(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V
    .locals 4

    .prologue
    .line 218
    if-nez p2, :cond_3

    .line 268
    :goto_2
    return-void

    .line 219
    :cond_3
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->titleText:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->title:Ljava/lang/String;

    if-eqz v0, :cond_9d

    iget-object v0, p2, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->title:Ljava/lang/String;

    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p2, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->coverUrl:Ljava/lang/String;

    if-eqz v0, :cond_a1

    iget-object v0, p2, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->coverUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 221
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

    iget-object v1, p2, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->coverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageURI(Ljava/lang/String;)V

    .line 225
    :goto_21
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->countText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5171"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a\u5206P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->showCompleted:Z

    if-eqz v0, :cond_ab

    .line 229
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->statusText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u5b8c\u6210 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getCompletedCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e2a\u5206P \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getDownloadedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->formatSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :goto_87
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->rootView:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;-><init>(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 260
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->rootView:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$2;-><init>(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 219
    :cond_9d
    const-string v0, ""

    goto/16 :goto_b

    .line 223
    :cond_a1
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageResource(I)V

    goto/16 :goto_21

    .line 233
    :cond_ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    const-string v1, "\u603b\u8fdb\u5ea6 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getAverageProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getDownloadingCount()I

    move-result v1

    if-lez v1, :cond_d6

    .line 236
    const-string v1, " \u00b7 \u4e0b\u8f7d\u4e2d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getDownloadingCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    :cond_d6
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getWaitingCount()I

    move-result v1

    if-lez v1, :cond_e9

    .line 239
    const-string v1, " \u00b7 \u7b49\u5f85 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getWaitingCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    :cond_e9
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getPausedCount()I

    move-result v1

    if-lez v1, :cond_fc

    .line 242
    const-string v1, " \u00b7 \u6682\u505c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getPausedCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    :cond_fc
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getFailedCount()I

    move-result v1

    if-lez v1, :cond_10f

    .line 245
    const-string v1, " \u00b7 \u5931\u8d25 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getFailedCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    :cond_10f
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_87
.end method

.method private bindTask(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;Lcom/bilibili/tv/ui/download/model/DownloadTask;I)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 271
    if-nez p2, :cond_6

    .line 374
    :goto_5
    return-void

    .line 274
    :cond_6
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_112

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v0

    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v0, v1, :cond_11d

    .line 278
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_116

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_116

    .line 280
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->subTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->subTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->subTitleText:Landroid/widget/TextView;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 298
    :goto_47
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->upNameText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UP\u4e3b: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getUpName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14c

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getUpName()Ljava/lang/String;

    move-result-object v0

    :goto_5e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_150

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_150

    .line 303
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->lastCoverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 304
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageURI(Ljava/lang/String;)V

    .line 305
    iput-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->lastCoverUrl:Ljava/lang/String;

    .line 315
    :cond_84
    :goto_84
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 316
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->progressText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    const-string v0, ""

    .line 320
    sget-object v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$5;->$SwitchMap$com$bilibili$tv$ui$download$model$DownloadTask$Status:[I

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1b6

    .line 337
    :goto_ba
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->statusText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v0

    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->DOWNLOADING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v0, v1, :cond_175

    .line 341
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->speedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getFormattedSpeed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 \u5269\u4f59"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getFormattedRemainingTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :goto_eb
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v0

    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v0, v1, :cond_18f

    .line 350
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->fileSizeText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getFormattedSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :goto_fc
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->rootView:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$3;-><init>(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 366
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->rootView:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$4;

    invoke-direct {v1, p0, p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$4;-><init>(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 274
    :cond_112
    const-string v0, ""

    goto/16 :goto_12

    .line 285
    :cond_116
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->subTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_47

    .line 288
    :cond_11d
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_145

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_145

    .line 289
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->subTitleText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->subTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->subTitleText:Landroid/widget/TextView;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_47

    .line 293
    :cond_145
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->subTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_47

    .line 298
    :cond_14c
    const-string v0, "\u672a\u77e5"

    goto/16 :goto_5e

    .line 308
    :cond_150
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->lastCoverUrl:Ljava/lang/String;

    if-eqz v0, :cond_84

    .line 309
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageResource(I)V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->lastCoverUrl:Ljava/lang/String;

    goto/16 :goto_84

    .line 322
    :pswitch_161
    const-string v0, "\u7b49\u5f85\u4e2d"

    goto/16 :goto_ba

    .line 325
    :pswitch_165
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    goto/16 :goto_ba

    .line 328
    :pswitch_169
    const-string v0, "\u5df2\u6682\u505c"

    goto/16 :goto_ba

    .line 331
    :pswitch_16d
    const-string v0, "\u5df2\u5b8c\u6210"

    goto/16 :goto_ba

    .line 334
    :pswitch_171
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    goto/16 :goto_ba

    .line 342
    :cond_175
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v0

    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v0, v1, :cond_186

    .line 343
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->speedText:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u5f00\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_eb

    .line 345
    :cond_186
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->speedText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_eb

    .line 352
    :cond_18f
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;->fileSizeText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getFormattedDownloadedSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getFormattedSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fc

    .line 320
    nop

    :pswitch_data_1b6
    .packed-switch 0x1
        :pswitch_161
        :pswitch_165
        :pswitch_169
        :pswitch_16d
        :pswitch_171
    .end packed-switch
.end method

.method private static formatSize(J)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 422
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_1c

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    :goto_1b
    return-object v0

    .line 424
    :cond_1c
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_36

    .line 425
    const-string v0, "%.1f KB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 426
    :cond_36
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_50

    .line 427
    const-string v0, "%.1f MB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p0

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 429
    :cond_50
    const-string v0, "%.2f GB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p0

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;

    .line 193
    iget-object v0, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    const/4 v0, 0x1

    if-ne p2, v0, :cond_17

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00b0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 200
    new-instance v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;-><init>(Landroid/view/View;)V

    .line 203
    :goto_16
    return-object v0

    .line 202
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 203
    new-instance v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;-><init>(Landroid/view/View;)V

    goto :goto_16
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;

    .line 209
    if-nez v0, :cond_b

    .line 215
    :cond_a
    :goto_a
    return-void

    .line 210
    :cond_b
    instance-of v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;

    if-eqz v1, :cond_17

    .line 211
    check-cast p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-direct {p0, p1, v0, p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->bindTask(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$TaskHolder;Lcom/bilibili/tv/ui/download/model/DownloadTask;I)V

    goto :goto_a

    .line 212
    :cond_17
    instance-of v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;

    if-eqz v1, :cond_a

    .line 213
    check-cast p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;->group:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->bindGroup(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V

    goto :goto_a
.end method

.method public getFocusPosition()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->focusPosition:I

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    if-eqz p1, :cond_8

    :goto_2
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->items:Ljava/util/List;

    .line 136
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->d()V

    .line 137
    return-void

    .line 135
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2
.end method

.method public setOnGroupClickListener(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;

    .line 171
    return-void
.end method

.method public setOnTaskClickListener(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnTaskClickListener;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->taskListener:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnTaskClickListener;

    .line 175
    return-void
.end method

.method public updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 145
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 166
    :cond_a
    :goto_a
    return v1

    :cond_b
    move v2, v1

    .line 146
    :goto_c
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 147
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->items:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;

    .line 148
    iget-object v3, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;->group:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    if-eqz v3, :cond_67

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;->group:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    iget-object v5, v5, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->bvid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    move v3, v1

    .line 150
    :goto_2f
    iget-object v1, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;->group:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    iget-object v1, v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_5e

    .line 151
    iget-object v1, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;->group:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    iget-object v1, v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 152
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_63

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 153
    iget-object v0, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;->group:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v0, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_5e
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->c(I)V

    move v1, v4

    .line 158
    goto :goto_a

    .line 150
    :cond_63
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2f

    .line 159
    :cond_67
    iget-object v3, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    if-eqz v3, :cond_8a

    iget-object v3, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8a

    iget-object v3, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 160
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 161
    iput-object p1, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;->task:Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 162
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->c(I)V

    move v1, v4

    .line 163
    goto :goto_a

    .line 146
    :cond_8a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_c
.end method
