.class public Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "DownloadTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;,
        Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;

.field private taskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;)Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00b0

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->a(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;I)V

    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;I)V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 104
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->upNameText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UP\u4e3b: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getUpName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getUpName()Ljava/lang/String;

    move-result-object v1

    :goto_28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->coverImage:Landroid/widget/ImageView;

    const v2, 0x7f070059

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 114
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->progressText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->fileSizeText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getFormattedDownloadedSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getFormattedSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->DOWNLOADING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v1, v2, :cond_c4

    .line 121
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->speedText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getFormattedSpeed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_95
    const-string v1, ""

    .line 129
    sget-object v2, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$3;->$SwitchMap$com$bilibili$tv$ui$download$model$DownloadTask$Status:[I

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_e6

    .line 155
    :goto_a6
    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->statusText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->rootView:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$1;-><init>(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;Lcom/bilibili/tv/ui/download/model/DownloadTask;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->rootView:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$2;-><init>(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;Lcom/bilibili/tv/ui/download/model/DownloadTask;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 176
    return-void

    .line 107
    :cond_c0
    const-string v1, "\u672a\u77e5"

    goto/16 :goto_28

    .line 123
    :cond_c4
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->speedText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_95

    .line 131
    :pswitch_cc
    const-string v1, "\u7b49\u5f85\u4e2d"

    goto :goto_a6

    .line 135
    :pswitch_cf
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getFormattedRemainingTime()Ljava/lang/String;

    move-result-object v1

    goto :goto_a6

    .line 139
    :pswitch_d4
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->isManualPause()Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 140
    const-string v1, "\u5df2\u6682\u505c"

    goto :goto_a6

    .line 142
    :cond_dd
    const-string v1, "\u6682\u505c\u4e2d"

    goto :goto_a6

    .line 147
    :pswitch_e0
    const-string v1, "\u5df2\u5b8c\u6210"

    goto :goto_a6

    .line 151
    :pswitch_e3
    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    goto :goto_a6

    .line 129
    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_cf
        :pswitch_d4
        :pswitch_e0
        :pswitch_e3
    .end packed-switch
.end method

.method public getTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    return-object v0
.end method

.method public setOnTaskClickListener(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;

    .line 89
    return-void
.end method

.method public setTaskList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    if-eqz p1, :cond_c

    .line 64
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_c
    return-void
.end method

.method public updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 75
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 76
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_25
    return-void

    .line 74
    :cond_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
