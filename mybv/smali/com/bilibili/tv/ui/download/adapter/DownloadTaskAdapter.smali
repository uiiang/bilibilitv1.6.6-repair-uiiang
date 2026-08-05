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
    .line 18
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;)Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00b0

    const/4 v2, 0x0

    .line 98
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->a(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;I)V

    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;I)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 108
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v1, v2, :cond_117

    .line 113
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_110

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_110

    .line 116
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->subTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->subTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->subTitleText:Landroid/widget/TextView;

    const v2, 0x800005

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    :goto_46
    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->upNameText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UP\u4e3b: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getUpName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_146

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getUpName()Ljava/lang/String;

    move-result-object v1

    :goto_5d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_14a

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14a

    .line 142
    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->lastCoverUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 143
    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageURI(Ljava/lang/String;)V

    .line 144
    iput-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->lastCoverUrl:Ljava/lang/String;

    .line 154
    :cond_83
    :goto_83
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 155
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

    .line 158
    const-string v1, ""

    .line 160
    sget-object v2, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$3;->$SwitchMap$com$bilibili$tv$ui$download$model$DownloadTask$Status:[I

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1b0

    .line 182
    :goto_b9
    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->statusText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->DOWNLOADING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v1, v2, :cond_16f

    .line 186
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->speedText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getFormattedSpeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b7 \u5269\u4f59"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getFormattedRemainingTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :goto_ea
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v1, v2, :cond_189

    .line 195
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->fileSizeText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getFormattedSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :goto_fb
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->rootView:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$1;-><init>(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;Lcom/bilibili/tv/ui/download/model/DownloadTask;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->rootView:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$2;-><init>(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;Lcom/bilibili/tv/ui/download/model/DownloadTask;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 219
    return-void

    .line 122
    :cond_110
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->subTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_46

    .line 126
    :cond_117
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13f

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13f

    .line 127
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->subTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->subTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->subTitleText:Landroid/widget/TextView;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_46

    .line 132
    :cond_13f
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->subTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_46

    .line 137
    :cond_146
    const-string v1, "\u672a\u77e5"

    goto/16 :goto_5d

    .line 147
    :cond_14a
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->lastCoverUrl:Ljava/lang/String;

    if-eqz v1, :cond_83

    .line 148
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

    const v2, 0x7f070059

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageResource(I)V

    .line 149
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->lastCoverUrl:Ljava/lang/String;

    goto/16 :goto_83

    .line 162
    :pswitch_15b
    const-string v1, "\u7b49\u5f85\u4e2d"

    goto/16 :goto_b9

    .line 166
    :pswitch_15f
    const-string v1, "\u4e0b\u8f7d\u4e2d"

    goto/16 :goto_b9

    .line 170
    :pswitch_163
    const-string v1, "\u5df2\u6682\u505c"

    goto/16 :goto_b9

    .line 174
    :pswitch_167
    const-string v1, "\u5df2\u5b8c\u6210"

    goto/16 :goto_b9

    .line 178
    :pswitch_16b
    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    goto/16 :goto_b9

    .line 187
    :cond_16f
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v1, v2, :cond_180

    .line 188
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->speedText:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85\u5f00\u59cb"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ea

    .line 190
    :cond_180
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->speedText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ea

    .line 197
    :cond_189
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$ViewHolder;->fileSizeText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getFormattedDownloadedSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getFormattedSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fb

    .line 160
    nop

    :pswitch_data_1b0
    .packed-switch 0x1
        :pswitch_15b
        :pswitch_15f
        :pswitch_163
        :pswitch_167
        :pswitch_16b
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
    .line 230
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    return-object v0
.end method

.method public setOnTaskClickListener(Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter$OnTaskClickListener;

    .line 93
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
    .line 66
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    if-eqz p1, :cond_c

    .line 68
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    :cond_c
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->d()V

    .line 71
    return-void
.end method

.method public updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 78
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 79
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 80
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->taskList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/download/adapter/DownloadTaskAdapter;->c(I)V

    .line 82
    const/4 v2, 0x1

    .line 85
    :cond_29
    return v2

    .line 78
    :cond_2a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
